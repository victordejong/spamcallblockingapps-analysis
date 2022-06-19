package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhg.class */
public final class dhg extends dnh<dhg, C12347a> implements dov {
    private static volatile dpc<dhg> zzek;
    private static final dhg zziie;

    /* renamed from: com.google.android.gms.internal.ads.dhg$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhg$a.class */
    public static final class C12347a extends dnh.C12383b<dhg, C12347a> implements dov {
        private C12347a() {
            super(dhg.zziie);
        }

        /* synthetic */ C12347a(dhf dhfVar) {
            this();
        }
    }

    static {
        dhg dhgVar = new dhg();
        zziie = dhgVar;
        dnh.m16339a(dhg.class, dhgVar);
    }

    private dhg() {
    }

    /* renamed from: a */
    public static dhg m16700a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhg) dnh.m16349a(zziie, dlwVar, dmtVar);
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dhf.f47075a[i - 1]) {
            case 1:
                return new dhg();
            case 2:
                return new C12347a(null);
            case 3:
                return m16341a(zziie, "����", (Object[]) null);
            case 4:
                return zziie;
            case 5:
                dpc<dhg> dpcVar = zzek;
                dpc<dhg> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhg.class) {
                        try {
                            dpc<dhg> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zziie);
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
