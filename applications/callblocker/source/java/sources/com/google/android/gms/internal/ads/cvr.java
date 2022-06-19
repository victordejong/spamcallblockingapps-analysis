package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvr.class */
public final class cvr extends dcw<cvr, C2904a> implements dei {
    private static volatile dep<cvr> zzea;
    private static final cvr zzhlk;
    private int zzhlh;
    private dbi zzhli = dbi.f13932a;
    private cvv zzhlj;

    /* renamed from: com.google.android.gms.internal.ads.cvr$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvr$a.class */
    public static final class C2904a extends dcw.C2955a<cvr, C2904a> implements dei {
        private C2904a() {
            super(cvr.zzhlk);
        }

        /* synthetic */ C2904a(cvs cvsVar) {
            this();
        }

        /* renamed from: a */
        public final C2904a m10609a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cvr) this.f14072a).m10613b(0);
            return this;
        }

        /* renamed from: a */
        public final C2904a m10608a(cvv cvvVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cvr) this.f14072a).m10617a(cvvVar);
            return this;
        }

        /* renamed from: a */
        public final C2904a m10607a(dbi dbiVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cvr) this.f14072a).m10616a(dbiVar);
            return this;
        }
    }

    static {
        cvr cvrVar = new cvr();
        zzhlk = cvrVar;
        dcw.m10083a(cvr.class, cvrVar);
    }

    private cvr() {
    }

    /* renamed from: a */
    public static cvr m10615a(dbi dbiVar, dci dciVar) {
        return (cvr) dcw.m10093a(zzhlk, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10617a(cvv cvvVar) {
        cvvVar.getClass();
        this.zzhlj = cvvVar;
    }

    /* renamed from: a */
    public final void m10616a(dbi dbiVar) {
        dbiVar.getClass();
        this.zzhli = dbiVar;
    }

    /* renamed from: b */
    public final void m10613b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: d */
    public static C2904a m10611d() {
        return zzhlk.m10079n();
    }

    /* renamed from: a */
    public final int m10621a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cvr> depVar;
        switch (cvs.f13737a[i - 1]) {
            case 1:
                obj3 = new cvr();
                break;
            case 2:
                obj3 = new C2904a(null);
                break;
            case 3:
                obj3 = m10085a(zzhlk, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzhlh", "zzhli", "zzhlj"});
                break;
            case 4:
                obj3 = zzhlk;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cvr.class) {
                        try {
                            dep<cvr> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhlk);
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
    public final dbi m10614b() {
        return this.zzhli;
    }

    /* renamed from: c */
    public final cvv m10612c() {
        return this.zzhlj == null ? cvv.m10601b() : this.zzhlj;
    }
}
