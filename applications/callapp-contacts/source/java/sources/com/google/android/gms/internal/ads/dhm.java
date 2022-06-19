package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhm.class */
public final class dhm extends dnh<dhm, C12349a> implements dov {
    private static volatile dpc<dhm> zzek;
    private static final dhm zziio;
    private dhn zziin;

    /* renamed from: com.google.android.gms.internal.ads.dhm$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhm$a.class */
    public static final class C12349a extends dnh.C12383b<dhm, C12349a> implements dov {
        private C12349a() {
            super(dhm.zziio);
        }

        /* synthetic */ C12349a(dhl dhlVar) {
            this();
        }
    }

    static {
        dhm dhmVar = new dhm();
        zziio = dhmVar;
        dnh.m16339a(dhm.class, dhmVar);
    }

    private dhm() {
    }

    /* renamed from: a */
    public static dhm m16695a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhm) dnh.m16349a(zziio, dlwVar, dmtVar);
    }

    /* renamed from: a */
    public final dhn m16696a() {
        dhn dhnVar = this.zziin;
        dhn dhnVar2 = dhnVar;
        if (dhnVar == null) {
            dhnVar2 = dhn.m16690d();
        }
        return dhnVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dhl.f47077a[i - 1]) {
            case 1:
                return new dhm();
            case 2:
                return new C12349a(null);
            case 3:
                return m16341a(zziio, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"zziin"});
            case 4:
                return zziio;
            case 5:
                dpc<dhm> dpcVar = zzek;
                dpc<dhm> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhm.class) {
                        try {
                            dpc<dhm> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zziio);
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
