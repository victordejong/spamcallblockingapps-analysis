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
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.sqlite.CursorWrapper;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@KeepForSdk
@KeepName
@SafeParcelable.Class(creator = "DataHolderCreator", validate = true)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    @KeepForSdk
    public static final Parcelable.Creator<DataHolder> CREATOR = new zac();
    private static final Builder zalx = new zab(new String[0], null);
    private boolean mClosed;
    @SafeParcelable.VersionField(m342id = 1000)
    private final int zale;
    @SafeParcelable.Field(getter = "getColumns", m344id = 1)
    private final String[] zalp;
    private Bundle zalq;
    @SafeParcelable.Field(getter = "getWindows", m344id = 2)
    private final CursorWindow[] zalr;
    @SafeParcelable.Field(getter = "getStatusCode", m344id = 3)
    private final int zals;
    @SafeParcelable.Field(getter = "getMetadata", m344id = 4)
    private final Bundle zalt;
    private int[] zalu;
    private int zalv;
    private boolean zalw;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$Builder.class */
    public static class Builder {
        private final String[] zalp;
        private final ArrayList<HashMap<String, Object>> zaly;
        private final String zalz;
        private final HashMap<Object, Integer> zama;
        private boolean zamb;
        private String zamc;

        private Builder(String[] strArr, String str) {
            this.zalp = (String[]) Preconditions.checkNotNull(strArr);
            this.zaly = new ArrayList<>();
            this.zalz = str;
            this.zama = new HashMap<>();
            this.zamb = false;
            this.zamc = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ Builder(String[] strArr, String str, zab zabVar) {
            this(strArr, null);
        }

        @KeepForSdk
        public DataHolder build(int i) {
            return new DataHolder(this, i, (Bundle) null, (zab) null);
        }

        @KeepForSdk
        public DataHolder build(int i, Bundle bundle) {
            return new DataHolder(this, i, bundle, -1, (zab) null);
        }

        @KeepForSdk
        public Builder withRow(ContentValues contentValues) {
            Asserts.checkNotNull(contentValues);
            HashMap<String, Object> hashMap = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            return zaa(hashMap);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x005f  */
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
                java.lang.String r0 = r0.zalz
                if (r0 != 0) goto L_0x0010
            L_0x000b:
                r0 = -1
                r6 = r0
                goto L_0x004e
            L_0x0010:
                r0 = r5
                r1 = r4
                java.lang.String r1 = r1.zalz
                java.lang.Object r0 = r0.get(r1)
                r7 = r0
                r0 = r7
                if (r0 != 0) goto L_0x0020
                goto L_0x000b
            L_0x0020:
                r0 = r4
                java.util.HashMap<java.lang.Object, java.lang.Integer> r0 = r0.zama
                r1 = r7
                java.lang.Object r0 = r0.get(r1)
                java.lang.Integer r0 = (java.lang.Integer) r0
                r8 = r0
                r0 = r8
                if (r0 != 0) goto L_0x0048
                r0 = r4
                java.util.HashMap<java.lang.Object, java.lang.Integer> r0 = r0.zama
                r1 = r7
                r2 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r2 = r2.zaly
                int r2 = r2.size()
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.Object r0 = r0.put(r1, r2)
                goto L_0x000b
            L_0x0048:
                r0 = r8
                int r0 = r0.intValue()
                r6 = r0
            L_0x004e:
                r0 = r6
                r1 = -1
                if (r0 != r1) goto L_0x005f
                r0 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.zaly
                r1 = r5
                boolean r0 = r0.add(r1)
                goto L_0x0071
            L_0x005f:
                r0 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.zaly
                r1 = r6
                java.lang.Object r0 = r0.remove(r1)
                r0 = r4
                java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.Object>> r0 = r0.zaly
                r1 = r6
                r2 = r5
                r0.add(r1, r2)
            L_0x0071:
                r0 = r4
                r1 = 0
                r0.zamb = r1
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public DataHolder(@SafeParcelable.Param(m343id = 1000) int i, @SafeParcelable.Param(m343id = 1) String[] strArr, @SafeParcelable.Param(m343id = 2) CursorWindow[] cursorWindowArr, @SafeParcelable.Param(m343id = 3) int i2, @SafeParcelable.Param(m343id = 4) Bundle bundle) {
        this.mClosed = false;
        this.zalw = true;
        this.zale = i;
        this.zalp = strArr;
        this.zalr = cursorWindowArr;
        this.zals = i2;
        this.zalt = bundle;
    }

    @KeepForSdk
    public DataHolder(Cursor cursor, int i, Bundle bundle) {
        this(new CursorWrapper(cursor), i, bundle);
    }

    private DataHolder(Builder builder, int i, Bundle bundle) {
        this(builder.zalp, zaa(builder, -1), i, (Bundle) null);
    }

    private DataHolder(Builder builder, int i, Bundle bundle, int i2) {
        this(builder.zalp, zaa(builder, -1), i, bundle);
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

    @KeepForSdk
    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.mClosed = false;
        this.zalw = true;
        this.zale = 1;
        this.zalp = (String[]) Preconditions.checkNotNull(strArr);
        this.zalr = (CursorWindow[]) Preconditions.checkNotNull(cursorWindowArr);
        this.zals = i;
        this.zalt = bundle;
        zaca();
    }

    @KeepForSdk
    public static Builder builder(String[] strArr) {
        return new Builder(strArr, null, null);
    }

    @KeepForSdk
    public static DataHolder empty(int i) {
        return new DataHolder(zalx, i, (Bundle) null);
    }

    private final void zaa(String str, int i) {
        if (this.zalq == null || !this.zalq.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else if (i < 0 || i >= this.zalv) {
            throw new CursorIndexOutOfBoundsException(i, this.zalv);
        }
    }

    private static CursorWindow[] zaa(Builder builder, int i) {
        if (builder.zalp.length == 0) {
            return new CursorWindow[0];
        }
        List subList = (i < 0 || i >= builder.zaly.size()) ? builder.zaly : builder.zaly.subList(0, i);
        int size = subList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cursorWindow);
        cursorWindow.setNumColumns(builder.zalp.length);
        int i2 = 0;
        boolean z = false;
        while (i2 < size) {
            cursorWindow = cursorWindow;
            try {
                if (!cursorWindow.allocRow()) {
                    StringBuilder sb = new StringBuilder(72);
                    sb.append("Allocating additional cursor window for large data set (row ");
                    sb.append(i2);
                    sb.append(")");
                    Log.d("DataHolder", sb.toString());
                    CursorWindow cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i2);
                    cursorWindow2.setNumColumns(builder.zalp.length);
                    arrayList.add(cursorWindow2);
                    cursorWindow = cursorWindow2;
                    if (!cursorWindow2.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList.remove(cursorWindow2);
                        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
                    }
                }
                Map map = (Map) subList.get(i2);
                boolean z2 = true;
                for (int i3 = 0; i3 < builder.zalp.length && z2; i3++) {
                    String str = builder.zalp[i3];
                    Object obj = map.get(str);
                    if (obj == null) {
                        z2 = cursorWindow.putNull(i2, i3);
                    } else if (obj instanceof String) {
                        z2 = cursorWindow.putString((String) obj, i2, i3);
                    } else if (obj instanceof Long) {
                        z2 = cursorWindow.putLong(((Long) obj).longValue(), i2, i3);
                    } else if (obj instanceof Integer) {
                        z2 = cursorWindow.putLong(((Integer) obj).intValue(), i2, i3);
                    } else if (obj instanceof Boolean) {
                        z2 = cursorWindow.putLong(((Boolean) obj).booleanValue() ? 1L : 0L, i2, i3);
                    } else if (obj instanceof byte[]) {
                        z2 = cursorWindow.putBlob((byte[]) obj, i2, i3);
                    } else if (obj instanceof Double) {
                        z2 = cursorWindow.putDouble(((Double) obj).doubleValue(), i2, i3);
                    } else if (obj instanceof Float) {
                        z2 = cursorWindow.putDouble(((Float) obj).floatValue(), i2, i3);
                    } else {
                        String valueOf = String.valueOf(obj);
                        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(valueOf).length());
                        sb2.append("Unsupported object for column ");
                        sb2.append(str);
                        sb2.append(": ");
                        sb2.append(valueOf);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                }
                if (z2) {
                    z = false;
                } else if (z) {
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
                    cursorWindow.setNumColumns(builder.zalp.length);
                    arrayList.add(cursorWindow);
                    i2--;
                    z = true;
                }
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
    @KeepForSdk
    public final void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (int i = 0; i < this.zalr.length; i++) {
                    this.zalr[i].close();
                }
            }
        }
    }

    protected final void finalize() throws Throwable {
        try {
            if (this.zalw && this.zalr.length > 0 && !isClosed()) {
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

    @KeepForSdk
    public final boolean getBoolean(String str, int i, int i2) {
        zaa(str, i);
        return Long.valueOf(this.zalr[i2].getLong(i, this.zalq.getInt(str))).longValue() == 1;
    }

    @KeepForSdk
    public final byte[] getByteArray(String str, int i, int i2) {
        zaa(str, i);
        return this.zalr[i2].getBlob(i, this.zalq.getInt(str));
    }

    @KeepForSdk
    public final int getCount() {
        return this.zalv;
    }

    @KeepForSdk
    public final int getInteger(String str, int i, int i2) {
        zaa(str, i);
        return this.zalr[i2].getInt(i, this.zalq.getInt(str));
    }

    @KeepForSdk
    public final long getLong(String str, int i, int i2) {
        zaa(str, i);
        return this.zalr[i2].getLong(i, this.zalq.getInt(str));
    }

    @KeepForSdk
    public final Bundle getMetadata() {
        return this.zalt;
    }

    @KeepForSdk
    public final int getStatusCode() {
        return this.zals;
    }

    @KeepForSdk
    public final String getString(String str, int i, int i2) {
        zaa(str, i);
        return this.zalr[i2].getString(i, this.zalq.getInt(str));
    }

    @KeepForSdk
    public final int getWindowIndex(int i) {
        int i2;
        int i3 = 0;
        Preconditions.checkState(i >= 0 && i < this.zalv);
        while (true) {
            i2 = i3;
            if (i3 >= this.zalu.length) {
                break;
            } else if (i < this.zalu[i3]) {
                i2 = i3 - 1;
                break;
            } else {
                i3++;
            }
        }
        int i4 = i2;
        if (i2 == this.zalu.length) {
            i4 = i2 - 1;
        }
        return i4;
    }

    @KeepForSdk
    public final boolean hasColumn(String str) {
        return this.zalq.containsKey(str);
    }

    @KeepForSdk
    public final boolean hasNull(String str, int i, int i2) {
        zaa(str, i);
        return this.zalr[i2].isNull(i, this.zalq.getInt(str));
    }

    @KeepForSdk
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
        SafeParcelWriter.writeStringArray(parcel, 1, this.zalp, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.zalr, i, false);
        SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
        SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.zale);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        if ((i & 1) != 0) {
            close();
        }
    }

    public final float zaa(String str, int i, int i2) {
        zaa(str, i);
        return this.zalr[i2].getFloat(i, this.zalq.getInt(str));
    }

    public final void zaa(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zaa(str, i);
        this.zalr[i2].copyStringToBuffer(i, this.zalq.getInt(str), charArrayBuffer);
    }

    public final double zab(String str, int i, int i2) {
        zaa(str, i);
        return this.zalr[i2].getDouble(i, this.zalq.getInt(str));
    }

    public final void zaca() {
        this.zalq = new Bundle();
        for (int i = 0; i < this.zalp.length; i++) {
            this.zalq.putInt(this.zalp[i], i);
        }
        this.zalu = new int[this.zalr.length];
        int i2 = 0;
        for (int i3 = 0; i3 < this.zalr.length; i3++) {
            this.zalu[i3] = i2;
            i2 += this.zalr[i3].getNumRows() - (i2 - this.zalr[i3].getStartPosition());
        }
        this.zalv = i2;
    }
}
