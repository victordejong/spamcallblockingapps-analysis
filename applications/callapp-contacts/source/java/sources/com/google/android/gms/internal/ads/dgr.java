package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgr.class */
public final class dgr extends dnh<dgr, C12339a> implements dov {
    private static volatile dpc<dgr> zzek;
    private static final dgr zzihx;
    int zzihg;
    private dgu zzihv;

    /* renamed from: com.google.android.gms.internal.ads.dgr$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgr$a.class */
    public static final class C12339a extends dnh.C12383b<dgr, C12339a> implements dov {
        private C12339a() {
            super(dgr.zzihx);
        }

        /* synthetic */ C12339a(dgs dgsVar) {
            this();
        }
    }

    static {
        dgr dgrVar = new dgr();
        zzihx = dgrVar;
        dnh.m16339a(dgr.class, dgrVar);
    }

    private dgr() {
    }

    /* renamed from: a */
    public static dgr m16730a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgr) dnh.m16349a(zzihx, dlwVar, dmtVar);
    }

    /* renamed from: a */
    public final dgu m16731a() {
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
        switch (dgs.f47068a[i - 1]) {
            case 1:
                return new dgr();
            case 2:
                return new C12339a(null);
            case 3:
                return m16341a(zzihx, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzihv", "zzihg"});
            case 4:
                return zzihx;
            case 5:
                dpc<dgr> dpcVar = zzek;
                dpc<dgr> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgr.class) {
                        try {
                            dpc<dgr> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzihx);
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
