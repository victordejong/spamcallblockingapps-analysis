package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djg.class */
public final class djg extends dnh<djg, C12374a> implements dov {
    private static volatile dpc<djg> zzek;
    private static final djg zzilw;
    int zzihc;
    dlw zzihd = dlw.f47199a;

    /* renamed from: com.google.android.gms.internal.ads.djg$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djg$a.class */
    public static final class C12374a extends dnh.C12383b<djg, C12374a> implements dov {
        private C12374a() {
            super(djg.zzilw);
        }

        /* synthetic */ C12374a(djf djfVar) {
            this();
        }

        /* renamed from: a */
        public final C12374a m16575a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((djg) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12374a m16574a(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            djg.m16578a((djg) this.f47274a, dlwVar);
            return this;
        }
    }

    static {
        djg djgVar = new djg();
        zzilw = djgVar;
        dnh.m16339a(djg.class, djgVar);
    }

    private djg() {
    }

    /* renamed from: a */
    public static C12374a m16580a() {
        return zzilw.m16335i();
    }

    /* renamed from: a */
    public static djg m16577a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (djg) dnh.m16349a(zzilw, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16578a(djg djgVar, dlw dlwVar) {
        dlwVar.getClass();
        djgVar.zzihd = dlwVar;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (djf.f47101a[i - 1]) {
            case 1:
                return new djg();
            case 2:
                return new C12374a(null);
            case 3:
                return m16341a(zzilw, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzihc", "zzihd"});
            case 4:
                return zzilw;
            case 5:
                dpc<djg> dpcVar = zzek;
                dpc<djg> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (djg.class) {
                        try {
                            dpc<djg> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzilw);
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
