package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyi.class */
public final class cyi extends dcw<cyi, C2941a> implements dei {
    private static volatile dep<cyi> zzea;
    private static final cyi zzhpi;
    private int zzhlh;
    private cyj zzhph;

    /* renamed from: com.google.android.gms.internal.ads.cyi$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyi$a.class */
    public static final class C2941a extends dcw.C2955a<cyi, C2941a> implements dei {
        private C2941a() {
            super(cyi.zzhpi);
        }

        /* synthetic */ C2941a(cyh cyhVar) {
            this();
        }

        /* renamed from: a */
        public final C2941a m10355a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cyi) this.f14072a).m10358b(0);
            return this;
        }

        /* renamed from: a */
        public final C2941a m10354a(cyj cyjVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cyi) this.f14072a).m10361a(cyjVar);
            return this;
        }
    }

    static {
        cyi cyiVar = new cyi();
        zzhpi = cyiVar;
        dcw.m10083a(cyi.class, cyiVar);
    }

    private cyi() {
    }

    /* renamed from: a */
    public static cyi m10360a(dbi dbiVar, dci dciVar) {
        return (cyi) dcw.m10093a(zzhpi, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10361a(cyj cyjVar) {
        cyjVar.getClass();
        this.zzhph = cyjVar;
    }

    /* renamed from: b */
    public final void m10358b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: c */
    public static C2941a m10357c() {
        return zzhpi.m10079n();
    }

    /* renamed from: a */
    public final int m10364a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cyi> depVar;
        switch (cyh.f13815a[i - 1]) {
            case 1:
                obj3 = new cyi();
                break;
            case 2:
                obj3 = new C2941a(null);
                break;
            case 3:
                obj3 = m10085a(zzhpi, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzhlh", "zzhph"});
                break;
            case 4:
                obj3 = zzhpi;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cyi.class) {
                        try {
                            dep<cyi> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhpi);
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
    public final cyj m10359b() {
        return this.zzhph == null ? cyj.m10351b() : this.zzhph;
    }
}
