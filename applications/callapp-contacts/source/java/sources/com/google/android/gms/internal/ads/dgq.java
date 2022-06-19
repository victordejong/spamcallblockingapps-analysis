package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgq.class */
public final class dgq extends dnh<dgq, C12338a> implements dov {
    private static volatile dpc<dgq> zzek;
    private static final dgq zzihw;
    int zzihc;
    dlw zzihd = dlw.f47199a;
    private dgu zzihv;

    /* renamed from: com.google.android.gms.internal.ads.dgq$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgq$a.class */
    public static final class C12338a extends dnh.C12383b<dgq, C12338a> implements dov {
        private C12338a() {
            super(dgq.zzihw);
        }

        /* synthetic */ C12338a(dgp dgpVar) {
            this();
        }

        /* renamed from: a */
        public final C12338a m16734a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dgq) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12338a m16733a(dgu dguVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dgq.m16739a((dgq) this.f47274a, dguVar);
            return this;
        }

        /* renamed from: a */
        public final C12338a m16732a(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dgq.m16738a((dgq) this.f47274a, dlwVar);
            return this;
        }
    }

    static {
        dgq dgqVar = new dgq();
        zzihw = dgqVar;
        dnh.m16339a(dgq.class, dgqVar);
    }

    private dgq() {
    }

    /* renamed from: a */
    public static dgq m16737a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgq) dnh.m16349a(zzihw, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16739a(dgq dgqVar, dgu dguVar) {
        dguVar.getClass();
        dgqVar.zzihv = dguVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m16738a(dgq dgqVar, dlw dlwVar) {
        dlwVar.getClass();
        dgqVar.zzihd = dlwVar;
    }

    /* renamed from: b */
    public static C12338a m16736b() {
        return zzihw.m16335i();
    }

    /* renamed from: a */
    public final dgu m16741a() {
        dgu dguVar = this.zzihv;
        dgu dguVar2 = dguVar;
        if (dguVar == null) {
            dguVar2 = dgu.m16728a();
        }
        return dguVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dgp.f47067a[i - 1]) {
            case 1:
                return new dgq();
            case 2:
                return new C12338a(null);
            case 3:
                return m16341a(zzihw, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zzihv", "zzihd"});
            case 4:
                return zzihw;
            case 5:
                dpc<dgq> dpcVar = zzek;
                dpc<dgq> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgq.class) {
                        try {
                            dpc<dgq> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzihw);
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
}
