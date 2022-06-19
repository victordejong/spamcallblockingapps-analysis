package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cym.class */
public final class cym extends dcw<cym, C2943a> implements dei {
    private static volatile dep<cym> zzea;
    private static final cym zzhpm;
    private int zzhlh;
    private cyn zzhpl;

    /* renamed from: com.google.android.gms.internal.ads.cym$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cym$a.class */
    public static final class C2943a extends dcw.C2955a<cym, C2943a> implements dei {
        private C2943a() {
            super(cym.zzhpm);
        }

        /* synthetic */ C2943a(cyl cylVar) {
            this();
        }

        /* renamed from: a */
        public final C2943a m10340a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cym) this.f14072a).m10343b(0);
            return this;
        }

        /* renamed from: a */
        public final C2943a m10339a(cyn cynVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cym) this.f14072a).m10346a(cynVar);
            return this;
        }
    }

    static {
        cym cymVar = new cym();
        zzhpm = cymVar;
        dcw.m10083a(cym.class, cymVar);
    }

    private cym() {
    }

    /* renamed from: a */
    public static cym m10345a(dbi dbiVar, dci dciVar) {
        return (cym) dcw.m10093a(zzhpm, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10346a(cyn cynVar) {
        cynVar.getClass();
        this.zzhpl = cynVar;
    }

    /* renamed from: b */
    public final void m10343b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: c */
    public static C2943a m10342c() {
        return zzhpm.m10079n();
    }

    /* renamed from: a */
    public final int m10349a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cym> depVar;
        switch (cyl.f13817a[i - 1]) {
            case 1:
                obj3 = new cym();
                break;
            case 2:
                obj3 = new C2943a(null);
                break;
            case 3:
                obj3 = m10085a(zzhpm, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzhlh", "zzhpl"});
                break;
            case 4:
                obj3 = zzhpm;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cym.class) {
                        try {
                            dep<cym> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhpm);
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
    public final cyn m10344b() {
        return this.zzhpl == null ? cyn.m10335c() : this.zzhpl;
    }
}
