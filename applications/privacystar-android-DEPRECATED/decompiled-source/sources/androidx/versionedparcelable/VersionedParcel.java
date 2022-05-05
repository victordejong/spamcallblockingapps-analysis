package androidx.versionedparcelable;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.NetworkOnMainThreadException;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.p001v4.util.ArraySet;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseBooleanArray;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel.class */
public abstract class VersionedParcel {
    private static final int EX_BAD_PARCELABLE = -2;
    private static final int EX_ILLEGAL_ARGUMENT = -3;
    private static final int EX_ILLEGAL_STATE = -5;
    private static final int EX_NETWORK_MAIN_THREAD = -6;
    private static final int EX_NULL_POINTER = -4;
    private static final int EX_PARCELABLE = -9;
    private static final int EX_SECURITY = -1;
    private static final int EX_UNSUPPORTED_OPERATION = -7;
    private static final String TAG = "VersionedParcel";
    private static final int TYPE_BINDER = 5;
    private static final int TYPE_PARCELABLE = 2;
    private static final int TYPE_SERIALIZABLE = 3;
    private static final int TYPE_STRING = 4;
    private static final int TYPE_VERSIONED_PARCELABLE = 1;

    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$ParcelException.class */
    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }

    private Exception createException(int i, String str) {
        switch (i) {
            case EX_PARCELABLE /* -9 */:
                return (Exception) readParcelable();
            case -8:
            default:
                return new RuntimeException("Unknown exception code: " + i + " msg " + str);
            case EX_UNSUPPORTED_OPERATION /* -7 */:
                return new UnsupportedOperationException(str);
            case EX_NETWORK_MAIN_THREAD /* -6 */:
                return new NetworkOnMainThreadException();
            case EX_ILLEGAL_STATE /* -5 */:
                return new IllegalStateException(str);
            case -4:
                return new NullPointerException(str);
            case -3:
                return new IllegalArgumentException(str);
            case -2:
                return new BadParcelableException(str);
            case -1:
                return new SecurityException(str);
        }
    }

    private static <T extends VersionedParcelable> Class findParcelClass(T t) throws ClassNotFoundException {
        return findParcelClass((Class<? extends VersionedParcelable>) t.getClass());
    }

    private static Class findParcelClass(Class<? extends VersionedParcelable> cls) throws ClassNotFoundException {
        return Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
    }

    @NonNull
    protected static Throwable getRootCause(@NonNull Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    private <T> int getType(T t) {
        if (t instanceof String) {
            return 4;
        }
        if (t instanceof Parcelable) {
            return 2;
        }
        if (t instanceof VersionedParcelable) {
            return 1;
        }
        if (t instanceof Serializable) {
            return 3;
        }
        if (t instanceof IBinder) {
            return 5;
        }
        throw new IllegalArgumentException(t.getClass().getName() + " cannot be VersionedParcelled");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private <T, S extends Collection<T>> S readCollection(int i, S s) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        if (readInt != 0) {
            int readInt2 = readInt();
            if (readInt >= 0) {
                switch (readInt2) {
                    case 1:
                        while (readInt > 0) {
                            s.add(readVersionedParcelable());
                            readInt--;
                        }
                        break;
                    case 2:
                        for (int i2 = readInt; i2 > 0; i2--) {
                            s.add(readParcelable());
                        }
                        break;
                    case 3:
                        for (int i3 = readInt; i3 > 0; i3--) {
                            s.add(readSerializable());
                        }
                        break;
                    case 4:
                        for (int i4 = readInt; i4 > 0; i4--) {
                            s.add(readString());
                        }
                        break;
                    case 5:
                        for (int i5 = readInt; i5 > 0; i5--) {
                            s.add(readStrongBinder());
                        }
                        break;
                }
            } else {
                return null;
            }
        }
        return s;
    }

    private Exception readException(int i, String str) {
        return createException(i, str);
    }

    private int readExceptionCode() {
        return readInt();
    }

    protected static <T extends VersionedParcelable> T readFromParcel(String str, VersionedParcel versionedParcel) {
        try {
            return (T) ((VersionedParcelable) Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class).invoke(null, versionedParcel));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    private <T> void writeCollection(Collection<T> collection, int i) {
        setOutputField(i);
        if (collection == null) {
            writeInt(-1);
            return;
        }
        int size = collection.size();
        writeInt(size);
        if (size > 0) {
            int type = getType(collection.iterator().next());
            writeInt(type);
            switch (type) {
                case 1:
                    for (T t : collection) {
                        writeVersionedParcelable(t);
                    }
                    return;
                case 2:
                    for (T t2 : collection) {
                        writeParcelable(t2);
                    }
                    return;
                case 3:
                    for (T t3 : collection) {
                        writeSerializable(t3);
                    }
                    return;
                case 4:
                    for (T t4 : collection) {
                        writeString(t4);
                    }
                    return;
                case 5:
                    for (T t5 : collection) {
                        writeStrongBinder(t5);
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private void writeSerializable(Serializable serializable) {
        if (serializable == null) {
            writeString(null);
            return;
        }
        String name = serializable.getClass().getName();
        writeString(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            writeByteArray(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException writing serializable object (name = " + name + ")", e);
        }
    }

    protected static <T extends VersionedParcelable> void writeToParcel(T t, VersionedParcel versionedParcel) {
        try {
            findParcelClass(t).getDeclaredMethod("write", t.getClass(), VersionedParcel.class).invoke(null, t, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    private void writeVersionedParcelableCreator(VersionedParcelable versionedParcelable) {
        try {
            writeString(findParcelClass((Class<? extends VersionedParcelable>) versionedParcelable.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(versionedParcelable.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    protected abstract void closeField();

    protected abstract VersionedParcel createSubParcel();

    public boolean isStream() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public <T> T[] readArray(T[] tArr) {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(readInt);
        if (readInt != 0) {
            int readInt2 = readInt();
            if (readInt >= 0) {
                switch (readInt2) {
                    case 1:
                        while (readInt > 0) {
                            arrayList.add(readVersionedParcelable());
                            readInt--;
                        }
                        break;
                    case 2:
                        for (int i = readInt; i > 0; i--) {
                            arrayList.add(readParcelable());
                        }
                        break;
                    case 3:
                        for (int i2 = readInt; i2 > 0; i2--) {
                            arrayList.add(readSerializable());
                        }
                        break;
                    case 4:
                        for (int i3 = readInt; i3 > 0; i3--) {
                            arrayList.add(readString());
                        }
                        break;
                    case 5:
                        for (int i4 = readInt; i4 > 0; i4--) {
                            arrayList.add(readStrongBinder());
                        }
                        break;
                }
            } else {
                return null;
            }
        }
        return (T[]) arrayList.toArray(tArr);
    }

    public <T> T[] readArray(T[] tArr, int i) {
        return !readField(i) ? tArr : (T[]) readArray(tArr);
    }

    protected abstract boolean readBoolean();

    public boolean readBoolean(boolean z, int i) {
        return !readField(i) ? z : readBoolean();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean[] readBooleanArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        boolean[] zArr = new boolean[readInt];
        for (int i = 0; i < readInt; i++) {
            zArr[i] = readInt() != 0;
        }
        return zArr;
    }

    public boolean[] readBooleanArray(boolean[] zArr, int i) {
        return !readField(i) ? zArr : readBooleanArray();
    }

    protected abstract Bundle readBundle();

    public Bundle readBundle(Bundle bundle, int i) {
        return !readField(i) ? bundle : readBundle();
    }

    public byte readByte(byte b, int i) {
        return !readField(i) ? b : (byte) (readInt() & 255);
    }

    protected abstract byte[] readByteArray();

    public byte[] readByteArray(byte[] bArr, int i) {
        return !readField(i) ? bArr : readByteArray();
    }

    public char[] readCharArray(char[] cArr, int i) {
        if (!readField(i)) {
            return cArr;
        }
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        char[] cArr2 = new char[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            cArr2[i2] = (char) readInt();
        }
        return cArr2;
    }

    protected abstract double readDouble();

    public double readDouble(double d, int i) {
        return !readField(i) ? d : readDouble();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double[] readDoubleArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        double[] dArr = new double[readInt];
        for (int i = 0; i < readInt; i++) {
            dArr[i] = readDouble();
        }
        return dArr;
    }

    public double[] readDoubleArray(double[] dArr, int i) {
        return !readField(i) ? dArr : readDoubleArray();
    }

    public Exception readException(Exception exc, int i) {
        int readExceptionCode;
        if (readField(i) && (readExceptionCode = readExceptionCode()) != 0) {
            return readException(readExceptionCode, readString());
        }
        return exc;
    }

    protected abstract boolean readField(int i);

    protected abstract float readFloat();

    public float readFloat(float f, int i) {
        return !readField(i) ? f : readFloat();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float[] readFloatArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        float[] fArr = new float[readInt];
        for (int i = 0; i < readInt; i++) {
            fArr[i] = readFloat();
        }
        return fArr;
    }

    public float[] readFloatArray(float[] fArr, int i) {
        return !readField(i) ? fArr : readFloatArray();
    }

    protected abstract int readInt();

    public int readInt(int i, int i2) {
        return !readField(i2) ? i : readInt();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int[] readIntArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        int[] iArr = new int[readInt];
        for (int i = 0; i < readInt; i++) {
            iArr[i] = readInt();
        }
        return iArr;
    }

    public int[] readIntArray(int[] iArr, int i) {
        return !readField(i) ? iArr : readIntArray();
    }

    public <T> List<T> readList(List<T> list, int i) {
        return !readField(i) ? list : (List) readCollection(i, new ArrayList());
    }

    protected abstract long readLong();

    public long readLong(long j, int i) {
        return !readField(i) ? j : readLong();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long[] readLongArray() {
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        long[] jArr = new long[readInt];
        for (int i = 0; i < readInt; i++) {
            jArr[i] = readLong();
        }
        return jArr;
    }

    public long[] readLongArray(long[] jArr, int i) {
        return !readField(i) ? jArr : readLongArray();
    }

    protected abstract <T extends Parcelable> T readParcelable();

    public <T extends Parcelable> T readParcelable(T t, int i) {
        return !readField(i) ? t : (T) readParcelable();
    }

    protected Serializable readSerializable() {
        String readString = readString();
        if (readString == null) {
            return null;
        }
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(readByteArray())) { // from class: androidx.versionedparcelable.VersionedParcel.1
                @Override // java.io.ObjectInputStream
                protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
                    Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
                    return cls != null ? cls : super.resolveClass(objectStreamClass);
                }
            }.readObject();
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException reading a Serializable object (name = " + readString + ")", e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = " + readString + ")", e2);
        }
    }

    public <T> Set<T> readSet(Set<T> set, int i) {
        return !readField(i) ? set : (Set) readCollection(i, new ArraySet());
    }

    @RequiresApi(api = 21)
    public Size readSize(Size size, int i) {
        if (!readField(i)) {
            return size;
        }
        if (readBoolean()) {
            return new Size(readInt(), readInt());
        }
        return null;
    }

    @RequiresApi(api = 21)
    public SizeF readSizeF(SizeF sizeF, int i) {
        if (!readField(i)) {
            return sizeF;
        }
        if (readBoolean()) {
            return new SizeF(readFloat(), readFloat());
        }
        return null;
    }

    public SparseBooleanArray readSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int i) {
        if (!readField(i)) {
            return sparseBooleanArray;
        }
        int readInt = readInt();
        if (readInt < 0) {
            return null;
        }
        SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            sparseBooleanArray2.put(readInt(), readBoolean());
        }
        return sparseBooleanArray2;
    }

    protected abstract String readString();

    public String readString(String str, int i) {
        return !readField(i) ? str : readString();
    }

    protected abstract IBinder readStrongBinder();

    public IBinder readStrongBinder(IBinder iBinder, int i) {
        return !readField(i) ? iBinder : readStrongBinder();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T extends VersionedParcelable> T readVersionedParcelable() {
        String readString = readString();
        if (readString == null) {
            return null;
        }
        return (T) readFromParcel(readString, createSubParcel());
    }

    public <T extends VersionedParcelable> T readVersionedParcelable(T t, int i) {
        return !readField(i) ? t : (T) readVersionedParcelable();
    }

    protected abstract void setOutputField(int i);

    public void setSerializationFlags(boolean z, boolean z2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> void writeArray(T[] tArr) {
        if (tArr == null) {
            writeInt(-1);
            return;
        }
        int length = tArr.length;
        writeInt(length);
        if (length > 0) {
            int type = getType(tArr[0]);
            writeInt(type);
            /*  JADX ERROR: Method code generation error
                java.lang.ClassCastException: jadx.core.dex.nodes.InsnNode cannot be cast to jadx.core.dex.instructions.SwitchInsn
                	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:244)
                	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:79)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:79)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:122)
                	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                	at jadx.core.dex.regions.Region.generate(Region.java:35)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:267)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:260)
                	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:369)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:304)
                	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:270)
                	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                	at java.util.ArrayList.forEach(ArrayList.java:1259)
                	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                */
            /*
                this = this;
                r0 = r5
                if (r0 != 0) goto L_0x000a
                r0 = r4
                r1 = -1
                r0.writeInt(r1)
                return
            L_0x000a:
                r0 = r5
                int r0 = r0.length
                r6 = r0
                r0 = r4
                r1 = r6
                r0.writeInt(r1)
                r0 = r6
                if (r0 <= 0) goto L_0x00cc
                r0 = 0
                r7 = r0
                r0 = 0
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = 0
                r10 = r0
                r0 = 0
                r11 = r0
                r0 = r4
                r1 = r5
                r2 = 0
                r1 = r1[r2]
                int r0 = r0.getType(r1)
                r12 = r0
                r0 = r4
                r1 = r12
                r0.writeInt(r1)
                r0 = r12
                switch(r0) {
                    case 1: goto L_0x00b5;
                    case 2: goto L_0x009e;
                    case 3: goto L_0x0087;
                    case 4: goto L_0x0072;
                    case 5: goto L_0x005b;
                    default: goto L_0x0058;
                }
            L_0x0058:
                goto L_0x00cc
            L_0x005b:
                r0 = r11
                r1 = r6
                if (r0 >= r1) goto L_0x00cc
                r0 = r4
                r1 = r5
                r2 = r11
                r1 = r1[r2]
                android.os.IBinder r1 = (android.os.IBinder) r1
                r0.writeStrongBinder(r1)
                int r11 = r11 + 1
                goto L_0x005b
            L_0x0072:
                r0 = r7
                r1 = r6
                if (r0 >= r1) goto L_0x00cc
                r0 = r4
                r1 = r5
                r2 = r7
                r1 = r1[r2]
                java.lang.String r1 = (java.lang.String) r1
                r0.writeString(r1)
                int r7 = r7 + 1
                goto L_0x0072
            L_0x0087:
                r0 = r8
                r1 = r6
                if (r0 >= r1) goto L_0x00cc
                r0 = r4
                r1 = r5
                r2 = r8
                r1 = r1[r2]
                java.io.Serializable r1 = (java.io.Serializable) r1
                r0.writeSerializable(r1)
                int r8 = r8 + 1
                goto L_0x0087
            L_0x009e:
                r0 = r9
                r1 = r6
                if (r0 >= r1) goto L_0x00cc
                r0 = r4
                r1 = r5
                r2 = r9
                r1 = r1[r2]
                android.os.Parcelable r1 = (android.os.Parcelable) r1
                r0.writeParcelable(r1)
                int r9 = r9 + 1
                goto L_0x009e
            L_0x00b5:
                r0 = r10
                r1 = r6
                if (r0 >= r1) goto L_0x00cc
                r0 = r4
                r1 = r5
                r2 = r10
                r1 = r1[r2]
                androidx.versionedparcelable.VersionedParcelable r1 = (androidx.versionedparcelable.VersionedParcelable) r1
                r0.writeVersionedParcelable(r1)
                int r10 = r10 + 1
                goto L_0x00b5
            L_0x00cc:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.versionedparcelable.VersionedParcel.writeArray(java.lang.Object[]):void");
        }

        public <T> void writeArray(T[] tArr, int i) {
            setOutputField(i);
            writeArray(tArr);
        }

        protected abstract void writeBoolean(boolean z);

        public void writeBoolean(boolean z, int i) {
            setOutputField(i);
            writeBoolean(z);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void writeBooleanArray(boolean[] zArr) {
            if (zArr != null) {
                writeInt(zArr.length);
                for (boolean z : zArr) {
                    writeInt(z ? 1 : 0);
                }
                return;
            }
            writeInt(-1);
        }

        public void writeBooleanArray(boolean[] zArr, int i) {
            setOutputField(i);
            writeBooleanArray(zArr);
        }

        protected abstract void writeBundle(Bundle bundle);

        public void writeBundle(Bundle bundle, int i) {
            setOutputField(i);
            writeBundle(bundle);
        }

        public void writeByte(byte b, int i) {
            setOutputField(i);
            writeInt(b);
        }

        protected abstract void writeByteArray(byte[] bArr);

        public void writeByteArray(byte[] bArr, int i) {
            setOutputField(i);
            writeByteArray(bArr);
        }

        protected abstract void writeByteArray(byte[] bArr, int i, int i2);

        public void writeByteArray(byte[] bArr, int i, int i2, int i3) {
            setOutputField(i3);
            writeByteArray(bArr, i, i2);
        }

        public void writeCharArray(char[] cArr, int i) {
            setOutputField(i);
            if (cArr != null) {
                writeInt(cArr.length);
                for (char c : cArr) {
                    writeInt(c);
                }
                return;
            }
            writeInt(-1);
        }

        protected abstract void writeDouble(double d);

        public void writeDouble(double d, int i) {
            setOutputField(i);
            writeDouble(d);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void writeDoubleArray(double[] dArr) {
            if (dArr != null) {
                writeInt(dArr.length);
                for (double d : dArr) {
                    writeDouble(d);
                }
                return;
            }
            writeInt(-1);
        }

        public void writeDoubleArray(double[] dArr, int i) {
            setOutputField(i);
            writeDoubleArray(dArr);
        }

        public void writeException(Exception exc, int i) {
            setOutputField(i);
            if (exc == null) {
                writeNoException();
                return;
            }
            int i2 = 0;
            if ((exc instanceof Parcelable) && exc.getClass().getClassLoader() == Parcelable.class.getClassLoader()) {
                i2 = EX_PARCELABLE;
            } else if (exc instanceof SecurityException) {
                i2 = -1;
            } else if (exc instanceof BadParcelableException) {
                i2 = -2;
            } else if (exc instanceof IllegalArgumentException) {
                i2 = -3;
            } else if (exc instanceof NullPointerException) {
                i2 = -4;
            } else if (exc instanceof IllegalStateException) {
                i2 = EX_ILLEGAL_STATE;
            } else if (exc instanceof NetworkOnMainThreadException) {
                i2 = EX_NETWORK_MAIN_THREAD;
            } else if (exc instanceof UnsupportedOperationException) {
                i2 = EX_UNSUPPORTED_OPERATION;
            }
            writeInt(i2);
            if (i2 != 0) {
                writeString(exc.getMessage());
                if (i2 == EX_PARCELABLE) {
                    writeParcelable((Parcelable) exc);
                }
            } else if (exc instanceof RuntimeException) {
                throw ((RuntimeException) exc);
            } else {
                throw new RuntimeException(exc);
            }
        }

        protected abstract void writeFloat(float f);

        public void writeFloat(float f, int i) {
            setOutputField(i);
            writeFloat(f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void writeFloatArray(float[] fArr) {
            if (fArr != null) {
                writeInt(fArr.length);
                for (float f : fArr) {
                    writeFloat(f);
                }
                return;
            }
            writeInt(-1);
        }

        public void writeFloatArray(float[] fArr, int i) {
            setOutputField(i);
            writeFloatArray(fArr);
        }

        protected abstract void writeInt(int i);

        public void writeInt(int i, int i2) {
            setOutputField(i2);
            writeInt(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void writeIntArray(int[] iArr) {
            if (iArr != null) {
                writeInt(iArr.length);
                for (int i : iArr) {
                    writeInt(i);
                }
                return;
            }
            writeInt(-1);
        }

        public void writeIntArray(int[] iArr, int i) {
            setOutputField(i);
            writeIntArray(iArr);
        }

        public <T> void writeList(List<T> list, int i) {
            writeCollection(list, i);
        }

        protected abstract void writeLong(long j);

        public void writeLong(long j, int i) {
            setOutputField(i);
            writeLong(j);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void writeLongArray(long[] jArr) {
            if (jArr != null) {
                writeInt(jArr.length);
                for (long j : jArr) {
                    writeLong(j);
                }
                return;
            }
            writeInt(-1);
        }

        public void writeLongArray(long[] jArr, int i) {
            setOutputField(i);
            writeLongArray(jArr);
        }

        protected void writeNoException() {
            writeInt(0);
        }

        protected abstract void writeParcelable(Parcelable parcelable);

        public void writeParcelable(Parcelable parcelable, int i) {
            setOutputField(i);
            writeParcelable(parcelable);
        }

        public void writeSerializable(Serializable serializable, int i) {
            setOutputField(i);
            writeSerializable(serializable);
        }

        public <T> void writeSet(Set<T> set, int i) {
            writeCollection(set, i);
        }

        @RequiresApi(api = 21)
        public void writeSize(Size size, int i) {
            setOutputField(i);
            writeBoolean(size != null);
            if (size != null) {
                writeInt(size.getWidth());
                writeInt(size.getHeight());
            }
        }

        @RequiresApi(api = 21)
        public void writeSizeF(SizeF sizeF, int i) {
            setOutputField(i);
            writeBoolean(sizeF != null);
            if (sizeF != null) {
                writeFloat(sizeF.getWidth());
                writeFloat(sizeF.getHeight());
            }
        }

        public void writeSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int i) {
            setOutputField(i);
            if (sparseBooleanArray == null) {
                writeInt(-1);
                return;
            }
            int size = sparseBooleanArray.size();
            writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                writeInt(sparseBooleanArray.keyAt(i2));
                writeBoolean(sparseBooleanArray.valueAt(i2));
            }
        }

        protected abstract void writeString(String str);

        public void writeString(String str, int i) {
            setOutputField(i);
            writeString(str);
        }

        protected abstract void writeStrongBinder(IBinder iBinder);

        public void writeStrongBinder(IBinder iBinder, int i) {
            setOutputField(i);
            writeStrongBinder(iBinder);
        }

        protected abstract void writeStrongInterface(IInterface iInterface);

        public void writeStrongInterface(IInterface iInterface, int i) {
            setOutputField(i);
            writeStrongInterface(iInterface);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void writeVersionedParcelable(VersionedParcelable versionedParcelable) {
            if (versionedParcelable == null) {
                writeString(null);
                return;
            }
            writeVersionedParcelableCreator(versionedParcelable);
            VersionedParcel createSubParcel = createSubParcel();
            writeToParcel(versionedParcelable, createSubParcel);
            createSubParcel.closeField();
        }

        public void writeVersionedParcelable(VersionedParcelable versionedParcelable, int i) {
            setOutputField(i);
            writeVersionedParcelable(versionedParcelable);
        }
    }
