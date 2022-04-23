package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgr.class */
public final class dgr extends dnh<dgr, a> implements dov {
    private static volatile dpc<dgr> zzek;
    private static final dgr zzihx;
    int zzihg;
    private dgu zzihv;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgr$a.class */
    public static final class a extends dnh.b<dgr, a> implements dov {
        private a() {
            super(dgr.zzihx);
        }

        /* synthetic */ a(dgs dgsVar) {
            this();
        }
    }

    static {
        dgr dgrVar = new dgr();
        zzihx = dgrVar;
        dnh.a(dgr.class, dgrVar);
    }

    private dgr() {
    }

    public static dgr a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgr) dnh.a(zzihx, dlwVar, dmtVar);
    }

    public final dgu a() {
        dgu dguVar = this.zzihv;
        dgu dguVar2 = dguVar;
        if (dguVar == null) {
            dguVar2 = dgu.a();
        }
        return dguVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgs.f26827a[i - 1]) {
            case 1:
                return new dgr();
            case 2:
                return new a(null);
            case 3:
                return a(zzihx, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzihv", "zzihg"});
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
                                dpcVar2 = new dnh.a<>(zzihx);
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
