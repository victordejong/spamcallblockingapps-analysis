package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgn.class */
public final class dgn extends dnh<dgn, C12337a> implements dov {
    private static volatile dpc<dgn> zzek;
    private static final dgn zzihu;
    int zziht;

    /* renamed from: com.google.android.gms.internal.ads.dgn$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgn$a.class */
    public static final class C12337a extends dnh.C12383b<dgn, C12337a> implements dov {
        private C12337a() {
            super(dgn.zzihu);
        }

        /* synthetic */ C12337a(dgo dgoVar) {
            this();
        }
    }

    static {
        dgn dgnVar = new dgn();
        zzihu = dgnVar;
        dnh.m16339a(dgn.class, dgnVar);
    }

    private dgn() {
    }

    /* renamed from: a */
    public static dgn m16743a() {
        return zzihu;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dgo.f47066a[i - 1]) {
            case 1:
                return new dgn();
            case 2:
                return new C12337a(null);
            case 3:
                return m16341a(zzihu, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zziht"});
            case 4:
                return zzihu;
            case 5:
                dpc<dgn> dpcVar = zzek;
                dpc<dgn> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgn.class) {
                        try {
                            dpc<dgn> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzihu);
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
