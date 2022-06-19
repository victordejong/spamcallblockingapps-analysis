package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgz.class */
public final class dgz extends dnh<dgz, C12343a> implements dov {
    private static volatile dpc<dgz> zzek;
    private static final dgz zziib;
    int zzihc;
    dlw zzihd = dlw.f47199a;

    /* renamed from: com.google.android.gms.internal.ads.dgz$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgz$a.class */
    public static final class C12343a extends dnh.C12383b<dgz, C12343a> implements dov {
        private C12343a() {
            super(dgz.zziib);
        }

        /* synthetic */ C12343a(dha dhaVar) {
            this();
        }

        /* renamed from: a */
        public final C12343a m16712a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dgz) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12343a m16711a(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dgz.m16715a((dgz) this.f47274a, dlwVar);
            return this;
        }
    }

    static {
        dgz dgzVar = new dgz();
        zziib = dgzVar;
        dnh.m16339a(dgz.class, dgzVar);
    }

    private dgz() {
    }

    /* renamed from: a */
    public static C12343a m16717a() {
        return zziib.m16335i();
    }

    /* renamed from: a */
    public static dgz m16714a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgz) dnh.m16349a(zziib, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16715a(dgz dgzVar, dlw dlwVar) {
        dlwVar.getClass();
        dgzVar.zzihd = dlwVar;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dha.f47072a[i - 1]) {
            case 1:
                return new dgz();
            case 2:
                return new C12343a(null);
            case 3:
                return m16341a(zziib, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzihc", "zzihd"});
            case 4:
                return zziib;
            case 5:
                dpc<dgz> dpcVar = zzek;
                dpc<dgz> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgz.class) {
                        try {
                            dpc<dgz> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zziib);
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
