package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ue2.class */
abstract class ue2<T, B> {
    ue2() {
    }

    /* renamed from: a */
    abstract boolean m5398a(be2 be2Var);

    /* renamed from: b */
    public abstract void m5397b(B b, int i, long j);

    /* renamed from: c */
    abstract void m5396c(B b, int i, int i2);

    /* renamed from: d */
    abstract void m5395d(B b, int i, long j);

    /* renamed from: e */
    abstract void m5394e(B b, int i, zzesf zzesfVar);

    /* renamed from: f */
    abstract void m5393f(B b, int i, T t);

    /* renamed from: g */
    public abstract B m5392g();

    /* renamed from: h */
    abstract T m5391h(B b);

    /* renamed from: i */
    public abstract void m5390i(Object obj, T t);

    /* renamed from: j */
    public abstract T m5389j(Object obj);

    /* renamed from: k */
    abstract B m5388k(Object obj);

    /* renamed from: l */
    abstract void m5387l(Object obj, B b);

    /* renamed from: m */
    abstract void m5386m(Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    final boolean m5385n(B b, be2 be2Var) {
        int m8019c = be2Var.m8019c();
        int i = m8019c >>> 3;
        int i2 = m8019c & 7;
        if (i2 == 0) {
            m5397b(b, i, be2Var.m8017e());
            return true;
        } else if (i2 == 1) {
            m5395d(b, i, be2Var.m8014h());
            return true;
        } else if (i2 == 2) {
            m5394e(b, i, be2Var.m8010l());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzett.zzg();
            }
            m5396c(b, i, be2Var.m8012j());
            return true;
        } else {
            Object m5392g = m5392g();
            while (be2Var.m8020b() != Integer.MAX_VALUE && m5385n(m5392g, be2Var)) {
            }
            if ((4 | (i << 3)) != be2Var.m8019c()) {
                throw zzett.zzf();
            }
            m5391h(m5392g);
            m5393f(b, i, m5392g);
            return true;
        }
    }

    /* renamed from: o */
    public abstract T m5384o(T t, T t2);

    /* renamed from: p */
    abstract int m5383p(T t);

    /* renamed from: q */
    abstract int m5382q(T t);

    /* renamed from: r */
    abstract void m5381r(T t, xb2 xb2Var);
}
