package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhc.class */
public final class dhc extends dnh<dhc, a> implements dov {
    private static volatile dpc<dhc> zzek;
    private static final dhc zziic;
    private int zzihc;
    int zzihg;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhc$a.class */
    public static final class a extends dnh.b<dhc, a> implements dov {
        private a() {
            super(dhc.zziic);
        }

        /* synthetic */ a(dhb dhbVar) {
            this();
        }
    }

    static {
        dhc dhcVar = new dhc();
        zziic = dhcVar;
        dnh.a(dhc.class, dhcVar);
    }

    private dhc() {
    }

    public static dhc a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhc) dnh.a(zziic, dlwVar, dmtVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dhb.f26832a[i - 1]) {
            case 1:
                return new dhc();
            case 2:
                return new a(null);
            case 3:
                return a(zziic, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\u000b", new Object[]{"zzihc", "zzihg"});
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
                                dpcVar2 = new dnh.a<>(zziic);
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
