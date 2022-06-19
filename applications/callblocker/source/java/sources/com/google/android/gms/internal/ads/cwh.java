package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwh.class */
public final class cwh extends dcw<cwh, C2913a> implements dei {
    private static volatile dep<cwh> zzea;
    private static final cwh zzhmc;
    private int zzhlh;
    private dbi zzhli = dbi.f13932a;
    private cwl zzhmb;

    /* renamed from: com.google.android.gms.internal.ads.cwh$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwh$a.class */
    public static final class C2913a extends dcw.C2955a<cwh, C2913a> implements dei {
        private C2913a() {
            super(cwh.zzhmc);
        }

        /* synthetic */ C2913a(cwi cwiVar) {
            this();
        }

        /* renamed from: a */
        public final C2913a m10541a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cwh) this.f14072a).m10545b(0);
            return this;
        }

        /* renamed from: a */
        public final C2913a m10540a(cwl cwlVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cwh) this.f14072a).m10549a(cwlVar);
            return this;
        }

        /* renamed from: a */
        public final C2913a m10539a(dbi dbiVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cwh) this.f14072a).m10548a(dbiVar);
            return this;
        }
    }

    static {
        cwh cwhVar = new cwh();
        zzhmc = cwhVar;
        dcw.m10083a(cwh.class, cwhVar);
    }

    private cwh() {
    }

    /* renamed from: a */
    public static cwh m10547a(dbi dbiVar, dci dciVar) {
        return (cwh) dcw.m10093a(zzhmc, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10549a(cwl cwlVar) {
        cwlVar.getClass();
        this.zzhmb = cwlVar;
    }

    /* renamed from: a */
    public final void m10548a(dbi dbiVar) {
        dbiVar.getClass();
        this.zzhli = dbiVar;
    }

    /* renamed from: b */
    public final void m10545b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: d */
    public static C2913a m10543d() {
        return zzhmc.m10079n();
    }

    /* renamed from: a */
    public final int m10553a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cwh> depVar;
        switch (cwi.f13749a[i - 1]) {
            case 1:
                obj3 = new cwh();
                break;
            case 2:
                obj3 = new C2913a(null);
                break;
            case 3:
                obj3 = m10085a(zzhmc, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzhlh", "zzhmb", "zzhli"});
                break;
            case 4:
                obj3 = zzhmc;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cwh.class) {
                        try {
                            dep<cwh> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhmc);
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
    public final cwl m10546b() {
        return this.zzhmb == null ? cwl.m10533b() : this.zzhmb;
    }

    /* renamed from: c */
    public final dbi m10544c() {
        return this.zzhli;
    }
}
