package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rg3.class */
public abstract class rg3<T, B> {
    /* renamed from: a */
    public abstract boolean mo10708a(xf3 xf3Var);

    /* renamed from: b */
    public abstract void mo10707b(B b, int i, long j);

    /* renamed from: c */
    abstract void mo10706c(B b, int i, int i2);

    /* renamed from: d */
    abstract void mo10705d(B b, int i, long j);

    /* renamed from: e */
    public abstract void mo10704e(B b, int i, zzgex zzgexVar);

    /* renamed from: f */
    abstract void mo10703f(B b, int i, T t);

    /* renamed from: g */
    public abstract B mo10702g();

    /* renamed from: h */
    abstract T mo10701h(B b);

    /* renamed from: i */
    public abstract void mo10700i(Object obj, T t);

    /* renamed from: j */
    public abstract T mo10699j(Object obj);

    /* renamed from: k */
    public abstract B mo10698k(Object obj);

    /* renamed from: l */
    public abstract void mo10697l(Object obj, B b);

    /* renamed from: m */
    public abstract void mo10696m(Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    public final boolean m11469n(B b, xf3 xf3Var) {
        int mo9209c = xf3Var.mo9209c();
        int i = mo9209c >>> 3;
        int i2 = mo9209c & 7;
        if (i2 == 0) {
            mo10707b(b, i, xf3Var.mo9206f());
            return true;
        } else if (i2 == 1) {
            mo10705d(b, i, xf3Var.mo9205g());
            return true;
        } else if (i2 == 2) {
            mo10704e(b, i, xf3Var.mo9201k());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzggm.zzi();
            }
            mo10706c(b, i, xf3Var.mo9204h());
            return true;
        } else {
            Object mo10702g = mo10702g();
            while (xf3Var.mo9210b() != Integer.MAX_VALUE && m11469n(mo10702g, xf3Var)) {
            }
            if ((4 | (i << 3)) != xf3Var.mo9209c()) {
                throw zzggm.zzh();
            }
            mo10701h(mo10702g);
            mo10703f(b, i, mo10702g);
            return true;
        }
    }

    /* renamed from: o */
    public abstract T mo10695o(T t, T t2);

    /* renamed from: p */
    public abstract int mo10694p(T t);

    /* renamed from: q */
    public abstract int mo10693q(T t);

    /* renamed from: r */
    public abstract void mo10692r(T t, rd3 rd3Var);
}
