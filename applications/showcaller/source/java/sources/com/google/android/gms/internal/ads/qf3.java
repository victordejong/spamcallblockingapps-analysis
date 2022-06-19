package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qf3.class */
final class qf3<T> implements cg3<T> {

    /* renamed from: a */
    private final mf3 f28460a;

    /* renamed from: b */
    private final rg3<?, ?> f28461b;

    /* renamed from: c */
    private final boolean f28462c;

    /* renamed from: d */
    private final wd3<?> f28463d;

    private qf3(rg3<?, ?> rg3Var, wd3<?> wd3Var, mf3 mf3Var) {
        this.f28461b = rg3Var;
        this.f28462c = wd3Var.mo9259a(mf3Var);
        this.f28463d = wd3Var;
        this.f28460a = mf3Var;
    }

    /* renamed from: j */
    public static <T> qf3<T> m11899j(rg3<?, ?> rg3Var, wd3<?> wd3Var, mf3 mf3Var) {
        return new qf3<>(rg3Var, wd3Var, mf3Var);
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: a */
    public final int mo11908a(T t) {
        rg3<?, ?> rg3Var = this.f28461b;
        int mo10694p = rg3Var.mo10694p(rg3Var.mo10699j(t));
        if (!this.f28462c) {
            return mo10694p;
        }
        this.f28463d.mo9258b(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: b */
    public final void mo11907b(T t, T t2) {
        fg3.m15220f(this.f28461b, t, t2);
        if (this.f28462c) {
            fg3.m15221e(this.f28463d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: c */
    public final int mo11906c(T t) {
        int hashCode = this.f28461b.mo10699j(t).hashCode();
        if (!this.f28462c) {
            return hashCode;
        }
        this.f28463d.mo9258b(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: d */
    public final void mo11905d(T t) {
        this.f28461b.mo10696m(t);
        this.f28463d.mo9256d(t);
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: e */
    public final boolean mo11904e(T t, T t2) {
        if (!this.f28461b.mo10699j(t).equals(this.f28461b.mo10699j(t2))) {
            return false;
        }
        if (!this.f28462c) {
            return true;
        }
        this.f28463d.mo9258b(t);
        this.f28463d.mo9258b(t2);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: f */
    public final boolean mo11903f(T t) {
        this.f28463d.mo9258b(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: g */
    public final void mo11902g(T t, xf3 xf3Var, vd3 vd3Var) {
        boolean mo9207e;
        rg3<?, ?> rg3Var = this.f28461b;
        wd3<?> wd3Var = this.f28463d;
        Object mo10698k = rg3Var.mo10698k(t);
        ae3<?> mo9257c = wd3Var.mo9257c(t);
        while (xf3Var.mo9210b() != Integer.MAX_VALUE) {
            try {
                int mo9209c = xf3Var.mo9209c();
                if (mo9209c != 11) {
                    if ((mo9209c & 7) == 2) {
                        Object mo9254f = wd3Var.mo9254f(vd3Var, this.f28460a, mo9209c >>> 3);
                        if (mo9254f != null) {
                            wd3Var.mo9253g(xf3Var, mo9254f, vd3Var, mo9257c);
                        } else {
                            mo9207e = rg3Var.m11469n(mo10698k, xf3Var);
                        }
                    } else {
                        mo9207e = xf3Var.mo9207e();
                    }
                    if (!mo9207e) {
                        return;
                    }
                } else {
                    int i = 0;
                    Object obj = null;
                    zzgex zzgexVar = null;
                    while (xf3Var.mo9210b() != Integer.MAX_VALUE) {
                        int mo9209c2 = xf3Var.mo9209c();
                        if (mo9209c2 == 16) {
                            i = xf3Var.mo9193s();
                            obj = wd3Var.mo9254f(vd3Var, this.f28460a, i);
                        } else if (mo9209c2 == 26) {
                            if (obj != null) {
                                wd3Var.mo9253g(xf3Var, obj, vd3Var, mo9257c);
                            } else {
                                zzgexVar = xf3Var.mo9201k();
                            }
                        } else if (!xf3Var.mo9207e()) {
                            break;
                        }
                    }
                    if (xf3Var.mo9209c() != 12) {
                        throw zzggm.zzh();
                    } else if (zzgexVar != null) {
                        if (obj != null) {
                            wd3Var.mo9252h(zzgexVar, obj, vd3Var, mo9257c);
                        } else {
                            rg3Var.mo10704e(mo10698k, i, zzgexVar);
                        }
                    }
                }
            } finally {
                rg3Var.mo10697l(t, mo10698k);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: h */
    public final void mo11901h(T t, byte[] bArr, int i, int i2, wc3 wc3Var) {
        ie3 ie3Var = (ie3) t;
        if (ie3Var.zzc == sg3.m11037a()) {
            ie3Var.zzc = sg3.m11036b();
        }
        fe3 fe3Var = (fe3) t;
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.cg3
    /* renamed from: i */
    public final void mo11900i(T t, rd3 rd3Var) {
        this.f28463d.mo9258b(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.cg3
    public final T zza() {
        return (T) this.f28460a.mo13202b().mo13566P();
    }
}
