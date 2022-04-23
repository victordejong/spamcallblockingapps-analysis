package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhn.class */
public final class dhn extends dnh<dhn, a> implements dov {
    private static volatile dpc<dhn> zzek;
    private static final dhn zziis;
    private dhu zziip;
    private dhi zziiq;
    private int zziir;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhn$a.class */
    public static final class a extends dnh.b<dhn, a> implements dov {
        private a() {
            super(dhn.zziis);
        }

        /* synthetic */ a(dho dhoVar) {
            this();
        }
    }

    static {
        dhn dhnVar = new dhn();
        zziis = dhnVar;
        dnh.a(dhn.class, dhnVar);
    }

    private dhn() {
    }

    public static dhn d() {
        return zziis;
    }

    public final dhu a() {
        dhu dhuVar = this.zziip;
        dhu dhuVar2 = dhuVar;
        if (dhuVar == null) {
            dhuVar2 = dhu.c();
        }
        return dhuVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dho.f26837a[i - 1]) {
            case 1:
                return new dhn();
            case 2:
                return new a(null);
            case 3:
                return a(zziis, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\t\u0003\f", new Object[]{"zziip", "zziiq", "zziir"});
            case 4:
                return zziis;
            case 5:
                dpc<dhn> dpcVar = zzek;
                dpc<dhn> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhn.class) {
                        try {
                            dpc<dhn> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zziis);
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

    public final dhi b() {
        dhi dhiVar = this.zziiq;
        dhi dhiVar2 = dhiVar;
        if (dhiVar == null) {
            dhiVar2 = dhi.b();
        }
        return dhiVar2;
    }

    public final dhh c() {
        dhh zzfl = dhh.zzfl(this.zziir);
        dhh dhhVar = zzfl;
        if (zzfl == null) {
            dhhVar = dhh.UNRECOGNIZED;
        }
        return dhhVar;
    }
}
