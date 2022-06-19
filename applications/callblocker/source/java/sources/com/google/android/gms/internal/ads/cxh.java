package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxh.class */
public final class cxh extends dcw<cxh, C2926a> implements dei {
    private static volatile dep<cxh> zzea;
    private static final cxh zzhnf;
    private int zzhnc;
    private int zzhnd;
    private dbi zzhne = dbi.f13932a;

    /* renamed from: com.google.android.gms.internal.ads.cxh$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxh$a.class */
    public static final class C2926a extends dcw.C2955a<cxh, C2926a> implements dei {
        private C2926a() {
            super(cxh.zzhnf);
        }

        /* synthetic */ C2926a(cxi cxiVar) {
            this();
        }
    }

    static {
        cxh cxhVar = new cxh();
        zzhnf = cxhVar;
        dcw.m10083a(cxh.class, cxhVar);
    }

    private cxh() {
    }

    /* renamed from: d */
    public static cxh m10454d() {
        return zzhnf;
    }

    /* renamed from: a */
    public final cxk m10457a() {
        cxk m10452a = cxk.m10452a(this.zzhnc);
        cxk cxkVar = m10452a;
        if (m10452a == null) {
            cxkVar = cxk.UNRECOGNIZED;
        }
        return cxkVar;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cxh> depVar;
        switch (cxi.f13769a[i - 1]) {
            case 1:
                obj3 = new cxh();
                break;
            case 2:
                obj3 = new C2926a(null);
                break;
            case 3:
                obj3 = m10085a(zzhnf, "��\u0003����\u0001\u000b\u0003������\u0001\f\u0002\f\u000b\n", new Object[]{"zzhnc", "zzhnd", "zzhne"});
                break;
            case 4:
                obj3 = zzhnf;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cxh.class) {
                        try {
                            dep<cxh> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhnf);
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
    public final cxm m10456b() {
        cxm m10451a = cxm.m10451a(this.zzhnd);
        cxm cxmVar = m10451a;
        if (m10451a == null) {
            cxmVar = cxm.UNRECOGNIZED;
        }
        return cxmVar;
    }

    /* renamed from: c */
    public final dbi m10455c() {
        return this.zzhne;
    }
}
