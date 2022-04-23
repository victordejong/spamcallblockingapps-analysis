package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhm.class */
public final class dhm extends dnh<dhm, a> implements dov {
    private static volatile dpc<dhm> zzek;
    private static final dhm zziio;
    private dhn zziin;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhm$a.class */
    public static final class a extends dnh.b<dhm, a> implements dov {
        private a() {
            super(dhm.zziio);
        }

        /* synthetic */ a(dhl dhlVar) {
            this();
        }
    }

    static {
        dhm dhmVar = new dhm();
        zziio = dhmVar;
        dnh.a(dhm.class, dhmVar);
    }

    private dhm() {
    }

    public static dhm a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhm) dnh.a(zziio, dlwVar, dmtVar);
    }

    public final dhn a() {
        dhn dhnVar = this.zziin;
        dhn dhnVar2 = dhnVar;
        if (dhnVar == null) {
            dhnVar2 = dhn.d();
        }
        return dhnVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dhl.f26836a[i - 1]) {
            case 1:
                return new dhm();
            case 2:
                return new a(null);
            case 3:
                return a(zziio, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"zziin"});
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
                                dpcVar2 = new dnh.a<>(zziio);
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
