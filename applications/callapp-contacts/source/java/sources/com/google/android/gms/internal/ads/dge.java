package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dge.class */
public final class dge extends dnh<dge, C12332a> implements dov {
    private static volatile dpc<dge> zzek;
    private static final dge zzihj;
    int zzihi;

    /* renamed from: com.google.android.gms.internal.ads.dge$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dge$a.class */
    public static final class C12332a extends dnh.C12383b<dge, C12332a> implements dov {
        private C12332a() {
            super(dge.zzihj);
        }

        /* synthetic */ C12332a(dgc dgcVar) {
            this();
        }
    }

    static {
        dge dgeVar = new dge();
        zzihj = dgeVar;
        dnh.m16339a(dge.class, dgeVar);
    }

    private dge() {
    }

    /* renamed from: a */
    public static dge m16775a() {
        return zzihj;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dgc.f47058a[i - 1]) {
            case 1:
                return new dge();
            case 2:
                return new C12332a(null);
            case 3:
                return m16341a(zzihj, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzihi"});
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
                                dpcVar2 = new dnh.C12382a<>(zzihj);
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
