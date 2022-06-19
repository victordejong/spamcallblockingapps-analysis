package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhr.class */
public final class dhr extends dnh<dhr, C12352a> implements dov {
    private static volatile dpc<dhr> zzek;
    private static final dhr zziix;
    int zzihc;
    private dhn zziin;
    dlw zziiv = dlw.f47199a;
    dlw zziiw = dlw.f47199a;

    /* renamed from: com.google.android.gms.internal.ads.dhr$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhr$a.class */
    public static final class C12352a extends dnh.C12383b<dhr, C12352a> implements dov {
        private C12352a() {
            super(dhr.zziix);
        }

        /* synthetic */ C12352a(dhs dhsVar) {
            this();
        }

        /* renamed from: a */
        public final C12352a m16669a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dhr) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12352a m16668a(dhn dhnVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dhr.m16676a((dhr) this.f47274a, dhnVar);
            return this;
        }

        /* renamed from: a */
        public final C12352a m16667a(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dhr.m16675a((dhr) this.f47274a, dlwVar);
            return this;
        }

        /* renamed from: b */
        public final C12352a m16666b(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dhr.m16672b((dhr) this.f47274a, dlwVar);
            return this;
        }
    }

    static {
        dhr dhrVar = new dhr();
        zziix = dhrVar;
        dnh.m16339a(dhr.class, dhrVar);
    }

    private dhr() {
    }

    /* renamed from: a */
    public static dhr m16674a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhr) dnh.m16349a(zziix, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16676a(dhr dhrVar, dhn dhnVar) {
        dhnVar.getClass();
        dhrVar.zziin = dhnVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m16675a(dhr dhrVar, dlw dlwVar) {
        dlwVar.getClass();
        dhrVar.zziiv = dlwVar;
    }

    /* renamed from: b */
    public static C12352a m16673b() {
        return zziix.m16335i();
    }

    /* renamed from: b */
    static /* synthetic */ void m16672b(dhr dhrVar, dlw dlwVar) {
        dlwVar.getClass();
        dhrVar.zziiw = dlwVar;
    }

    /* renamed from: c */
    public static dhr m16671c() {
        return zziix;
    }

    /* renamed from: a */
    public final dhn m16678a() {
        dhn dhnVar = this.zziin;
        dhn dhnVar2 = dhnVar;
        if (dhnVar == null) {
            dhnVar2 = dhn.m16690d();
        }
        return dhnVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dhs.f47080a[i - 1]) {
            case 1:
                return new dhr();
            case 2:
                return new C12352a(null);
            case 3:
                return m16341a(zziix, "��\u0004����\u0001\u0004\u0004������\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzihc", "zziin", "zziiv", "zziiw"});
            case 4:
                return zziix;
            case 5:
                dpc<dhr> dpcVar = zzek;
                dpc<dhr> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhr.class) {
                        try {
                            dpc<dhr> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zziix);
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
