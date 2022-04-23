package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dik.class */
public final class dik extends dnh<dik, a> implements dov {
    private static volatile dpc<dik> zzek;
    private static final dik zzikn;
    String zzijv = "";
    dlw zzijw = dlw.f26941a;
    private int zzikm;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dik$a.class */
    public static final class a extends dnh.b<dik, a> implements dov {
        private a() {
            super(dik.zzikn);
        }

        /* synthetic */ a(dim dimVar) {
            this();
        }
    }

    static {
        dik dikVar = new dik();
        zzikn = dikVar;
        dnh.a(dik.class, dikVar);
    }

    private dik() {
    }

    public static dik a() {
        return zzikn;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dim.f26849a[i - 1]) {
            case 1:
                return new dik();
            case 2:
                return new a(null);
            case 3:
                return a(zzikn, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzijv", "zzijw", "zzikm"});
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
                                dpcVar2 = new dnh.a<>(zzikn);
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
