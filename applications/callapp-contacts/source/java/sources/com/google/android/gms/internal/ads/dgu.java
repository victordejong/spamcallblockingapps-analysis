package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgu.class */
public final class dgu extends dnh<dgu, C12340a> implements dov {
    private static volatile dpc<dgu> zzek;
    private static final dgu zzihy;
    int zziht;

    /* renamed from: com.google.android.gms.internal.ads.dgu$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgu$a.class */
    public static final class C12340a extends dnh.C12383b<dgu, C12340a> implements dov {
        private C12340a() {
            super(dgu.zzihy);
        }

        /* synthetic */ C12340a(dgt dgtVar) {
            this();
        }
    }

    static {
        dgu dguVar = new dgu();
        zzihy = dguVar;
        dnh.m16339a(dgu.class, dguVar);
    }

    private dgu() {
    }

    /* renamed from: a */
    public static dgu m16728a() {
        return zzihy;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dgt.f47069a[i - 1]) {
            case 1:
                return new dgu();
            case 2:
                return new C12340a(null);
            case 3:
                return m16341a(zzihy, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zziht"});
            case 4:
                return zzihy;
            case 5:
                dpc<dgu> dpcVar = zzek;
                dpc<dgu> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgu.class) {
                        try {
                            dpc<dgu> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzihy);
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
