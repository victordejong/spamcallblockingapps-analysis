package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgi.class */
public final class dgi extends dnh<dgi, C12334a> implements dov {
    private static volatile dpc<dgi> zzek;
    private static final dgi zzihp;
    private dgm zzihn;
    private dic zziho;

    /* renamed from: com.google.android.gms.internal.ads.dgi$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgi$a.class */
    public static final class C12334a extends dnh.C12383b<dgi, C12334a> implements dov {
        private C12334a() {
            super(dgi.zzihp);
        }

        /* synthetic */ C12334a(dgh dghVar) {
            this();
        }
    }

    static {
        dgi dgiVar = new dgi();
        zzihp = dgiVar;
        dnh.m16339a(dgi.class, dgiVar);
    }

    private dgi() {
    }

    /* renamed from: a */
    public static dgi m16761a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgi) dnh.m16349a(zzihp, dlwVar, dmtVar);
    }

    /* renamed from: a */
    public final dgm m16762a() {
        dgm dgmVar = this.zzihn;
        dgm dgmVar2 = dgmVar;
        if (dgmVar == null) {
            dgmVar2 = dgm.m16745b();
        }
        return dgmVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dgh.f47063a[i - 1]) {
            case 1:
                return new dgi();
            case 2:
                return new C12334a(null);
            case 3:
                return m16341a(zzihp, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"zzihn", "zziho"});
            case 4:
                return zzihp;
            case 5:
                dpc<dgi> dpcVar = zzek;
                dpc<dgi> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgi.class) {
                        try {
                            dpc<dgi> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzihp);
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

    /* renamed from: b */
    public final dic m16760b() {
        dic dicVar = this.zziho;
        dic dicVar2 = dicVar;
        if (dicVar == null) {
            dicVar2 = dic.m16648b();
        }
        return dicVar2;
    }
}
