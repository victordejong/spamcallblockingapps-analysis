package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder.class */
public final class DataHolder extends AbstractC2663a implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new C2590b();

    /* renamed from: k */
    private static final C2588a f7249k = new C2589a(new String[0], null);

    /* renamed from: a */
    private final int f7250a;

    /* renamed from: b */
    private final String[] f7251b;

    /* renamed from: c */
    private Bundle f7252c;

    /* renamed from: d */
    private final CursorWindow[] f7253d;

    /* renamed from: e */
    private final int f7254e;

    /* renamed from: f */
    private final Bundle f7255f;

    /* renamed from: g */
    private int[] f7256g;

    /* renamed from: h */
    private int f7257h;

    /* renamed from: i */
    private boolean f7258i = false;

    /* renamed from: j */
    private boolean f7259j = true;

    /* renamed from: com.google.android.gms.common.data.DataHolder$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$a.class */
    public static class C2588a {

        /* renamed from: a */
        private final String[] f7260a;

        /* renamed from: b */
        private final ArrayList<HashMap<String, Object>> f7261b;

        /* renamed from: c */
        private final String f7262c;

        /* renamed from: d */
        private final HashMap<Object, Integer> f7263d;

        /* renamed from: e */
        private boolean f7264e;

        /* renamed from: f */
        private String f7265f;

        private C2588a(String[] strArr, String str) {
            this.f7260a = (String[]) C2662s.m13981a(strArr);
            this.f7261b = new ArrayList<>();
            this.f7262c = str;
            this.f7263d = new HashMap<>();
            this.f7264e = false;
            this.f7265f = null;
        }

        public /* synthetic */ C2588a(String[] strArr, String str, C2589a c2589a) {
            this(strArr, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/DataHolder$zaa.class */
    public static final class zaa extends RuntimeException {
    }

    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.f7250a = i;
        this.f7251b = strArr;
        this.f7253d = cursorWindowArr;
        this.f7254e = i2;
        this.f7255f = bundle;
    }

    /* renamed from: a */
    public final void m14189a() {
        this.f7252c = new Bundle();
        for (int i = 0; i < this.f7251b.length; i++) {
            this.f7252c.putInt(this.f7251b[i], i);
        }
        this.f7256g = new int[this.f7253d.length];
        int i2 = 0;
        for (int i3 = 0; i3 < this.f7253d.length; i3++) {
            this.f7256g[i3] = i2;
            i2 += this.f7253d[i3].getNumRows() - (i2 - this.f7253d[i3].getStartPosition());
        }
        this.f7257h = i2;
    }

    /* renamed from: b */
    public final int m14188b() {
        return this.f7254e;
    }

    /* renamed from: c */
    public final Bundle m14187c() {
        return this.f7255f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.f7258i) {
                this.f7258i = true;
                for (int i = 0; i < this.f7253d.length; i++) {
                    this.f7253d[i].close();
                }
            }
        }
    }

    /* renamed from: d */
    public final boolean m14186d() {
        boolean z;
        synchronized (this) {
            z = this.f7258i;
        }
        return z;
    }

    protected final void finalize() {
        try {
            if (this.f7259j && this.f7253d.length > 0 && !m14186d()) {
                close();
                String obj = toString();
                Log.e("DataBuffer", new StringBuilder(String.valueOf(obj).length() + 178).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ").append(obj).append(")").toString());
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13927a(parcel, 1, this.f7251b, false);
        C2664b.m13928a(parcel, 2, (Parcelable[]) this.f7253d, i, false);
        C2664b.m13941a(parcel, 3, m14188b());
        C2664b.m13939a(parcel, 4, m14187c(), false);
        C2664b.m13941a(parcel, 1000, this.f7250a);
        C2664b.m13943a(parcel, m13944a);
        if ((i & 1) != 0) {
            close();
        }
    }
}
