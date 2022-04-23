package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgm.class */
public final class dgm extends dnh<dgm, a> implements dov {
    private static volatile dpc<dgm> zzek;
    private static final dgm zzihs;
    int zzihg;
    private dgn zzihq;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgm$a.class */
    public static final class a extends dnh.b<dgm, a> implements dov {
        private a() {
            super(dgm.zzihs);
        }

        /* synthetic */ a(dgl dglVar) {
            this();
        }
    }

    static {
        dgm dgmVar = new dgm();
        zzihs = dgmVar;
        dnh.a(dgm.class, dgmVar);
    }

    private dgm() {
    }

    public static dgm a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgm) dnh.a(zzihs, dlwVar, dmtVar);
    }

    public static dgm b() {
        return zzihs;
    }

    public final dgn a() {
        dgn dgnVar = this.zzihq;
        dgn dgnVar2 = dgnVar;
        if (dgnVar == null) {
            dgnVar2 = dgn.a();
        }
        return dgnVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgl.f26824a[i - 1]) {
            case 1:
                return new dgm();
            case 2:
                return new a(null);
            case 3:
                return a(zzihs, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzihq", "zzihg"});
            case 4:
                return zzihs;
            case 5:
                dpc<dgm> dpcVar = zzek;
                dpc<dgm> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgm.class) {
                        try {
                            dpc<dgm> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzihs);
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
