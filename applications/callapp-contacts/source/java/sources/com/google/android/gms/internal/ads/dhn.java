package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhn.class */
public final class dhn extends dnh<dhn, C12350a> implements dov {
    private static volatile dpc<dhn> zzek;
    private static final dhn zziis;
    private dhu zziip;
    private dhi zziiq;
    private int zziir;

    /* renamed from: com.google.android.gms.internal.ads.dhn$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhn$a.class */
    public static final class C12350a extends dnh.C12383b<dhn, C12350a> implements dov {
        private C12350a() {
            super(dhn.zziis);
        }

        /* synthetic */ C12350a(dho dhoVar) {
            this();
        }
    }

    static {
        dhn dhnVar = new dhn();
        zziis = dhnVar;
        dnh.m16339a(dhn.class, dhnVar);
    }

    private dhn() {
    }

    /* renamed from: d */
    public static dhn m16690d() {
        return zziis;
    }

    /* renamed from: a */
    public final dhu m16693a() {
        dhu dhuVar = this.zziip;
        dhu dhuVar2 = dhuVar;
        if (dhuVar == null) {
            dhuVar2 = dhu.m16663c();
        }
        return dhuVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dho.f47078a[i - 1]) {
            case 1:
                return new dhn();
            case 2:
                return new C12350a(null);
            case 3:
                return m16341a(zziis, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\t\u0003\f", new Object[]{"zziip", "zziiq", "zziir"});
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
                                dpcVar2 = new dnh.C12382a<>(zziis);
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
    public final dhi m16692b() {
        dhi dhiVar = this.zziiq;
        dhi dhiVar2 = dhiVar;
        if (dhiVar == null) {
            dhiVar2 = dhi.m16698b();
        }
        return dhiVar2;
    }

    /* renamed from: c */
    public final dhh m16691c() {
        dhh zzfl = dhh.zzfl(this.zziir);
        dhh dhhVar = zzfl;
        if (zzfl == null) {
            dhhVar = dhh.UNRECOGNIZED;
        }
        return dhhVar;
    }
}
