package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvy.class */
public final class cvy extends dcw<cvy, C2907a> implements dei {
    private static volatile dep<cvy> zzea;
    private static final cvy zzhls;
    private int zzhlh;
    private cwc zzhlq;
    private cxp zzhlr;

    /* renamed from: com.google.android.gms.internal.ads.cvy$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvy$a.class */
    public static final class C2907a extends dcw.C2955a<cvy, C2907a> implements dei {
        private C2907a() {
            super(cvy.zzhls);
        }

        /* synthetic */ C2907a(cvx cvxVar) {
            this();
        }

        /* renamed from: a */
        public final C2907a m10587a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cvy) this.f14072a).m10591b(i);
            return this;
        }

        /* renamed from: a */
        public final C2907a m10586a(cwc cwcVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cvy) this.f14072a).m10595a(cwcVar);
            return this;
        }

        /* renamed from: a */
        public final C2907a m10585a(cxp cxpVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cvy) this.f14072a).m10594a(cxpVar);
            return this;
        }
    }

    static {
        cvy cvyVar = new cvy();
        zzhls = cvyVar;
        dcw.m10083a(cvy.class, cvyVar);
    }

    private cvy() {
    }

    /* renamed from: a */
    public static cvy m10593a(dbi dbiVar, dci dciVar) {
        return (cvy) dcw.m10093a(zzhls, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10595a(cwc cwcVar) {
        cwcVar.getClass();
        this.zzhlq = cwcVar;
    }

    /* renamed from: a */
    public final void m10594a(cxp cxpVar) {
        cxpVar.getClass();
        this.zzhlr = cxpVar;
    }

    /* renamed from: b */
    public final void m10591b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: d */
    public static C2907a m10589d() {
        return zzhls.m10079n();
    }

    /* renamed from: a */
    public final int m10599a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cvy> depVar;
        switch (cvx.f13740a[i - 1]) {
            case 1:
                obj3 = new cvy();
                break;
            case 2:
                obj3 = new C2907a(null);
                break;
            case 3:
                obj3 = m10085a(zzhls, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzhlh", "zzhlq", "zzhlr"});
                break;
            case 4:
                obj3 = zzhls;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cvy.class) {
                        try {
                            dep<cvy> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhls);
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
    public final cwc m10592b() {
        return this.zzhlq == null ? cwc.m10566e() : this.zzhlq;
    }

    /* renamed from: c */
    public final cxp m10590c() {
        return this.zzhlr == null ? cxp.m10439e() : this.zzhlr;
    }
}
