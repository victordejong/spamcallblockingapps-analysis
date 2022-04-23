package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new h();
    private static final a zak = new g(new String[0], null);
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/data/DataHolder$a.class */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final String[] f22796a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayList<HashMap<String, Object>> f22797b = new ArrayList<>();

        /* renamed from: c  reason: collision with root package name */
        private final HashMap<Object, Integer> f22798c = new HashMap<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ a(String[] strArr, String str, g gVar) {
            this.f22796a = (String[]) o.a(strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    private DataHolder(a aVar, int i, Bundle bundle) {
        this(aVar.f22796a, zae(aVar, -1), i, (Bundle) null);
    }

    /* synthetic */ DataHolder(a aVar, int i, Bundle bundle, int i2, g gVar) {
        this(aVar.f22796a, zae(aVar, -1), i, bundle);
    }

    /* synthetic */ DataHolder(a aVar, int i, Bundle bundle, g gVar) {
        this(aVar, i, (Bundle) null);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.zae = false;
        this.zaj = true;
        this.zaa = 1;
        this.zaf = (String[]) o.a(strArr);
        this.zag = (CursorWindow[]) o.a(cursorWindowArr);
        this.zah = i;
        this.zai = bundle;
        zaa();
    }

    public static a builder(String[] strArr) {
        return new a(strArr, null, null);
    }

    public static DataHolder empty(int i) {
        return new DataHolder(zak, i, (Bundle) null);
    }

    private static CursorWindow[] zae(a aVar, int i) {
        if (aVar.f22796a.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList<HashMap<String, Object>> arrayList = aVar.f22797b;
        int size = arrayList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(cursorWindow);
        cursorWindow.setNumColumns(aVar.f22796a.length);
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
                    CursorWindow cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i2);
                    cursorWindow2.setNumColumns(aVar.f22796a.length);
                    arrayList2.add(cursorWindow2);
                    cursorWindow = cursorWindow2;
                    if (!cursorWindow2.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList2.remove(cursorWindow2);
                        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
                    }
                }
                HashMap<String, Object> hashMap = arrayList.get(i2);
                int i3 = 0;
                boolean z2 = true;
                while (true) {
                    if (i3 < aVar.f22796a.length) {
                        if (!z2) {
                            break;
                        }
                        String str = aVar.f22796a[i3];
                        Object obj = hashMap.get(str);
                        if (obj == null) {
                            z2 = cursorWindow.putNull(i2, i3);
                        } else if (obj instanceof String) {
                            z2 = cursorWindow.putString((String) obj, i2, i3);
                        } else if (obj instanceof Long) {
                            z2 = cursorWindow.putLong(((Long) obj).longValue(), i2, i3);
                        } else if (obj instanceof Integer) {
                            z2 = cursorWindow.putLong(((Integer) obj).intValue(), i2, i3);
                        } else if (obj instanceof Boolean) {
                            z2 = cursorWindow.putLong(true != ((Boolean) obj).booleanValue() ? 0L : 1L, i2, i3);
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
                        i3++;
                    } else if (z2) {
                        z = false;
                    }
                }
                if (!z) {
                    StringBuilder sb3 = new StringBuilder(74);
                    sb3.append("Couldn't populate window data for row ");
                    sb3.append(i2);
                    sb3.append(" - allocating new window.");
                    cursorWindow.freeLastRow();
                    cursorWindow = new CursorWindow(false);
                    cursorWindow.setStartPosition(i2);
                    cursorWindow.setNumColumns(aVar.f22796a.length);
                    arrayList2.add(cursorWindow);
                    i2--;
                    z = true;
                    i2++;
                } else {
                    throw new zac("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                }
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
        } else if (i < 0 || i >= this.zad) {
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
        o.a(i >= 0 && i < this.zad);
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
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, this.zaf, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, this.zag, i);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, getStatusCode());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, getMetadata(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1000, this.zaa);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2);
        if ((i & 1) != 0) {
            close();
        }
    }

    public final void zaa() {
        this.zab = new Bundle();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = this.zaf;
            if (i2 >= strArr.length) {
                break;
            }
            this.zab.putInt(strArr[i2], i2);
            i2++;
        }
        this.zac = new int[this.zag.length];
        int i3 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.zag;
            if (i < cursorWindowArr.length) {
                this.zac[i] = i3;
                i3 += this.zag[i].getNumRows() - (i3 - cursorWindowArr[i].getStartPosition());
                i++;
            } else {
                this.zad = i3;
                return;
            }
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
