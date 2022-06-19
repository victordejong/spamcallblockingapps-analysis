package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwc.class */
public final class cwc extends dcw<cwc, C2910a> implements dei {
    private static volatile dep<cwc> zzea;
    private static final cwc zzhlx;
    private int zzhlh;
    private dbi zzhli = dbi.f13932a;
    private cwg zzhlw;

    /* renamed from: com.google.android.gms.internal.ads.cwc$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwc$a.class */
    public static final class C2910a extends dcw.C2955a<cwc, C2910a> implements dei {
        private C2910a() {
            super(cwc.zzhlx);
        }

        /* synthetic */ C2910a(cwb cwbVar) {
            this();
        }

        /* renamed from: a */
        public final C2910a m10564a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cwc) this.f14072a).m10569b(0);
            return this;
        }

        /* renamed from: a */
        public final C2910a m10563a(cwg cwgVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cwc) this.f14072a).m10573a(cwgVar);
            return this;
        }

        /* renamed from: a */
        public final C2910a m10562a(dbi dbiVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cwc) this.f14072a).m10572a(dbiVar);
            return this;
        }
    }

    static {
        cwc cwcVar = new cwc();
        zzhlx = cwcVar;
        dcw.m10083a(cwc.class, cwcVar);
    }

    private cwc() {
    }

    /* renamed from: a */
    public static cwc m10571a(dbi dbiVar, dci dciVar) {
        return (cwc) dcw.m10093a(zzhlx, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10573a(cwg cwgVar) {
        cwgVar.getClass();
        this.zzhlw = cwgVar;
    }

    /* renamed from: a */
    public final void m10572a(dbi dbiVar) {
        dbiVar.getClass();
        this.zzhli = dbiVar;
    }

    /* renamed from: b */
    public final void m10569b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: d */
    public static C2910a m10567d() {
        return zzhlx.m10079n();
    }

    /* renamed from: e */
    public static cwc m10566e() {
        return zzhlx;
    }

    /* renamed from: a */
    public final int m10577a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cwc> depVar;
        switch (cwb.f13746a[i - 1]) {
            case 1:
                obj3 = new cwc();
                break;
            case 2:
                obj3 = new C2910a(null);
                break;
            case 3:
                obj3 = m10085a(zzhlx, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhlh", "zzhlw", "zzhli"});
                break;
            case 4:
                obj3 = zzhlx;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cwc.class) {
                        try {
                            dep<cwc> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhlx);
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
    public final cwg m10570b() {
        return this.zzhlw == null ? cwg.m10555b() : this.zzhlw;
    }

    /* renamed from: c */
    public final dbi m10568c() {
        return this.zzhli;
    }
}
