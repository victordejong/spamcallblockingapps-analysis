package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhu.class */
public final class dhu extends dnh<dhu, C12353a> implements dov {
    private static volatile dpc<dhu> zzek;
    private static final dhu zzijb;
    private int zziiy;
    private int zziiz;
    dlw zzija = dlw.f47199a;

    /* renamed from: com.google.android.gms.internal.ads.dhu$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhu$a.class */
    public static final class C12353a extends dnh.C12383b<dhu, C12353a> implements dov {
        private C12353a() {
            super(dhu.zzijb);
        }

        /* synthetic */ C12353a(dht dhtVar) {
            this();
        }
    }

    static {
        dhu dhuVar = new dhu();
        zzijb = dhuVar;
        dnh.m16339a(dhu.class, dhuVar);
    }

    private dhu() {
    }

    /* renamed from: c */
    public static dhu m16663c() {
        return zzijb;
    }

    /* renamed from: a */
    public final dhv m16665a() {
        dhv zzfo = dhv.zzfo(this.zziiy);
        dhv dhvVar = zzfo;
        if (zzfo == null) {
            dhvVar = dhv.UNRECOGNIZED;
        }
        return dhvVar;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dht.f47081a[i - 1]) {
            case 1:
                return new dhu();
            case 2:
                return new C12353a(null);
            case 3:
                return m16341a(zzijb, "��\u0003����\u0001\u000b\u0003������\u0001\f\u0002\f\u000b\n", new Object[]{"zziiy", "zziiz", "zzija"});
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
                                dpcVar2 = new dnh.C12382a<>(zzijb);
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
    public final dhw m16664b() {
        dhw zzfp = dhw.zzfp(this.zziiz);
        dhw dhwVar = zzfp;
        if (zzfp == null) {
            dhwVar = dhw.UNRECOGNIZED;
        }
        return dhwVar;
    }
}
