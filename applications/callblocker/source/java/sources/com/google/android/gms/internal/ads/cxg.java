package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxg.class */
public final class cxg extends dcw<cxg, C2925a> implements dei {
    private static volatile dep<cxg> zzea;
    private static final cxg zzhnb;
    private int zzhlh;
    private cxc zzhmr;
    private dbi zzhmz = dbi.f13932a;
    private dbi zzhna = dbi.f13932a;

    /* renamed from: com.google.android.gms.internal.ads.cxg$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxg$a.class */
    public static final class C2925a extends dcw.C2955a<cxg, C2925a> implements dei {
        private C2925a() {
            super(cxg.zzhnb);
        }

        /* synthetic */ C2925a(cxf cxfVar) {
            this();
        }

        /* renamed from: a */
        public final C2925a m10461a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxg) this.f14072a).m10469b(0);
            return this;
        }

        /* renamed from: a */
        public final C2925a m10460a(cxc cxcVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxg) this.f14072a).m10476a(cxcVar);
            return this;
        }

        /* renamed from: a */
        public final C2925a m10459a(dbi dbiVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxg) this.f14072a).m10472a(dbiVar);
            return this;
        }

        /* renamed from: b */
        public final C2925a m10458b(dbi dbiVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxg) this.f14072a).m10467b(dbiVar);
            return this;
        }
    }

    static {
        cxg cxgVar = new cxg();
        zzhnb = cxgVar;
        dcw.m10083a(cxg.class, cxgVar);
    }

    private cxg() {
    }

    /* renamed from: a */
    public static cxg m10471a(dbi dbiVar, dci dciVar) {
        return (cxg) dcw.m10093a(zzhnb, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10476a(cxc cxcVar) {
        cxcVar.getClass();
        this.zzhmr = cxcVar;
    }

    /* renamed from: a */
    public final void m10472a(dbi dbiVar) {
        dbiVar.getClass();
        this.zzhmz = dbiVar;
    }

    /* renamed from: b */
    public final void m10469b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: b */
    public final void m10467b(dbi dbiVar) {
        dbiVar.getClass();
        this.zzhna = dbiVar;
    }

    /* renamed from: e */
    public static C2925a m10464e() {
        return zzhnb.m10079n();
    }

    /* renamed from: f */
    public static cxg m10463f() {
        return zzhnb;
    }

    /* renamed from: a */
    public final int m10477a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cxg> depVar;
        switch (cxf.f13768a[i - 1]) {
            case 1:
                obj3 = new cxg();
                break;
            case 2:
                obj3 = new C2925a(null);
                break;
            case 3:
                obj3 = m10085a(zzhnb, "��\u0004����\u0001\u0004\u0004������\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzhlh", "zzhmr", "zzhmz", "zzhna"});
                break;
            case 4:
                obj3 = zzhnb;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cxg.class) {
                        try {
                            dep<cxg> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhnb);
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
    public final cxc m10470b() {
        return this.zzhmr == null ? cxc.m10494d() : this.zzhmr;
    }

    /* renamed from: c */
    public final dbi m10466c() {
        return this.zzhmz;
    }

    /* renamed from: d */
    public final dbi m10465d() {
        return this.zzhna;
    }
}
