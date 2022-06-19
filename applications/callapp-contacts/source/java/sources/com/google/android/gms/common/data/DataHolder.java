package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new C11955h();
    private static final C11947a zak = new C11954g(new String[0], null);
    final int zaa;
    Bundle zab;
    int[] zac;
    int zad;
    boolean zae;
    private final String[] zaf;
    private final CursorWindow[] zag;
    private final int zah;
    private final Bundle zai;
    private boolean zaj;

    /* renamed from: com.google.android.gms.common.data.DataHolder$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/DataHolder$a.class */
    public static class C11947a {

        /* renamed from: a */
        final String[] f39435a;

        /* renamed from: b */
        final ArrayList<HashMap<String, Object>> f39436b = new ArrayList<>();

        /* renamed from: c */
        private final HashMap<Object, Integer> f39437c = new HashMap<>();

        public /* synthetic */ C11947a(String[] strArr, String str, C11954g c11954g) {
            this.f39435a = (String[]) C12045o.m19162a(strArr);
        }
    }

    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.zae = false;
        this.zaj = true;
        this.zaa = i;
        this.zaf = strArr;
        this.zag = cursorWindowArr;
        this.zah = i2;
        this.zai = bundle;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DataHolder(android.database.Cursor r7, int r8, android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.data.DataHolder.<init>(android.database.Cursor, int, android.os.Bundle):void");
    }

    private DataHolder(C11947a c11947a, int i, Bundle bundle) {
        this(c11947a.f39435a, zae(c11947a, -1), i, (Bundle) null);
    }

    /* synthetic */ DataHolder(C11947a c11947a, int i, Bundle bundle, int i2, C11954g c11954g) {
        this(c11947a.f39435a, zae(c11947a, -1), i, bundle);
    }

    /* synthetic */ DataHolder(C11947a c11947a, int i, Bundle bundle, C11954g c11954g) {
        this(c11947a, i, (Bundle) null);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.zae = false;
        this.zaj = true;
        this.zaa = 1;
        this.zaf = (String[]) C12045o.m19162a(strArr);
        this.zag = (CursorWindow[]) C12045o.m19162a(cursorWindowArr);
        this.zah = i;
        this.zai = bundle;
        zaa();
    }

    public static C11947a builder(String[] strArr) {
        return new C11947a(strArr, null, null);
    }

    public static DataHolder empty(int i) {
        return new DataHolder(zak, i, (Bundle) null);
    }

    private static CursorWindow[] zae(C11947a c11947a, int i) {
        boolean z;
        if (c11947a.f39435a.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList<HashMap<String, Object>> arrayList = c11947a.f39436b;
        int size = arrayList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cursorWindow);
        cursorWindow.setNumColumns(c11947a.f39435a.length);
        int i2 = 0;
        boolean z2 = false;
        while (i2 < size) {
            CursorWindow cursorWindow2 = cursorWindow;
            try {
                if (!cursorWindow.allocRow()) {
                    StringBuilder sb = new StringBuilder(72);
                    sb.append("Allocating additional cursor window for large data set (row ");
                    sb.append(i2);
                    sb.append(")");
                    CursorWindow cursorWindow3 = new CursorWindow(false);
                    cursorWindow3.setStartPosition(i2);
                    cursorWindow3.setNumColumns(c11947a.f39435a.length);
                    arrayList2.add(cursorWindow3);
                    cursorWindow2 = cursorWindow3;
                    if (!cursorWindow3.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList2.remove(cursorWindow3);
                        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
                    }
                }
                HashMap<String, Object> hashMap = arrayList.get(i2);
                int i3 = 0;
                boolean z3 = true;
                while (true) {
                    if (i3 < c11947a.f39435a.length) {
                        if (!z3) {
                            break;
                        }
                        String str = c11947a.f39435a[i3];
                        Object obj = hashMap.get(str);
                        if (obj == null) {
                            z3 = cursorWindow2.putNull(i2, i3);
                        } else if (obj instanceof String) {
                            z3 = cursorWindow2.putString((String) obj, i2, i3);
                        } else if (obj instanceof Long) {
                            z3 = cursorWindow2.putLong(((Long) obj).longValue(), i2, i3);
                        } else if (obj instanceof Integer) {
                            z3 = cursorWindow2.putLong(((Integer) obj).intValue(), i2, i3);
                        } else if (obj instanceof Boolean) {
                            z3 = cursorWindow2.putLong((true != ((Boolean) obj).booleanValue() ? null : 1) == 1 ? 1L : 0L, i2, i3);
                        } else if (obj instanceof byte[]) {
                            z3 = cursorWindow2.putBlob((byte[]) obj, i2, i3);
                        } else if (obj instanceof Double) {
                            z3 = cursorWindow2.putDouble(((Double) obj).doubleValue(), i2, i3);
                        } else if (!(obj instanceof Float)) {
                            String valueOf = String.valueOf(obj);
                            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(valueOf).length());
                            sb2.append("Unsupported object for column ");
                            sb2.append(str);
                            sb2.append(": ");
                            sb2.append(valueOf);
                            throw new IllegalArgumentException(sb2.toString());
                        } else {
                            z3 = cursorWindow2.putDouble(((Float) obj).floatValue(), i2, i3);
                        }
                        i3++;
                    } else if (z3) {
                        z = false;
                    }
                }
                if (z2) {
                    throw new zac("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                }
                StringBuilder sb3 = new StringBuilder(74);
                sb3.append("Couldn't populate window data for row ");
                sb3.append(i2);
                sb3.append(" - allocating new window.");
                cursorWindow2.freeLastRow();
                cursorWindow2 = new CursorWindow(false);
                cursorWindow2.setStartPosition(i2);
                cursorWindow2.setNumColumns(c11947a.f39435a.length);
                arrayList2.add(cursorWindow2);
                i2--;
                z = true;
                z2 = z;
                i2++;
                cursorWindow = cursorWindow2;
            } catch (RuntimeException e) {
                int size2 = arrayList2.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    ((CursorWindow) arrayList2.get(i4)).close();
                }
                throw e;
            }
        }
        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
    }

    private final void zaf(String str, int i) {
        Bundle bundle = this.zab;
        if (bundle == null || !bundle.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else {
            if (i >= 0 && i < this.zad) {
                return;
            }
            throw new CursorIndexOutOfBoundsException(i, this.zad);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.zae) {
                this.zae = true;
                int i = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.zag;
                    if (i >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[i].close();
                    i++;
                }
            }
        }
    }

    protected final void finalize() throws Throwable {
        try {
            if (this.zaj && this.zag.length > 0 && !isClosed()) {
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
        zaf(str, i);
        return this.zag[i2].getLong(i, this.zab.getInt(str)) == 1;
    }

    public final byte[] getByteArray(String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getBlob(i, this.zab.getInt(str));
    }

    public final int getCount() {
        return this.zad;
    }

    public final int getInteger(String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getInt(i, this.zab.getInt(str));
    }

    public final long getLong(String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getLong(i, this.zab.getInt(str));
    }

    public final Bundle getMetadata() {
        return this.zai;
    }

    public final int getStatusCode() {
        return this.zah;
    }

    public final String getString(String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getString(i, this.zab.getInt(str));
    }

    public final int getWindowIndex(int i) {
        int length;
        int i2;
        int i3 = 0;
        C12045o.m19158a(i >= 0 && i < this.zad);
        while (true) {
            int[] iArr = this.zac;
            length = iArr.length;
            i2 = i3;
            if (i3 >= length) {
                break;
            } else if (i < iArr[i3]) {
                i2 = i3 - 1;
                break;
            } else {
                i3++;
            }
        }
        int i4 = i2;
        if (i2 == length) {
            i4 = i2 - 1;
        }
        return i4;
    }

    public final boolean hasColumn(String str) {
        return this.zab.containsKey(str);
    }

    public final boolean hasNull(String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].isNull(i, this.zab.getInt(str));
    }

    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.zae;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19097a(parcel, 1, this.zaf, false);
        C12050a.m19098a(parcel, 2, this.zag, i);
        C12050a.m19112a(parcel, 3, getStatusCode());
        C12050a.m19110a(parcel, 4, getMetadata(), false);
        C12050a.m19112a(parcel, 1000, this.zaa);
        C12050a.m19095b(parcel, m19116a);
        if ((i & 1) != 0) {
            close();
        }
    }

    public final void zaa() {
        this.zab = new Bundle();
        int i = 0;
        while (true) {
            String[] strArr = this.zaf;
            if (i >= strArr.length) {
                break;
            }
            this.zab.putInt(strArr[i], i);
            i++;
        }
        this.zac = new int[this.zag.length];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.zag;
            if (i3 >= cursorWindowArr.length) {
                this.zad = i2;
                return;
            }
            this.zac[i3] = i2;
            i2 += this.zag[i3].getNumRows() - (i2 - cursorWindowArr[i3].getStartPosition());
            i3++;
        }
    }

    public final float zab(String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getFloat(i, this.zab.getInt(str));
    }

    public final double zac(String str, int i, int i2) {
        zaf(str, i);
        return this.zag[i2].getDouble(i, this.zab.getInt(str));
    }

    public final void zad(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zaf(str, i);
        this.zag[i2].copyStringToBuffer(i, this.zab.getInt(str), charArrayBuffer);
    }
}
