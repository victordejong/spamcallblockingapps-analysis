package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxp.class */
public final class cxp extends dcw<cxp, C2927a> implements dei {
    private static volatile dep<cxp> zzea;
    private static final cxp zzhnv;
    private int zzhlh;
    private dbi zzhli = dbi.f13932a;
    private cxt zzhnu;

    /* renamed from: com.google.android.gms.internal.ads.cxp$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxp$a.class */
    public static final class C2927a extends dcw.C2955a<cxp, C2927a> implements dei {
        private C2927a() {
            super(cxp.zzhnv);
        }

        /* synthetic */ C2927a(cxn cxnVar) {
            this();
        }

        /* renamed from: a */
        public final C2927a m10437a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxp) this.f14072a).m10442b(0);
            return this;
        }

        /* renamed from: a */
        public final C2927a m10436a(cxt cxtVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxp) this.f14072a).m10446a(cxtVar);
            return this;
        }

        /* renamed from: a */
        public final C2927a m10435a(dbi dbiVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cxp) this.f14072a).m10445a(dbiVar);
            return this;
        }
    }

    static {
        cxp cxpVar = new cxp();
        zzhnv = cxpVar;
        dcw.m10083a(cxp.class, cxpVar);
    }

    private cxp() {
    }

    /* renamed from: a */
    public static cxp m10444a(dbi dbiVar, dci dciVar) {
        return (cxp) dcw.m10093a(zzhnv, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10446a(cxt cxtVar) {
        cxtVar.getClass();
        this.zzhnu = cxtVar;
    }

    /* renamed from: a */
    public final void m10445a(dbi dbiVar) {
        dbiVar.getClass();
        this.zzhli = dbiVar;
    }

    /* renamed from: b */
    public final void m10442b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: d */
    public static C2927a m10440d() {
        return zzhnv.m10079n();
    }

    /* renamed from: e */
    public static cxp m10439e() {
        return zzhnv;
    }

    /* renamed from: a */
    public final int m10450a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cxp> depVar;
        switch (cxn.f13788a[i - 1]) {
            case 1:
                obj3 = new cxp();
                break;
            case 2:
                obj3 = new C2927a(null);
                break;
            case 3:
                obj3 = m10085a(zzhnv, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhlh", "zzhnu", "zzhli"});
                break;
            case 4:
                obj3 = zzhnv;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cxp.class) {
                        try {
                            dep<cxp> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhnv);
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
    public final cxt m10443b() {
        return this.zzhnu == null ? cxt.m10427c() : this.zzhnu;
    }

    /* renamed from: c */
    public final dbi m10441c() {
        return this.zzhli;
    }
}
