package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhd.class */
public final class dhd extends dnh<dhd, a> implements dov {
    private static volatile dpc<dhd> zzek;
    private static final dhd zziid;
    int zzihc;
    dlw zzihd = dlw.f26941a;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhd$a.class */
    public static final class a extends dnh.b<dhd, a> implements dov {
        private a() {
            super(dhd.zziid);
        }

        /* synthetic */ a(dhe dheVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dhd) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dhd.a((dhd) this.f26993a, dlwVar);
            return this;
        }
    }

    static {
        dhd dhdVar = new dhd();
        zziid = dhdVar;
        dnh.a(dhd.class, dhdVar);
    }

    private dhd() {
    }

    public static a a() {
        return zziid.i();
    }

    public static dhd a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhd) dnh.a(zziid, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dhd dhdVar, dlw dlwVar) {
        dlwVar.getClass();
        dhdVar.zzihd = dlwVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dhe.f26833a[i - 1]) {
            case 1:
                return new dhd();
            case 2:
                return new a(null);
            case 3:
                return a(zziid, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\n", new Object[]{"zzihc", "zzihd"});
            case 4:
                return zziid;
            case 5:
                dpc<dhd> dpcVar = zzek;
                dpc<dhd> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhd.class) {
                        try {
                            dpc<dhd> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zziid);
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
