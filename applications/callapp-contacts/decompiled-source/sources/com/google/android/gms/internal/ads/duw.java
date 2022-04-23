package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duw.class */
public final class duw extends dnh<duw, a> implements dov {
    private static final duw zzach;
    private static volatile dpc<duw> zzek;
    private dva zzace;
    dlw zzacf = dlw.f26941a;
    dlw zzacg = dlw.f26941a;
    private int zzdv;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duw$a.class */
    public static final class a extends dnh.b<duw, a> implements dov {
        private a() {
            super(duw.zzach);
        }

        /* synthetic */ a(duy duyVar) {
            this();
        }
    }

    static {
        duw duwVar = new duw();
        zzach = duwVar;
        dnh.a(duw.class, duwVar);
    }

    private duw() {
    }

    public static duw a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (duw) dnh.a(zzach, dlwVar, dmtVar);
    }

    public final dva a() {
        dva dvaVar = this.zzace;
        dva dvaVar2 = dvaVar;
        if (dvaVar == null) {
            dvaVar2 = dva.b();
        }
        return dvaVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (duy.f27243a[i - 1]) {
            case 1:
                return new duw();
            case 2:
                return new a(null);
            case 3:
                return a(zzach, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzace", "zzacf", "zzacg"});
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
                                dpcVar2 = new dnh.a<>(zzach);
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
