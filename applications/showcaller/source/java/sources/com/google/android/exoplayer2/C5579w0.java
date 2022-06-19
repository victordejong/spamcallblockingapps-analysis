package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.C5508e;
/* renamed from: com.google.android.exoplayer2.w0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/w0.class */
public final class C5579w0 {

    /* renamed from: a */
    public static final C5579w0 f18114a;

    /* renamed from: b */
    public static final C5579w0 f18115b = new C5579w0(Long.MAX_VALUE, Long.MAX_VALUE);

    /* renamed from: c */
    public static final C5579w0 f18116c = new C5579w0(Long.MAX_VALUE, 0);

    /* renamed from: d */
    public static final C5579w0 f18117d = new C5579w0(0, Long.MAX_VALUE);

    /* renamed from: e */
    public static final C5579w0 f18118e;

    /* renamed from: f */
    public final long f18119f;

    /* renamed from: g */
    public final long f18120g;

    static {
        C5579w0 c5579w0 = new C5579w0(0L, 0L);
        f18114a = c5579w0;
        f18118e = c5579w0;
    }

    public C5579w0(long j, long j2) {
        C5508e.m18915a(j >= 0);
        C5508e.m18915a(j2 >= 0);
        this.f18119f = j;
        this.f18120g = j2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C5579w0.class != obj.getClass()) {
            return false;
        }
        C5579w0 c5579w0 = (C5579w0) obj;
        if (this.f18119f != c5579w0.f18119f || this.f18120g != c5579w0.f18120g) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f18119f) * 31) + ((int) this.f18120g);
    }
}
