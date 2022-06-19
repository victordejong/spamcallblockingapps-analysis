package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.m7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m7.class */
public final class C6728m7 {

    /* renamed from: a */
    public static final AbstractC7093w2<C6728m7> f26450a = C6691l7.f25960a;

    /* renamed from: b */
    public Object f26451b;

    /* renamed from: c */
    public Object f26452c;

    /* renamed from: d */
    public int f26453d;

    /* renamed from: e */
    public long f26454e;

    /* renamed from: f */
    public long f26455f;

    /* renamed from: g */
    public boolean f26456g;

    /* renamed from: h */
    private t11 f26457h = t11.f29774a;

    /* renamed from: a */
    public final C6728m7 m13354a(Object obj, Object obj2, int i, long j, long j2, t11 t11Var, boolean z) {
        this.f26451b = obj;
        this.f26452c = obj2;
        this.f26453d = 0;
        this.f26454e = j;
        this.f26455f = 0L;
        this.f26457h = t11Var;
        this.f26456g = z;
        return this;
    }

    /* renamed from: b */
    public final long m13353b(int i) {
        long j = this.f26457h.m10861a(i).f30561b;
        return 0L;
    }

    /* renamed from: c */
    public final int m13352c(int i) {
        return this.f26457h.m10861a(i).m10357a(-1);
    }

    /* renamed from: d */
    public final int m13351d(int i, int i2) {
        return this.f26457h.m10861a(i).m10357a(i2);
    }

    /* renamed from: e */
    public final int m13350e(long j) {
        return -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !C6728m7.class.equals(obj.getClass())) {
            return false;
        }
        C6728m7 c6728m7 = (C6728m7) obj;
        return C7101wa.m9720H(this.f26451b, c6728m7.f26451b) && C7101wa.m9720H(this.f26452c, c6728m7.f26452c) && this.f26453d == c6728m7.f26453d && this.f26454e == c6728m7.f26454e && this.f26456g == c6728m7.f26456g && C7101wa.m9720H(this.f26457h, c6728m7.f26457h);
    }

    /* renamed from: f */
    public final int m13349f(long j) {
        long j2 = this.f26454e;
        if (j == Long.MIN_VALUE || j2 != -9223372036854775807L) {
        }
        return -1;
    }

    /* renamed from: g */
    public final int m13348g(int i) {
        return this.f26457h.m10861a(i).f30562c;
    }

    /* renamed from: h */
    public final long m13347h(int i, int i2) {
        ub0 m10861a = this.f26457h.m10861a(i);
        if (m10861a.f30562c != -1) {
            return m10861a.f30565f[i2];
        }
        return -9223372036854775807L;
    }

    public final int hashCode() {
        Object obj = this.f26451b;
        int i = 0;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f26452c;
        if (obj2 != null) {
            i = obj2.hashCode();
        }
        int i2 = this.f26453d;
        long j = this.f26454e;
        return ((((((((((hashCode + 217) * 31) + i) * 31) + i2) * 31) + ((int) ((j >>> 32) ^ j))) * 961) + (this.f26456g ? 1 : 0)) * 31) + this.f26457h.hashCode();
    }

    /* renamed from: i */
    public final long m13346i() {
        long j = this.f26457h.f29777d;
        return 0L;
    }

    /* renamed from: j */
    public final boolean m13345j(int i) {
        boolean z = this.f26457h.m10861a(i).f30567h;
        return false;
    }

    /* renamed from: k */
    public final long m13344k(int i) {
        long j = this.f26457h.m10861a(i).f30566g;
        return 0L;
    }
}
