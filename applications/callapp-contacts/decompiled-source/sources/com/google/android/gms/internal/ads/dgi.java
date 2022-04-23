package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgi.class */
public final class dgi extends dnh<dgi, a> implements dov {
    private static volatile dpc<dgi> zzek;
    private static final dgi zzihp;
    private dgm zzihn;
    private dic zziho;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgi$a.class */
    public static final class a extends dnh.b<dgi, a> implements dov {
        private a() {
            super(dgi.zzihp);
        }

        /* synthetic */ a(dgh dghVar) {
            this();
        }
    }

    static {
        dgi dgiVar = new dgi();
        zzihp = dgiVar;
        dnh.a(dgi.class, dgiVar);
    }

    private dgi() {
    }

    public static dgi a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgi) dnh.a(zzihp, dlwVar, dmtVar);
    }

    public final dgm a() {
        dgm dgmVar = this.zzihn;
        dgm dgmVar2 = dgmVar;
        if (dgmVar == null) {
            dgmVar2 = dgm.b();
        }
        return dgmVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgh.f26822a[i - 1]) {
            case 1:
                return new dgi();
            case 2:
                return new a(null);
            case 3:
                return a(zzihp, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"zzihn", "zziho"});
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
                                dpcVar2 = new dnh.a<>(zzihp);
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

    public final dic b() {
        dic dicVar = this.zziho;
        dic dicVar2 = dicVar;
        if (dicVar == null) {
            dicVar2 = dic.b();
        }
        return dicVar2;
    }
}
