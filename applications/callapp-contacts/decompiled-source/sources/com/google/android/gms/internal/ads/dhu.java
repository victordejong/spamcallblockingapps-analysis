package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhu.class */
public final class dhu extends dnh<dhu, a> implements dov {
    private static volatile dpc<dhu> zzek;
    private static final dhu zzijb;
    private int zziiy;
    private int zziiz;
    dlw zzija = dlw.f26941a;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhu$a.class */
    public static final class a extends dnh.b<dhu, a> implements dov {
        private a() {
            super(dhu.zzijb);
        }

        /* synthetic */ a(dht dhtVar) {
            this();
        }
    }

    static {
        dhu dhuVar = new dhu();
        zzijb = dhuVar;
        dnh.a(dhu.class, dhuVar);
    }

    private dhu() {
    }

    public static dhu c() {
        return zzijb;
    }

    public final dhv a() {
        dhv zzfo = dhv.zzfo(this.zziiy);
        dhv dhvVar = zzfo;
        if (zzfo == null) {
            dhvVar = dhv.UNRECOGNIZED;
        }
        return dhvVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dht.f26840a[i - 1]) {
            case 1:
                return new dhu();
            case 2:
                return new a(null);
            case 3:
                return a(zzijb, "��\u0003����\u0001\u000b\u0003������\u0001\f\u0002\f\u000b\n", new Object[]{"zziiy", "zziiz", "zzija"});
            case 4:
                return zzijb;
            case 5:
                dpc<dhu> dpcVar = zzek;
                dpc<dhu> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhu.class) {
                        try {
                            dpc<dhu> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzijb);
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

    public final dhw b() {
        dhw zzfp = dhw.zzfp(this.zziiz);
        dhw dhwVar = zzfp;
        if (zzfp == null) {
            dhwVar = dhw.UNRECOGNIZED;
        }
        return dhwVar;
    }
}
