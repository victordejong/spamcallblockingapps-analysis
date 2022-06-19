package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgm.class */
public final class dgm extends dnh<dgm, C12336a> implements dov {
    private static volatile dpc<dgm> zzek;
    private static final dgm zzihs;
    int zzihg;
    private dgn zzihq;

    /* renamed from: com.google.android.gms.internal.ads.dgm$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgm$a.class */
    public static final class C12336a extends dnh.C12383b<dgm, C12336a> implements dov {
        private C12336a() {
            super(dgm.zzihs);
        }

        /* synthetic */ C12336a(dgl dglVar) {
            this();
        }
    }

    static {
        dgm dgmVar = new dgm();
        zzihs = dgmVar;
        dnh.m16339a(dgm.class, dgmVar);
    }

    private dgm() {
    }

    /* renamed from: a */
    public static dgm m16746a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgm) dnh.m16349a(zzihs, dlwVar, dmtVar);
    }

    /* renamed from: b */
    public static dgm m16745b() {
        return zzihs;
    }

    /* renamed from: a */
    public final dgn m16747a() {
        dgn dgnVar = this.zzihq;
        dgn dgnVar2 = dgnVar;
        if (dgnVar == null) {
            dgnVar2 = dgn.m16743a();
        }
        return dgnVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dgl.f47065a[i - 1]) {
            case 1:
                return new dgm();
            case 2:
                return new C12336a(null);
            case 3:
                return m16341a(zzihs, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzihq", "zzihg"});
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
                                dpcVar2 = new dnh.C12382a<>(zzihs);
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
