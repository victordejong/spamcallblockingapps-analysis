package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dga.class */
public final class dga extends dnh<dga, C12331a> implements dov {
    private static volatile dpc<dga> zzek;
    private static final dga zzihh;
    private dge zzihe;
    int zzihg;

    /* renamed from: com.google.android.gms.internal.ads.dga$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dga$a.class */
    public static final class C12331a extends dnh.C12383b<dga, C12331a> implements dov {
        private C12331a() {
            super(dga.zzihh);
        }

        /* synthetic */ C12331a(dgb dgbVar) {
            this();
        }
    }

    static {
        dga dgaVar = new dga();
        zzihh = dgaVar;
        dnh.m16339a(dga.class, dgaVar);
    }

    private dga() {
    }

    /* renamed from: a */
    public static dga m16777a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dga) dnh.m16349a(zzihh, dlwVar, dmtVar);
    }

    /* renamed from: a */
    public final dge m16778a() {
        dge dgeVar = this.zzihe;
        dge dgeVar2 = dgeVar;
        if (dgeVar == null) {
            dgeVar2 = dge.m16775a();
        }
        return dgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dgb.f47057a[i - 1]) {
            case 1:
                return new dga();
            case 2:
                return new C12331a(null);
            case 3:
                return m16341a(zzihh, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzihg", "zzihe"});
            case 4:
                return zzihh;
            case 5:
                dpc<dga> dpcVar = zzek;
                dpc<dga> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dga.class) {
                        try {
                            dpc<dga> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzihh);
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
