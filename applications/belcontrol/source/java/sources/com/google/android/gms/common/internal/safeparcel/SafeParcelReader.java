package com.google.android.gms.common.internal.safeparcel;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import androidx.annotation.RecentlyNonNull;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader.class */
public class SafeParcelReader {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException.class */
    public static class ParseException extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ParseException(@androidx.annotation.RecentlyNonNull java.lang.String r6, @androidx.annotation.RecentlyNonNull android.os.Parcel r7) {
            /*
                r5 = this;
                r0 = r7
                int r0 = r0.dataPosition()
                r8 = r0
                r0 = r7
                int r0 = r0.dataSize()
                r9 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r6
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 41
                int r2 = r2 + r3
                r1.<init>(r2)
                r7 = r0
                r0 = r7
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                java.lang.String r1 = " Parcel: pos="
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                java.lang.String r1 = " size="
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r7
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.safeparcel.SafeParcelReader.ParseException.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    private SafeParcelReader() {
    }

    @RecentlyNonNull
    public static BigDecimal createBigDecimal(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + readSize);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    @RecentlyNonNull
    public static BigDecimal[] createBigDecimalArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigDecimalArr[i2] = new BigDecimal(new BigInteger(parcel.createByteArray()), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return bigDecimalArr;
    }

    @RecentlyNonNull
    public static BigInteger createBigInteger(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + readSize);
        return new BigInteger(createByteArray);
    }

    @RecentlyNonNull
    public static BigInteger[] createBigIntegerArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigIntegerArr[i2] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return bigIntegerArr;
    }

    @RecentlyNonNull
    public static boolean[] createBooleanArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createBooleanArray;
    }

    @RecentlyNonNull
    public static ArrayList<Boolean> createBooleanList(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<Boolean> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(Boolean.valueOf(parcel.readInt() != 0));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static Bundle createBundle(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + readSize);
        return readBundle;
    }

    @RecentlyNonNull
    public static byte[] createByteArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createByteArray;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [byte[], byte[][]] */
    @RecentlyNonNull
    public static byte[][] createByteArrayArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        ?? r0 = new byte[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            r0[i2] = parcel.createByteArray();
        }
        parcel.setDataPosition(dataPosition + readSize);
        return r0;
    }

    @RecentlyNonNull
    public static SparseArray<byte[]> createByteArraySparseArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<byte[]> sparseArray = new SparseArray<>(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            sparseArray.append(parcel.readInt(), parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static char[] createCharArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        char[] createCharArray = parcel.createCharArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createCharArray;
    }

    @RecentlyNonNull
    public static double[] createDoubleArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        double[] createDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createDoubleArray;
    }

    @RecentlyNonNull
    public static ArrayList<Double> createDoubleList(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<Double> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(Double.valueOf(parcel.readDouble()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static SparseArray<Double> createDoubleSparseArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseArray<Double> sparseArray = new SparseArray<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            sparseArray.append(parcel.readInt(), Double.valueOf(parcel.readDouble()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static float[] createFloatArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        float[] createFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createFloatArray;
    }

    @RecentlyNonNull
    public static ArrayList<Float> createFloatList(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<Float> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(Float.valueOf(parcel.readFloat()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static SparseArray<Float> createFloatSparseArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseArray<Float> sparseArray = new SparseArray<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            sparseArray.append(parcel.readInt(), Float.valueOf(parcel.readFloat()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static IBinder[] createIBinderArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        IBinder[] createBinderArray = parcel.createBinderArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createBinderArray;
    }

    @RecentlyNonNull
    public static ArrayList<IBinder> createIBinderList(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<IBinder> createBinderArrayList = parcel.createBinderArrayList();
        parcel.setDataPosition(dataPosition + readSize);
        return createBinderArrayList;
    }

    @RecentlyNonNull
    public static SparseArray<IBinder> createIBinderSparseArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<IBinder> sparseArray = new SparseArray<>(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            sparseArray.append(parcel.readInt(), parcel.readStrongBinder());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static int[] createIntArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createIntArray;
    }

    @RecentlyNonNull
    public static ArrayList<Integer> createIntegerList(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static long[] createLongArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        long[] createLongArray = parcel.createLongArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createLongArray;
    }

    @RecentlyNonNull
    public static ArrayList<Long> createLongList(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<Long> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(Long.valueOf(parcel.readLong()));
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static Parcel createParcel(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, readSize);
        parcel.setDataPosition(dataPosition + readSize);
        return obtain;
    }

    @RecentlyNonNull
    public static Parcel[] createParcelArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        Parcel[] parcelArr = new Parcel[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                parcelArr[i2] = obtain;
                parcel.setDataPosition(dataPosition2 + readInt2);
            } else {
                parcelArr[i2] = null;
            }
        }
        parcel.setDataPosition(dataPosition + readSize);
        return parcelArr;
    }

    @RecentlyNonNull
    public static ArrayList<Parcel> createParcelList(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        ArrayList<Parcel> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < readInt; i2++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                arrayList.add(obtain);
                parcel.setDataPosition(dataPosition2 + readInt2);
            } else {
                arrayList.add(null);
            }
        }
        parcel.setDataPosition(dataPosition + readSize);
        return arrayList;
    }

    @RecentlyNonNull
    public static SparseArray<Parcel> createParcelSparseArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<Parcel> sparseArray = new SparseArray<>();
        for (int i2 = 0; i2 < readInt; i2++) {
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            if (readInt3 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt3);
                sparseArray.append(readInt2, obtain);
                parcel.setDataPosition(dataPosition2 + readInt3);
            } else {
                sparseArray.append(readInt2, null);
            }
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static <T extends Parcelable> T createParcelable(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + readSize);
        return createFromParcel;
    }

    @RecentlyNonNull
    public static SparseBooleanArray createSparseBooleanArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseBooleanArray readSparseBooleanArray = parcel.readSparseBooleanArray();
        parcel.setDataPosition(dataPosition + readSize);
        return readSparseBooleanArray;
    }

    @RecentlyNonNull
    public static SparseIntArray createSparseIntArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseIntArray sparseIntArray = new SparseIntArray();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            sparseIntArray.append(parcel.readInt(), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseIntArray;
    }

    @RecentlyNonNull
    public static SparseLongArray createSparseLongArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseLongArray sparseLongArray = new SparseLongArray();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            sparseLongArray.append(parcel.readInt(), parcel.readLong());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseLongArray;
    }

    @RecentlyNonNull
    public static String createString(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + readSize);
        return readString;
    }

    @RecentlyNonNull
    public static String[] createStringArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createStringArray;
    }

    @RecentlyNonNull
    public static ArrayList<String> createStringList(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + readSize);
        return createStringArrayList;
    }

    @RecentlyNonNull
    public static SparseArray<String> createStringSparseArray(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        SparseArray<String> sparseArray = new SparseArray<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            sparseArray.append(parcel.readInt(), parcel.readString());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    @RecentlyNonNull
    public static <T> T[] createTypedArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + readSize);
        return tArr;
    }

    @RecentlyNonNull
    public static <T> ArrayList<T> createTypedList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + readSize);
        return createTypedArrayList;
    }

    @RecentlyNonNull
    public static <T> SparseArray<T> createTypedSparseArray(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        SparseArray<T> sparseArray = new SparseArray<>();
        for (int i2 = 0; i2 < readInt; i2++) {
            sparseArray.append(parcel.readInt(), parcel.readInt() != 0 ? creator.createFromParcel(parcel) : null);
        }
        parcel.setDataPosition(dataPosition + readSize);
        return sparseArray;
    }

    public static void ensureAtEnd(@RecentlyNonNull Parcel parcel, int i) {
        if (parcel.dataPosition() == i) {
            return;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(i);
        throw new ParseException(sb.toString(), parcel);
    }

    public static int getFieldId(int i) {
        return (char) i;
    }

    public static boolean readBoolean(@RecentlyNonNull Parcel parcel, int i) {
        zza(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    @RecentlyNonNull
    public static Boolean readBooleanObject(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        if (readSize == 0) {
            return null;
        }
        zzb(parcel, i, readSize, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    public static byte readByte(@RecentlyNonNull Parcel parcel, int i) {
        zza(parcel, i, 4);
        return (byte) parcel.readInt();
    }

    public static char readChar(@RecentlyNonNull Parcel parcel, int i) {
        zza(parcel, i, 4);
        return (char) parcel.readInt();
    }

    public static double readDouble(@RecentlyNonNull Parcel parcel, int i) {
        zza(parcel, i, 8);
        return parcel.readDouble();
    }

    @RecentlyNonNull
    public static Double readDoubleObject(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        if (readSize == 0) {
            return null;
        }
        zzb(parcel, i, readSize, 8);
        return Double.valueOf(parcel.readDouble());
    }

    public static float readFloat(@RecentlyNonNull Parcel parcel, int i) {
        zza(parcel, i, 4);
        return parcel.readFloat();
    }

    @RecentlyNonNull
    public static Float readFloatObject(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        if (readSize == 0) {
            return null;
        }
        zzb(parcel, i, readSize, 4);
        return Float.valueOf(parcel.readFloat());
    }

    public static int readHeader(@RecentlyNonNull Parcel parcel) {
        return parcel.readInt();
    }

    @RecentlyNonNull
    public static IBinder readIBinder(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + readSize);
        return readStrongBinder;
    }

    public static int readInt(@RecentlyNonNull Parcel parcel, int i) {
        zza(parcel, i, 4);
        return parcel.readInt();
    }

    @RecentlyNonNull
    public static Integer readIntegerObject(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        if (readSize == 0) {
            return null;
        }
        zzb(parcel, i, readSize, 4);
        return Integer.valueOf(parcel.readInt());
    }

    public static void readList(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List list, @RecentlyNonNull ClassLoader classLoader) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return;
        }
        parcel.readList(list, classLoader);
        parcel.setDataPosition(dataPosition + readSize);
    }

    public static long readLong(@RecentlyNonNull Parcel parcel, int i) {
        zza(parcel, i, 8);
        return parcel.readLong();
    }

    @RecentlyNonNull
    public static Long readLongObject(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        if (readSize == 0) {
            return null;
        }
        zzb(parcel, i, readSize, 8);
        return Long.valueOf(parcel.readLong());
    }

    @RecentlyNonNull
    public static PendingIntent readPendingIntent(@RecentlyNonNull Parcel parcel, int i) {
        int readSize = readSize(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        PendingIntent readPendingIntentOrNullFromParcel = PendingIntent.readPendingIntentOrNullFromParcel(parcel);
        parcel.setDataPosition(dataPosition + readSize);
        return readPendingIntentOrNullFromParcel;
    }

    public static short readShort(@RecentlyNonNull Parcel parcel, int i) {
        zza(parcel, i, 4);
        return (short) parcel.readInt();
    }

    public static int readSize(@RecentlyNonNull Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (char) (i >> 16) : parcel.readInt();
    }

    public static void skipUnknownField(@RecentlyNonNull Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + readSize(parcel, i));
    }

    public static int validateObjectHeader(@RecentlyNonNull Parcel parcel) {
        int readHeader = readHeader(parcel);
        int readSize = readSize(parcel, readHeader);
        int dataPosition = parcel.dataPosition();
        if (getFieldId(readHeader) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(readHeader));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = readSize + dataPosition;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("Size read is invalid start=");
        sb.append(dataPosition);
        sb.append(" end=");
        sb.append(i);
        throw new ParseException(sb.toString(), parcel);
    }

    private static void zza(Parcel parcel, int i, int i2) {
        int readSize = readSize(parcel, i);
        if (readSize == i2) {
            return;
        }
        String hexString = Integer.toHexString(readSize);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(readSize);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new ParseException(sb.toString(), parcel);
    }

    private static void zzb(Parcel parcel, int i, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        String hexString = Integer.toHexString(i2);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i3);
        sb.append(" got ");
        sb.append(i2);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new ParseException(sb.toString(), parcel);
    }
}
