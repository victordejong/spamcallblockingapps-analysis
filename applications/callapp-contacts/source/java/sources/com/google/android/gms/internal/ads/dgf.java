package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgf.class */
public final class dgf extends dnh<dgf, C12333a> implements dov {
    private static volatile dpc<dgf> zzek;
    private static final dgf zzihm;
    int zzihc;
    private dgj zzihk;
    private dhy zzihl;

    /* renamed from: com.google.android.gms.internal.ads.dgf$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgf$a.class */
    public static final class C12333a extends dnh.C12383b<dgf, C12333a> implements dov {
        private C12333a() {
            super(dgf.zzihm);
        }

        /* synthetic */ C12333a(dgg dggVar) {
            this();
        }

        /* renamed from: a */
        public final C12333a m16765a(int i) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dgf) this.f47274a).zzihc = i;
            return this;
        }

        /* renamed from: a */
        public final C12333a m16764a(dgj dgjVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dgf.m16771a((dgf) this.f47274a, dgjVar);
            return this;
        }

        /* renamed from: a */
        public final C12333a m16763a(dhy dhyVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dgf.m16770a((dgf) this.f47274a, dhyVar);
            return this;
        }
    }

    static {
        dgf dgfVar = new dgf();
        zzihm = dgfVar;
        dnh.m16339a(dgf.class, dgfVar);
    }

    private dgf() {
    }

    /* renamed from: a */
    public static dgf m16769a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgf) dnh.m16349a(zzihm, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16771a(dgf dgfVar, dgj dgjVar) {
        dgjVar.getClass();
        dgfVar.zzihk = dgjVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m16770a(dgf dgfVar, dhy dhyVar) {
        dhyVar.getClass();
        dgfVar.zzihl = dhyVar;
    }

    /* renamed from: c */
    public static C12333a m16767c() {
        return zzihm.m16335i();
    }

    /* renamed from: a */
    public final dgj m16773a() {
        dgj dgjVar = this.zzihk;
        dgj dgjVar2 = dgjVar;
        if (dgjVar == null) {
            dgjVar2 = dgj.m16752c();
        }
        return dgjVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dgg.f47062a[i - 1]) {
            case 1:
                return new dgf();
            case 2:
                return new C12333a(null);
            case 3:
                return m16341a(zzihm, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzihc", "zzihk", "zzihl"});
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
                                dpcVar2 = new dnh.C12382a<>(zzihm);
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

    /* renamed from: b */
    public final dhy m16768b() {
        dhy dhyVar = this.zzihl;
        dhy dhyVar2 = dhyVar;
        if (dhyVar == null) {
            dhyVar2 = dhy.m16655c();
        }
        return dhyVar2;
    }
}
