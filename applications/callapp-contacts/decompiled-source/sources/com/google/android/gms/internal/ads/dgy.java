package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgy.class */
public final class dgy extends dnh<dgy, a> implements dov {
    private static volatile dpc<dgy> zzek;
    private static final dgy zziia;
    private int zzihc;
    int zzihg;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgy$a.class */
    public static final class a extends dnh.b<dgy, a> implements dov {
        private a() {
            super(dgy.zziia);
        }

        /* synthetic */ a(dgx dgxVar) {
            this();
        }
    }

    static {
        dgy dgyVar = new dgy();
        zziia = dgyVar;
        dnh.a(dgy.class, dgyVar);
    }

    private dgy() {
    }

    public static dgy a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgy) dnh.a(zziia, dlwVar, dmtVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgx.f26830a[i - 1]) {
            case 1:
                return new dgy();
            case 2:
                return new a(null);
            case 3:
                return a(zziia, "��\u0002����\u0002\u0003\u0002������\u0002\u000b\u0003\u000b", new Object[]{"zzihg", "zzihc"});
            case 4:
                return zziia;
            case 5:
                dpc<dgy> dpcVar = zzek;
                dpc<dgy> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgy.class) {
                        try {
                            dpc<dgy> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zziia);
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
