package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhg.class */
public final class dhg extends dnh<dhg, a> implements dov {
    private static volatile dpc<dhg> zzek;
    private static final dhg zziie;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhg$a.class */
    public static final class a extends dnh.b<dhg, a> implements dov {
        private a() {
            super(dhg.zziie);
        }

        /* synthetic */ a(dhf dhfVar) {
            this();
        }
    }

    static {
        dhg dhgVar = new dhg();
        zziie = dhgVar;
        dnh.a(dhg.class, dhgVar);
    }

    private dhg() {
    }

    public static dhg a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhg) dnh.a(zziie, dlwVar, dmtVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dhf.f26834a[i - 1]) {
            case 1:
                return new dhg();
            case 2:
                return new a(null);
            case 3:
                return a(zziie, "����", (Object[]) null);
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
                                dpcVar2 = new dnh.a<>(zziie);
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
