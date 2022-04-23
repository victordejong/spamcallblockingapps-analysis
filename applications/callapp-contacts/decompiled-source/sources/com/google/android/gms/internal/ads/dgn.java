package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgn.class */
public final class dgn extends dnh<dgn, a> implements dov {
    private static volatile dpc<dgn> zzek;
    private static final dgn zzihu;
    int zziht;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgn$a.class */
    public static final class a extends dnh.b<dgn, a> implements dov {
        private a() {
            super(dgn.zzihu);
        }

        /* synthetic */ a(dgo dgoVar) {
            this();
        }
    }

    static {
        dgn dgnVar = new dgn();
        zzihu = dgnVar;
        dnh.a(dgn.class, dgnVar);
    }

    private dgn() {
    }

    public static dgn a() {
        return zzihu;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgo.f26825a[i - 1]) {
            case 1:
                return new dgn();
            case 2:
                return new a(null);
            case 3:
                return a(zzihu, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zziht"});
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
                                dpcVar2 = new dnh.a<>(zzihu);
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
