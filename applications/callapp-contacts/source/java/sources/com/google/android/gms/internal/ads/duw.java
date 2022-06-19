package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duw.class */
public final class duw extends dnh<duw, C12427a> implements dov {
    private static final duw zzach;
    private static volatile dpc<duw> zzek;
    private dva zzace;
    dlw zzacf = dlw.f47199a;
    dlw zzacg = dlw.f47199a;
    private int zzdv;

    /* renamed from: com.google.android.gms.internal.ads.duw$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duw$a.class */
    public static final class C12427a extends dnh.C12383b<duw, C12427a> implements dov {
        private C12427a() {
            super(duw.zzach);
        }

        /* synthetic */ C12427a(duy duyVar) {
            this();
        }
    }

    static {
        duw duwVar = new duw();
        zzach = duwVar;
        dnh.m16339a(duw.class, duwVar);
    }

    private duw() {
    }

    /* renamed from: a */
    public static duw m15694a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (duw) dnh.m16349a(zzach, dlwVar, dmtVar);
    }

    /* renamed from: a */
    public final dva m15695a() {
        dva dvaVar = this.zzace;
        dva dvaVar2 = dvaVar;
        if (dvaVar == null) {
            dvaVar2 = dva.m15687b();
        }
        return dvaVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (duy.f47646a[i - 1]) {
            case 1:
                return new duw();
            case 2:
                return new C12427a(null);
            case 3:
                return m16341a(zzach, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzace", "zzacf", "zzacg"});
            case 4:
                return zzach;
            case 5:
                dpc<duw> dpcVar = zzek;
                dpc<duw> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (duw.class) {
                        try {
                            dpc<duw> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzach);
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
