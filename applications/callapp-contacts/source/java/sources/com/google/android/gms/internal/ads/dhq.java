package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhq.class */
public final class dhq extends dnh<dhq, C12351a> implements dov {
    private static volatile dpc<dhq> zzek;
    private static final dhq zziiu;
    int zzihc;
    dlw zzihd = dlw.f47199a;
    private dhr zziit;

    /* renamed from: com.google.android.gms.internal.ads.dhq$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhq$a.class */
    public static final class C12351a extends dnh.C12383b<dhq, C12351a> implements dov {
        private C12351a() {
            super(dhq.zziiu);
        }

        /* synthetic */ C12351a(dhp dhpVar) {
            this();
        }

        /* renamed from: a */
        public final C12351a m16681a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dhq) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12351a m16680a(dhr dhrVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dhq.m16686a((dhq) this.f47274a, dhrVar);
            return this;
        }

        /* renamed from: a */
        public final C12351a m16679a(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dhq.m16685a((dhq) this.f47274a, dlwVar);
            return this;
        }
    }

    static {
        dhq dhqVar = new dhq();
        zziiu = dhqVar;
        dnh.m16339a(dhq.class, dhqVar);
    }

    private dhq() {
    }

    /* renamed from: a */
    public static dhq m16684a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhq) dnh.m16349a(zziiu, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16686a(dhq dhqVar, dhr dhrVar) {
        dhrVar.getClass();
        dhqVar.zziit = dhrVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m16685a(dhq dhqVar, dlw dlwVar) {
        dlwVar.getClass();
        dhqVar.zzihd = dlwVar;
    }

    /* renamed from: b */
    public static C12351a m16683b() {
        return zziiu.m16335i();
    }

    /* renamed from: a */
    public final dhr m16688a() {
        dhr dhrVar = this.zziit;
        dhr dhrVar2 = dhrVar;
        if (dhrVar == null) {
            dhrVar2 = dhr.m16671c();
        }
        return dhrVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dhp.f47079a[i - 1]) {
            case 1:
                return new dhq();
            case 2:
                return new C12351a(null);
            case 3:
                return m16341a(zziiu, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zziit", "zzihd"});
            case 4:
                return zziiu;
            case 5:
                dpc<dhq> dpcVar = zzek;
                dpc<dhq> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhq.class) {
                        try {
                            dpc<dhq> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zziiu);
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
