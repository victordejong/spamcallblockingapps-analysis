package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dge.class */
public final class dge extends dnh<dge, a> implements dov {
    private static volatile dpc<dge> zzek;
    private static final dge zzihj;
    int zzihi;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dge$a.class */
    public static final class a extends dnh.b<dge, a> implements dov {
        private a() {
            super(dge.zzihj);
        }

        /* synthetic */ a(dgc dgcVar) {
            this();
        }
    }

    static {
        dge dgeVar = new dge();
        zzihj = dgeVar;
        dnh.a(dge.class, dgeVar);
    }

    private dge() {
    }

    public static dge a() {
        return zzihj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgc.f26817a[i - 1]) {
            case 1:
                return new dge();
            case 2:
                return new a(null);
            case 3:
                return a(zzihj, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzihi"});
            case 4:
                return zzihj;
            case 5:
                dpc<dge> dpcVar = zzek;
                dpc<dge> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dge.class) {
                        try {
                            dpc<dge> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzihj);
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
