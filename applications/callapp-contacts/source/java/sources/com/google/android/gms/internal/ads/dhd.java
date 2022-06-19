package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhd.class */
public final class dhd extends dnh<dhd, C12346a> implements dov {
    private static volatile dpc<dhd> zzek;
    private static final dhd zziid;
    int zzihc;
    dlw zzihd = dlw.f47199a;

    /* renamed from: com.google.android.gms.internal.ads.dhd$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhd$a.class */
    public static final class C12346a extends dnh.C12383b<dhd, C12346a> implements dov {
        private C12346a() {
            super(dhd.zziid);
        }

        /* synthetic */ C12346a(dhe dheVar) {
            this();
        }

        /* renamed from: a */
        public final C12346a m16703a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dhd) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12346a m16702a(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dhd.m16706a((dhd) this.f47274a, dlwVar);
            return this;
        }
    }

    static {
        dhd dhdVar = new dhd();
        zziid = dhdVar;
        dnh.m16339a(dhd.class, dhdVar);
    }

    private dhd() {
    }

    /* renamed from: a */
    public static C12346a m16708a() {
        return zziid.m16335i();
    }

    /* renamed from: a */
    public static dhd m16705a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhd) dnh.m16349a(zziid, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16706a(dhd dhdVar, dlw dlwVar) {
        dlwVar.getClass();
        dhdVar.zzihd = dlwVar;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dhe.f47074a[i - 1]) {
            case 1:
                return new dhd();
            case 2:
                return new C12346a(null);
            case 3:
                return m16341a(zziid, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\n", new Object[]{"zzihc", "zzihd"});
            case 4:
                return zziid;
            case 5:
                dpc<dhd> dpcVar = zzek;
                dpc<dhd> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhd.class) {
                        try {
                            dpc<dhd> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zziid);
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
