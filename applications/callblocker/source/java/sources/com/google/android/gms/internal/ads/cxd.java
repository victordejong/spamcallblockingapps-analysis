package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxd.class */
public final class cxd extends dcw<cxd, C2924a> implements dei {
    private static volatile dep<cxd> zzea;
    private static final cxd zzhmy;
    private int zzhlh;
    private dbi zzhli = dbi.f13932a;
    private cxg zzhmx;

    /* renamed from: com.google.android.gms.internal.ads.cxd$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxd$a.class */
    public static final class C2924a extends dcw.C2955a<cxd, C2924a> implements dei {
        private C2924a() {
            super(cxd.zzhmy);
        }

        /* synthetic */ C2924a(cxe cxeVar) {
            this();
        }

        /* renamed from: a */
        public final C2924a m10480a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxd) this.f14072a).m10484b(0);
            return this;
        }

        /* renamed from: a */
        public final C2924a m10479a(cxg cxgVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxd) this.f14072a).m10488a(cxgVar);
            return this;
        }

        /* renamed from: a */
        public final C2924a m10478a(dbi dbiVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxd) this.f14072a).m10487a(dbiVar);
            return this;
        }
    }

    static {
        cxd cxdVar = new cxd();
        zzhmy = cxdVar;
        dcw.m10083a(cxd.class, cxdVar);
    }

    private cxd() {
    }

    /* renamed from: a */
    public static cxd m10486a(dbi dbiVar, dci dciVar) {
        return (cxd) dcw.m10093a(zzhmy, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10488a(cxg cxgVar) {
        cxgVar.getClass();
        this.zzhmx = cxgVar;
    }

    /* renamed from: a */
    public final void m10487a(dbi dbiVar) {
        dbiVar.getClass();
        this.zzhli = dbiVar;
    }

    /* renamed from: b */
    public final void m10484b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: d */
    public static C2924a m10482d() {
        return zzhmy.m10079n();
    }

    /* renamed from: a */
    public final int m10492a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cxd> depVar;
        switch (cxe.f13767a[i - 1]) {
            case 1:
                obj3 = new cxd();
                break;
            case 2:
                obj3 = new C2924a(null);
                break;
            case 3:
                obj3 = m10085a(zzhmy, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhlh", "zzhmx", "zzhli"});
                break;
            case 4:
                obj3 = zzhmy;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cxd.class) {
                        try {
                            dep<cxd> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhmy);
                                zzea = depVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    obj3 = depVar;
                    break;
                }
                break;
            case 6:
                obj3 = (byte) 1;
                break;
            case 7:
                obj3 = null;
                break;
            default:
                throw new UnsupportedOperationException();
        }
        return obj3 == 1 ? 1 : 0;
    }

    /* renamed from: b */
    public final cxg m10485b() {
        return this.zzhmx == null ? cxg.m10463f() : this.zzhmx;
    }

    /* renamed from: c */
    public final dbi m10483c() {
        return this.zzhli;
    }
}
