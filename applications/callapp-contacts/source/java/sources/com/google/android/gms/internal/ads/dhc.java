package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhc.class */
public final class dhc extends dnh<dhc, C12345a> implements dov {
    private static volatile dpc<dhc> zzek;
    private static final dhc zziic;
    private int zzihc;
    int zzihg;

    /* renamed from: com.google.android.gms.internal.ads.dhc$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhc$a.class */
    public static final class C12345a extends dnh.C12383b<dhc, C12345a> implements dov {
        private C12345a() {
            super(dhc.zziic);
        }

        /* synthetic */ C12345a(dhb dhbVar) {
            this();
        }
    }

    static {
        dhc dhcVar = new dhc();
        zziic = dhcVar;
        dnh.m16339a(dhc.class, dhcVar);
    }

    private dhc() {
    }

    /* renamed from: a */
    public static dhc m16709a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhc) dnh.m16349a(zziic, dlwVar, dmtVar);
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dhb.f47073a[i - 1]) {
            case 1:
                return new dhc();
            case 2:
                return new C12345a(null);
            case 3:
                return m16341a(zziic, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\u000b", new Object[]{"zzihc", "zzihg"});
            case 4:
                return zziic;
            case 5:
                dpc<dhc> dpcVar = zzek;
                dpc<dhc> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhc.class) {
                        try {
                            dpc<dhc> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zziic);
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
