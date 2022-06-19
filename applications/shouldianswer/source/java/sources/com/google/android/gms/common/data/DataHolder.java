package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.sqlite.CursorWrapper;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new zac();
    private static final Builder zaly = new zab(new String[0], null);
    private boolean mClosed;
    private final int zalf;
    private final String[] zalq;
    private Bundle zalr;
    private final CursorWindow[] zals;
    private final int zalt;
    private final Bundle zalu;
    private int[] zalv;
    private int zalw;
    private boolean zalx;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$Builder.class */
    public static class Builder {
        private final String[] zalq;
        private final ArrayList<HashMap<String, Object>> zalz;
        private final String zama;
        private final HashMap<Object, Integer> zamb;
        private boolean zamc;
        private String zamd;

        private Builder(String[] strArr, String str) {
            this.zalq = (String[]) Preconditions.checkNotNull(strArr);
            this.zalz = new ArrayList<>();
            this.zama = str;
            this.zamb = new HashMap<>();
            this.zamc = false;
            this.zamd = null;
        }

        public /* synthetic */ Builder(String[] strArr, String str, zab zabVar) {
            this(strArr, null);
        }

        public DataHolder build(int i) {
            return new DataHolder(this, i, (Bundle) null, (zab) null);
        }

        public DataHolder build(int i, Bundle bundle) {
            return new DataHolder(this, i, bundle, -1, (zab) null);
        }

        public Builder withRow(ContentValues contentValues) {
            Asserts.checkNotNull(contentValues);
            HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return zaa(hashMap);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x005e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.android.gms.common.data.DataHolder.Builder zaa(java.util.HashMap<java.lang.String, java.lang.Object> r5) {
            /*
                r4 = this;
                r0 = r5
                com.google.android.gms.common.internal.Asserts.checkNotNull(r0)
                r0 = r4
                java.lang.String r0 = r0.zama
                r6 = r0
                r0 = r6
                if (r0 != 0) goto L12
            Ld:
                r0 = -1
                r7 = r0
                goto L4d
            L12:
                r0 = r5
                r1 = r6
                java.lang.Object r0 = r0.get(r1)
                r6 = r0
                r0 = r6
                if (r0 != 0) goto L1f
                goto Ld
            L1f:
                r0 = r4
                java.util.HashMap<java.lang.Object, java.lang.Integer> r0 = r0.zamb
                r1 = r6
                java.lang.Object r0 = r0.get(r1)
                java.lang.Integer r0 = (java.lang.Integer) r0
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L47
                r0 = r4
                java.util.HashMap<java.lang.Object, java.lang.Integer> r0 = r0.zamb
                r1 = r6
                r2 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r2 = r2.zalz
                int r2 = r2.size()
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.Object r0 = r0.put(r1, r2)
                goto Ld
            L47:
                r0 = r8
                int r0 = r0.intValue()
                r7 = r0
            L4d:
                r0 = r7
                r1 = -1
                if (r0 != r1) goto L5e
                r0 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.zalz
                r1 = r5
                boolean r0 = r0.add(r1)
                goto L70
            L5e:
                r0 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.zalz
                r1 = r7
                java.lang.Object r0 = r0.remove(r1)
                r0 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.zalz
                r1 = r7
                r2 = r5
                r0.add(r1, r2)
            L70:
                r0 = r4
                r1 = 0
                r0.zamc = r1
                r0 = r4
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.data.DataHolder.Builder.zaa(java.util.HashMap):com.google.android.gms.common.data.DataHolder$Builder");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$zaa.class */
    public static final class zaa extends RuntimeException {
        public zaa(String str) {
            super(str);
        }
    }

    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.mClosed = false;
        this.zalx = true;
        this.zalf = i;
        this.zalq = strArr;
        this.zals = cursorWindowArr;
        this.zalt = i2;
        this.zalu = bundle;
    }

    public DataHolder(Cursor cursor, int i, Bundle bundle) {
        this(new CursorWrapper(cursor), i, bundle);
    }

    private DataHolder(Builder builder, int i, Bundle bundle) {
        this(builder.zalq, zaa(builder, -1), i, (Bundle) null);
    }

    private DataHolder(Builder builder, int i, Bundle bundle, int i2) {
        this(builder.zalq, zaa(builder, -1), i, bundle);
    }

    /* synthetic */ DataHolder(Builder builder, int i, Bundle bundle, int i2, zab zabVar) {
        this(builder, i, bundle, -1);
    }

    /* synthetic */ DataHolder(Builder builder, int i, Bundle bundle, zab zabVar) {
        this(builder, i, (Bundle) null);
    }

    private DataHolder(CursorWrapper cursorWrapper, int i, Bundle bundle) {
        this(cursorWrapper.getColumnNames(), zaa(cursorWrapper), i, bundle);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.mClosed = false;
        this.zalx = true;
        this.zalf = 1;
        this.zalq = (String[]) Preconditions.checkNotNull(strArr);
        this.zals = (CursorWindow[]) Preconditions.checkNotNull(cursorWindowArr);
        this.zalt = i;
        this.zalu = bundle;
        zaca();
    }

    public static Builder builder(String[] strArr) {
        return new Builder(strArr, null, null);
    }

    public static DataHolder empty(int i) {
        return new DataHolder(zaly, i, (Bundle) null);
    }

    private final void zaa(String str, int i) {
        Bundle bundle = this.zalr;
        if (bundle == null || !bundle.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else {
            if (i >= 0 && i < this.zalw) {
                return;
            }
            throw new CursorIndexOutOfBoundsException(i, this.zalw);
        }
    }

    private static CursorWindow[] zaa(Builder builder, int i) {
        boolean z;
        if (builder.zalq.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList subList = (i < 0 || i >= builder.zalz.size()) ? builder.zalz : builder.zalz.subList(0, i);
        int size = subList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cursorWindow);
        cursorWindow.setNumColumns(builder.zalq.length);
        boolean z2 = false;
        int i2 = 0;
        while (i2 < size) {
            try {
                if (!cursorWindow.allocRow()) {
                    StringBuilder sb = new StringBuilder(72);
                    sb.append("Allocating additional cursor window for large data set (row ");
                    sb.append(i2);
                    sb.append(")");
                    Log.d("DataHolder", sb.toString());
                    CursorWindow cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i2);
                    cursorWindow2.setNumColumns(builder.zalq.length);
                    arrayList.add(cursorWindow2);
                    cursorWindow = cursorWindow2;
                    if (!cursorWindow2.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList.remove(cursorWindow2);
                        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
                    }
                }
                Map map = (Map) subList.get(i2);
                boolean z3 = true;
                for (int i3 = 0; i3 < builder.zalq.length && z3; i3++) {
                    String str = builder.zalq[i3];
                    Object obj = map.get(str);
                    if (obj == null) {
                        z3 = cursorWindow.putNull(i2, i3);
                    } else if (obj instanceof String) {
                        z3 = cursorWindow.putString((String) obj, i2, i3);
                    } else if (obj instanceof Long) {
                        z3 = cursorWindow.putLong(((Long) obj).longValue(), i2, i3);
                    } else if (obj instanceof Integer) {
                        z3 = cursorWindow.putLong(((Integer) obj).intValue(), i2, i3);
                    } else if (obj instanceof Boolean) {
                        z3 = cursorWindow.putLong((((Boolean) obj).booleanValue() ? 1 : null) == 1 ? 1L : 0L, i2, i3);
                    } else if (obj instanceof byte[]) {
                        z3 = cursorWindow.putBlob((byte[]) obj, i2, i3);
                    } else if (obj instanceof Double) {
                        z3 = cursorWindow.putDouble(((Double) obj).doubleValue(), i2, i3);
                    } else if (!(obj instanceof Float)) {
                        String valueOf = String.valueOf(obj);
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(valueOf).length());
                        sb2.append("Unsupported object for column ");
                        sb2.append(str);
                        sb2.append(": ");
                        sb2.append(valueOf);
                        throw new IllegalArgumentException(sb2.toString());
                    } else {
                        z3 = cursorWindow.putDouble(((Float) obj).floatValue(), i2, i3);
                    }
                }
                if (z3) {
                    z = false;
                } else if (z2) {
                    throw new zaa("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                } else {
                    StringBuilder sb3 = new StringBuilder(74);
                    sb3.append("Couldn't populate window data for row ");
                    sb3.append(i2);
                    sb3.append(" - allocating new window.");
                    Log.d("DataHolder", sb3.toString());
                    cursorWindow.freeLastRow();
                    cursorWindow = new CursorWindow(false);
                    cursorWindow.setStartPosition(i2);
                    cursorWindow.setNumColumns(builder.zalq.length);
                    arrayList.add(cursorWindow);
                    i2--;
                    z = true;
                }
                z2 = z;
                i2++;
            } catch (RuntimeException e) {
                int size2 = arrayList.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    ((CursorWindow) arrayList.get(i4)).close();
                }
                throw e;
            }
        }
        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
    }

    /* JADX WARN: Finally extract failed */
    private static CursorWindow[] zaa(CursorWrapper cursorWrapper) {
        int i;
        ArrayList arrayList = new ArrayList();
        try {
            int count = cursorWrapper.getCount();
            CursorWindow window = cursorWrapper.getWindow();
            if (window == null || window.getStartPosition() != 0) {
                i = 0;
            } else {
                window.acquireReference();
                cursorWrapper.setWindow(null);
                arrayList.add(window);
                i = window.getNumRows();
            }
            while (i < count) {
                if (!cursorWrapper.moveToPosition(i)) {
                    break;
                }
                CursorWindow window2 = cursorWrapper.getWindow();
                if (window2 != null) {
                    window2.acquireReference();
                    cursorWrapper.setWindow(null);
                } else {
                    window2 = new CursorWindow(false);
                    window2.setStartPosition(i);
                    cursorWrapper.fillWindow(i, window2);
                }
                if (window2.getNumRows() == 0) {
                    break;
                }
                arrayList.add(window2);
                i = window2.getStartPosition() + window2.getNumRows();
            }
            cursorWrapper.close();
            return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
        } catch (Throwable th) {
            cursorWrapper.close();
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (int i = 0; i < this.zals.length; i++) {
                    this.zals[i].close();
                }
            }
        }
    }

    protected final void finalize() {
        try {
            if (this.zalx && this.zals.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(obj);
                sb.append(")");
                Log.e("DataBuffer", sb.toString());
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean getBoolean(String str, int i, int i2) {
        zaa(str, i);
        return Long.valueOf(this.zals[i2].getLong(i, this.zalr.getInt(str))).longValue() == 1;
    }

    public final byte[] getByteArray(String str, int i, int i2) {
        zaa(str, i);
        return this.zals[i2].getBlob(i, this.zalr.getInt(str));
    }

    public final int getCount() {
        return this.zalw;
    }

    public final int getInteger(String str, int i, int i2) {
        zaa(str, i);
        return this.zals[i2].getInt(i, this.zalr.getInt(str));
    }

    public final long getLong(String str, int i, int i2) {
        zaa(str, i);
        return this.zals[i2].getLong(i, this.zalr.getInt(str));
    }

    public final Bundle getMetadata() {
        return this.zalu;
    }

    public final int getStatusCode() {
        return this.zalt;
    }

    public final String getString(String str, int i, int i2) {
        zaa(str, i);
        return this.zals[i2].getString(i, this.zalr.getInt(str));
    }

    public final int getWindowIndex(int i) {
        int i2;
        int i3 = 0;
        Preconditions.checkState(i >= 0 && i < this.zalw);
        while (true) {
            int[] iArr = this.zalv;
            i2 = i3;
            if (i3 >= iArr.length) {
                break;
            } else if (i < iArr[i3]) {
                i2 = i3 - 1;
                break;
            } else {
                i3++;
            }
        }
        int i4 = i2;
        if (i2 == this.zalv.length) {
            i4 = i2 - 1;
        }
        return i4;
    }

    public final boolean hasColumn(String str) {
        return this.zalr.containsKey(str);
    }

    public final boolean hasNull(String str, int i, int i2) {
        zaa(str, i);
        return this.zals[i2].isNull(i, this.zalr.getInt(str));
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.mClosed;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringArray(parcel, 1, this.zalq, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.zals, i, false);
        SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
        SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.zalf);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        if ((i & 1) != 0) {
            close();
        }
    }

    public final float zaa(String str, int i, int i2) {
        zaa(str, i);
        return this.zals[i2].getFloat(i, this.zalr.getInt(str));
    }

    public final void zaa(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zaa(str, i);
        this.zals[i2].copyStringToBuffer(i, this.zalr.getInt(str), charArrayBuffer);
    }

    public final double zab(String str, int i, int i2) {
        zaa(str, i);
        return this.zals[i2].getDouble(i, this.zalr.getInt(str));
    }

    public final void zaca() {
        this.zalr = new Bundle();
        int i = 0;
        while (true) {
            String[] strArr = this.zalq;
            if (i >= strArr.length) {
                break;
            }
            this.zalr.putInt(strArr[i], i);
            i++;
        }
        this.zalv = new int[this.zals.length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.zals;
            if (i3 >= cursorWindowArr.length) {
                this.zalw = i2;
                return;
            }
            this.zalv[i3] = i2;
            i2 += this.zals[i3].getNumRows() - (i2 - cursorWindowArr[i3].getStartPosition());
            i3++;
        }
    }
}
