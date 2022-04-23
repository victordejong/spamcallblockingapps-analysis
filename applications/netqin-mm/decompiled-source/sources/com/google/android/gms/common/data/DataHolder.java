package com.google.android.gms.common.data;

import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import p131c.p161d.p170b.p224d.p238d.p241b.C3291a;
@KeepForSdk
@KeepName
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    @KeepForSdk
    public static final Parcelable.Creator<DataHolder> CREATOR = new zac();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23322a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String[] f23323b;

    /* renamed from: c */
    public Bundle f23324c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final CursorWindow[] f23325d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final int f23326e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final Bundle f23327f;

    /* renamed from: g */
    public int[] f23328g;

    /* renamed from: h */
    public int f23329h;

    /* renamed from: i */
    public boolean f23330i = false;

    /* renamed from: j */
    public boolean f23331j = true;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$Builder.class */
    public static class Builder {
        public Builder(String[] strArr, String str) {
            Preconditions.m17288a(strArr);
            new ArrayList();
            new HashMap();
        }

        public /* synthetic */ Builder(String[] strArr, String str, C3291a aVar) {
            this(strArr, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$zaa.class */
    public static final class zaa extends RuntimeException {
        public zaa(String str) {
            super(str);
        }
    }

    static {
        new C3291a(new String[0], null);
    }

    @SafeParcelable.Constructor
    public DataHolder(@SafeParcelable.Param(id = 1000) int i, @SafeParcelable.Param(id = 1) String[] strArr, @SafeParcelable.Param(id = 2) CursorWindow[] cursorWindowArr, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) Bundle bundle) {
        this.f23322a = i;
        this.f23323b = strArr;
        this.f23325d = cursorWindowArr;
        this.f23326e = i2;
        this.f23327f = bundle;
    }

    @KeepForSdk
    /* renamed from: a */
    public final int m17430a(int i) {
        int i2;
        int i3 = 0;
        Preconditions.m17280b(i >= 0 && i < this.f23329h);
        while (true) {
            int[] iArr = this.f23328g;
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
        if (i2 == this.f23328g.length) {
            i4 = i2 - 1;
        }
        return i4;
    }

    /* renamed from: a */
    public final void m17429a(String str, int i) {
        Bundle bundle = this.f23324c;
        if (bundle == null || !bundle.containsKey(str)) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "No such column: ".concat(valueOf) : new String("No such column: "));
        } else if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        } else if (i < 0 || i >= this.f23329h) {
            throw new CursorIndexOutOfBoundsException(i, this.f23329h);
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public final byte[] m17428a(String str, int i, int i2) {
        m17429a(str, i);
        return this.f23325d[i2].getBlob(i, this.f23324c.getInt(str));
    }

    @KeepForSdk
    /* renamed from: b */
    public final String m17427b(String str, int i, int i2) {
        m17429a(str, i);
        return this.f23325d[i2].getString(i, this.f23324c.getInt(str));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    @KeepForSdk
    public final void close() {
        synchronized (this) {
            try {
                if (!this.f23330i) {
                    this.f23330i = true;
                    for (int i = 0; i < this.f23325d.length; i++) {
                        this.f23325d[i].close();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @KeepForSdk
    /* renamed from: f */
    public final Bundle m17426f() {
        return this.f23327f;
    }

    public final void finalize() throws Throwable {
        try {
            if (this.f23331j && this.f23325d.length > 0 && !isClosed()) {
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
    public final int getCount() {
        return this.f23329h;
    }

    @KeepForSdk
    /* renamed from: i */
    public final int m17425i() {
        return this.f23326e;
    }

    @KeepForSdk
    public final boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.f23330i;
        }
        return z;
    }

    /* renamed from: u */
    public final void m17424u() {
        this.f23324c = new Bundle();
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = this.f23323b;
            if (i2 >= strArr.length) {
                break;
            }
            this.f23324c.putInt(strArr[i2], i2);
            i2++;
        }
        this.f23328g = new int[this.f23325d.length];
        int i3 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.f23325d;
            if (i < cursorWindowArr.length) {
                this.f23328g[i] = i3;
                i3 += this.f23325d[i].getNumRows() - (i3 - cursorWindowArr[i].getStartPosition());
                i++;
            } else {
                this.f23329h = i3;
                return;
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17214a(parcel, 1, this.f23323b, false);
        SafeParcelWriter.m17215a(parcel, 2, (Parcelable[]) this.f23325d, i, false);
        SafeParcelWriter.m17231a(parcel, 3, m17425i());
        SafeParcelWriter.m17229a(parcel, 4, m17426f(), false);
        SafeParcelWriter.m17231a(parcel, 1000, this.f23322a);
        SafeParcelWriter.m17234a(parcel, a);
        if ((i & 1) != 0) {
            close();
        }
    }
}
