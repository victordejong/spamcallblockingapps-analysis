package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cws.class */
public final class cws extends dcw<cws, C2918a> implements dei {
    private static volatile dep<cws> zzea;
    private static final cws zzhmh;
    private int zzhlh;
    private dbi zzhli = dbi.f13932a;

    /* renamed from: com.google.android.gms.internal.ads.cws$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cws$a.class */
    public static final class C2918a extends dcw.C2955a<cws, C2918a> implements dei {
        private C2918a() {
            super(cws.zzhmh);
        }

        /* synthetic */ C2918a(cwr cwrVar) {
            this();
        }

        /* renamed from: a */
        public final C2918a m10508a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cws) this.f14072a).m10511b(0);
            return this;
        }

        /* renamed from: a */
        public final C2918a m10507a(dbi dbiVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cws) this.f14072a).m10514a(dbiVar);
            return this;
        }
    }

    static {
        cws cwsVar = new cws();
        zzhmh = cwsVar;
        dcw.m10083a(cws.class, cwsVar);
    }

    private cws() {
    }

    /* renamed from: a */
    public static cws m10513a(dbi dbiVar, dci dciVar) {
        return (cws) dcw.m10093a(zzhmh, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10514a(dbi dbiVar) {
        dbiVar.getClass();
        this.zzhli = dbiVar;
    }

    /* renamed from: b */
    public final void m10511b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: c */
    public static C2918a m10510c() {
        return zzhmh.m10079n();
    }

    /* renamed from: a */
    public final int m10517a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cws> depVar;
        switch (cwr.f13754a[i - 1]) {
            case 1:
                obj3 = new cws();
                break;
            case 2:
                obj3 = new C2918a(null);
                break;
            case 3:
                obj3 = m10085a(zzhmh, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\n", new Object[]{"zzhlh", "zzhli"});
                break;
            case 4:
                obj3 = zzhmh;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cws.class) {
                        try {
                            dep<cws> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhmh);
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
    public final dbi m10512b() {
        return this.zzhli;
    }
}
