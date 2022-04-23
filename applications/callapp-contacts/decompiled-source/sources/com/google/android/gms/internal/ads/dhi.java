package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhi.class */
public final class dhi extends dnh<dhi, a> implements dov {
    private static volatile dpc<dhi> zzek;
    private static final dhi zziim;
    private dik zziil;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhi$a.class */
    public static final class a extends dnh.b<dhi, a> implements dov {
        private a() {
            super(dhi.zziim);
        }

        /* synthetic */ a(dhk dhkVar) {
            this();
        }
    }

    static {
        dhi dhiVar = new dhi();
        zziim = dhiVar;
        dnh.a(dhi.class, dhiVar);
    }

    private dhi() {
    }

    public static dhi b() {
        return zziim;
    }

    public final dik a() {
        dik dikVar = this.zziil;
        dik dikVar2 = dikVar;
        if (dikVar == null) {
            dikVar2 = dik.a();
        }
        return dikVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dhk.f26835a[i - 1]) {
            case 1:
                return new dhi();
            case 2:
                return new a(null);
            case 3:
                return a(zziim, "��\u0001����\u0002\u0002\u0001������\u0002\t", new Object[]{"zziil"});
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
                                dpcVar2 = new dnh.a<>(zziim);
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
