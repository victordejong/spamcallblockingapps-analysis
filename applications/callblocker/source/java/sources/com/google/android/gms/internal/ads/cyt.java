package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyt.class */
public final class cyt extends dcw<cyt, C2946a> implements dei {
    private static volatile dep<cyt> zzea;
    private static final cyt zzhqa;
    private int zzhlh;
    private dbi zzhli = dbi.f13932a;

    /* renamed from: com.google.android.gms.internal.ads.cyt$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyt$a.class */
    public static final class C2946a extends dcw.C2955a<cyt, C2946a> implements dei {
        private C2946a() {
            super(cyt.zzhqa);
        }

        /* synthetic */ C2946a(cyu cyuVar) {
            this();
        }

        /* renamed from: a */
        public final C2946a m10320a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cyt) this.f14072a).m10323b(0);
            return this;
        }

        /* renamed from: a */
        public final C2946a m10319a(dbi dbiVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cyt) this.f14072a).m10326a(dbiVar);
            return this;
        }
    }

    static {
        cyt cytVar = new cyt();
        zzhqa = cytVar;
        dcw.m10083a(cyt.class, cytVar);
    }

    private cyt() {
    }

    /* renamed from: a */
    public static cyt m10325a(dbi dbiVar, dci dciVar) {
        return (cyt) dcw.m10093a(zzhqa, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10326a(dbi dbiVar) {
        dbiVar.getClass();
        this.zzhli = dbiVar;
    }

    /* renamed from: b */
    public final void m10323b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: c */
    public static C2946a m10322c() {
        return zzhqa.m10079n();
    }

    /* renamed from: a */
    public final int m10329a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cyt> depVar;
        switch (cyu.f13829a[i - 1]) {
            case 1:
                obj3 = new cyt();
                break;
            case 2:
                obj3 = new C2946a(null);
                break;
            case 3:
                obj3 = m10085a(zzhqa, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzhlh", "zzhli"});
                break;
            case 4:
                obj3 = zzhqa;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cyt.class) {
                        try {
                            dep<cyt> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhqa);
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
    public final dbi m10324b() {
        return this.zzhli;
    }
}
