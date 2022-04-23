package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgf.class */
public final class dgf extends dnh<dgf, a> implements dov {
    private static volatile dpc<dgf> zzek;
    private static final dgf zzihm;
    int zzihc;
    private dgj zzihk;
    private dhy zzihl;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgf$a.class */
    public static final class a extends dnh.b<dgf, a> implements dov {
        private a() {
            super(dgf.zzihm);
        }

        /* synthetic */ a(dgg dggVar) {
            this();
        }

        public final a a(int i) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dgf) this.f26993a).zzihc = i;
            return this;
        }

        public final a a(dgj dgjVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dgf.a((dgf) this.f26993a, dgjVar);
            return this;
        }

        public final a a(dhy dhyVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dgf.a((dgf) this.f26993a, dhyVar);
            return this;
        }
    }

    static {
        dgf dgfVar = new dgf();
        zzihm = dgfVar;
        dnh.a(dgf.class, dgfVar);
    }

    private dgf() {
    }

    public static dgf a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgf) dnh.a(zzihm, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dgf dgfVar, dgj dgjVar) {
        dgjVar.getClass();
        dgfVar.zzihk = dgjVar;
    }

    static /* synthetic */ void a(dgf dgfVar, dhy dhyVar) {
        dhyVar.getClass();
        dgfVar.zzihl = dhyVar;
    }

    public static a c() {
        return zzihm.i();
    }

    public final dgj a() {
        dgj dgjVar = this.zzihk;
        dgj dgjVar2 = dgjVar;
        if (dgjVar == null) {
            dgjVar2 = dgj.c();
        }
        return dgjVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgg.f26821a[i - 1]) {
            case 1:
                return new dgf();
            case 2:
                return new a(null);
            case 3:
                return a(zzihm, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzihc", "zzihk", "zzihl"});
            case 4:
                return zzihm;
            case 5:
                dpc<dgf> dpcVar = zzek;
                dpc<dgf> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgf.class) {
                        try {
                            dpc<dgf> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzihm);
                                zzek = dpcVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return dpcVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final dhy b() {
        dhy dhyVar = this.zzihl;
        dhy dhyVar2 = dhyVar;
        if (dhyVar == null) {
            dhyVar2 = dhy.c();
        }
        return dhyVar2;
    }
}
