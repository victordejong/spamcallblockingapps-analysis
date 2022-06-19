package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxt.class */
public final class cxt extends dcw<cxt, C2929a> implements dei {
    private static volatile dep<cxt> zzea;
    private static final cxt zzhny;
    private int zzhlo;
    private int zzhnx;

    /* renamed from: com.google.android.gms.internal.ads.cxt$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxt$a.class */
    public static final class C2929a extends dcw.C2955a<cxt, C2929a> implements dei {
        private C2929a() {
            super(cxt.zzhny);
        }

        /* synthetic */ C2929a(cxs cxsVar) {
            this();
        }
    }

    static {
        cxt cxtVar = new cxt();
        zzhny = cxtVar;
        dcw.m10083a(cxt.class, cxtVar);
    }

    private cxt() {
    }

    /* renamed from: c */
    public static cxt m10427c() {
        return zzhny;
    }

    /* renamed from: a */
    public final cxm m10429a() {
        cxm m10451a = cxm.m10451a(this.zzhnx);
        cxm cxmVar = m10451a;
        if (m10451a == null) {
            cxmVar = cxm.UNRECOGNIZED;
        }
        return cxmVar;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cxt> depVar;
        switch (cxs.f13792a[i - 1]) {
            case 1:
                obj3 = new cxt();
                break;
            case 2:
                obj3 = new C2929a(null);
                break;
            case 3:
                obj3 = m10085a(zzhny, "��\u0002����\u0001\u0002\u0002������\u0001\f\u0002\u000b", new Object[]{"zzhnx", "zzhlo"});
                break;
            case 4:
                obj3 = zzhny;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cxt.class) {
                        try {
                            dep<cxt> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhny);
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
    public final int m10428b() {
        return this.zzhlo;
    }
}
