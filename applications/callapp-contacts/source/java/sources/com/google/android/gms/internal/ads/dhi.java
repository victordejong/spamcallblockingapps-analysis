package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhi.class */
public final class dhi extends dnh<dhi, C12348a> implements dov {
    private static volatile dpc<dhi> zzek;
    private static final dhi zziim;
    private dik zziil;

    /* renamed from: com.google.android.gms.internal.ads.dhi$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhi$a.class */
    public static final class C12348a extends dnh.C12383b<dhi, C12348a> implements dov {
        private C12348a() {
            super(dhi.zziim);
        }

        /* synthetic */ C12348a(dhk dhkVar) {
            this();
        }
    }

    static {
        dhi dhiVar = new dhi();
        zziim = dhiVar;
        dnh.m16339a(dhi.class, dhiVar);
    }

    private dhi() {
    }

    /* renamed from: b */
    public static dhi m16698b() {
        return zziim;
    }

    /* renamed from: a */
    public final dik m16699a() {
        dik dikVar = this.zziil;
        dik dikVar2 = dikVar;
        if (dikVar == null) {
            dikVar2 = dik.m16628a();
        }
        return dikVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dhk.f47076a[i - 1]) {
            case 1:
                return new dhi();
            case 2:
                return new C12348a(null);
            case 3:
                return m16341a(zziim, "��\u0001����\u0002\u0002\u0001������\u0002\t", new Object[]{"zziil"});
            case 4:
                return zziim;
            case 5:
                dpc<dhi> dpcVar = zzek;
                dpc<dhi> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhi.class) {
                        try {
                            dpc<dhi> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zziim);
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
