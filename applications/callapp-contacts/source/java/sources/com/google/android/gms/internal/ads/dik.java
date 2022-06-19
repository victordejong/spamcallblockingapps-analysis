package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dik.class */
public final class dik extends dnh<dik, C12360a> implements dov {
    private static volatile dpc<dik> zzek;
    private static final dik zzikn;
    String zzijv = "";
    dlw zzijw = dlw.f47199a;
    private int zzikm;

    /* renamed from: com.google.android.gms.internal.ads.dik$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dik$a.class */
    public static final class C12360a extends dnh.C12383b<dik, C12360a> implements dov {
        private C12360a() {
            super(dik.zzikn);
        }

        /* synthetic */ C12360a(dim dimVar) {
            this();
        }
    }

    static {
        dik dikVar = new dik();
        zzikn = dikVar;
        dnh.m16339a(dik.class, dikVar);
    }

    private dik() {
    }

    /* renamed from: a */
    public static dik m16628a() {
        return zzikn;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dim.f47092a[i - 1]) {
            case 1:
                return new dik();
            case 2:
                return new C12360a(null);
            case 3:
                return m16341a(zzikn, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzijv", "zzijw", "zzikm"});
            case 4:
                return zzikn;
            case 5:
                dpc<dik> dpcVar = zzek;
                dpc<dik> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dik.class) {
                        try {
                            dpc<dik> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzikn);
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
