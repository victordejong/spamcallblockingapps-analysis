package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dki.class */
public final class dki extends dcw<dki, C3002a> implements dei {
    private static final dki zzabs;
    private static volatile dep<dki> zzea;
    private String zzabn = "";
    private String zzabo = "";
    private long zzabp;
    private long zzabq;
    private long zzabr;
    private int zzdl;

    /* renamed from: com.google.android.gms.internal.ads.dki$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dki$a.class */
    public static final class C3002a extends dcw.C2955a<dki, C3002a> implements dei {
        private C3002a() {
            super(dki.zzabs);
        }

        /* synthetic */ C3002a(dkh dkhVar) {
            this();
        }

        /* renamed from: a */
        public final C3002a m9334a(long j) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((dki) this.f14072a).m9352a(j);
            return this;
        }

        /* renamed from: a */
        public final C3002a m9333a(String str) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((dki) this.f14072a).m9348a(str);
            return this;
        }

        /* renamed from: b */
        public final C3002a m9332b(long j) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((dki) this.f14072a).m9346b(j);
            return this;
        }

        /* renamed from: b */
        public final C3002a m9331b(String str) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((dki) this.f14072a).m9343b(str);
            return this;
        }

        /* renamed from: c */
        public final C3002a m9330c(long j) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((dki) this.f14072a).m9341c(j);
            return this;
        }
    }

    static {
        dki dkiVar = new dki();
        zzabs = dkiVar;
        dcw.m10083a(dki.class, dkiVar);
    }

    private dki() {
    }

    /* renamed from: a */
    public static dki m9351a(dbi dbiVar) {
        return (dki) dcw.m10094a(zzabs, dbiVar);
    }

    /* renamed from: a */
    public final void m9352a(long j) {
        this.zzdl |= 4;
        this.zzabp = j;
    }

    /* renamed from: a */
    public final void m9348a(String str) {
        str.getClass();
        this.zzdl |= 1;
        this.zzabn = str;
    }

    /* renamed from: b */
    public final void m9346b(long j) {
        this.zzdl |= 8;
        this.zzabq = j;
    }

    /* renamed from: b */
    public final void m9343b(String str) {
        str.getClass();
        this.zzdl |= 2;
        this.zzabo = str;
    }

    /* renamed from: c */
    public final void m9341c(long j) {
        this.zzdl |= 16;
        this.zzabr = j;
    }

    /* renamed from: f */
    public static C3002a m9337f() {
        return zzabs.m10079n();
    }

    /* renamed from: g */
    public static dki m9336g() {
        return zzabs;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<dki> depVar;
        switch (dkh.f14523a[i - 1]) {
            case 1:
                obj3 = new dki();
                break;
            case 2:
                obj3 = new C3002a(null);
                break;
            case 3:
                obj3 = m10085a(zzabs, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001\b��\u0002\b\u0001\u0003\u0003\u0002\u0004\u0003\u0003\u0005\u0003\u0004", new Object[]{"zzdl", "zzabn", "zzabo", "zzabp", "zzabq", "zzabr"});
                break;
            case 4:
                obj3 = zzabs;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (dki.class) {
                        try {
                            dep<dki> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzabs);
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

    /* renamed from: a */
    public final String m9353a() {
        return this.zzabn;
    }

    /* renamed from: b */
    public final String m9347b() {
        return this.zzabo;
    }

    /* renamed from: c */
    public final long m9342c() {
        return this.zzabp;
    }

    /* renamed from: d */
    public final long m9339d() {
        return this.zzabq;
    }

    /* renamed from: e */
    public final long m9338e() {
        return this.zzabr;
    }
}
