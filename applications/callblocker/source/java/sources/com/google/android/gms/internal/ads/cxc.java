package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxc.class */
public final class cxc extends dcw<cxc, C2923a> implements dei {
    private static volatile dep<cxc> zzea;
    private static final cxc zzhmw;
    private cxh zzhmt;
    private cwy zzhmu;
    private int zzhmv;

    /* renamed from: com.google.android.gms.internal.ads.cxc$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxc$a.class */
    public static final class C2923a extends dcw.C2955a<cxc, C2923a> implements dei {
        private C2923a() {
            super(cxc.zzhmw);
        }

        /* synthetic */ C2923a(cxb cxbVar) {
            this();
        }
    }

    static {
        cxc cxcVar = new cxc();
        zzhmw = cxcVar;
        dcw.m10083a(cxc.class, cxcVar);
    }

    private cxc() {
    }

    /* renamed from: d */
    public static cxc m10494d() {
        return zzhmw;
    }

    /* renamed from: a */
    public final cxh m10497a() {
        return this.zzhmt == null ? cxh.m10454d() : this.zzhmt;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cxc> depVar;
        switch (cxb.f13766a[i - 1]) {
            case 1:
                obj3 = new cxc();
                break;
            case 2:
                obj3 = new C2923a(null);
                break;
            case 3:
                obj3 = m10085a(zzhmw, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\t\u0003\f", new Object[]{"zzhmt", "zzhmu", "zzhmv"});
                break;
            case 4:
                obj3 = zzhmw;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cxc.class) {
                        try {
                            dep<cxc> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhmw);
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
    public final cwy m10496b() {
        return this.zzhmu == null ? cwy.m10502b() : this.zzhmu;
    }

    /* renamed from: c */
    public final cww m10495c() {
        cww m10504a = cww.m10504a(this.zzhmv);
        cww cwwVar = m10504a;
        if (m10504a == null) {
            cwwVar = cww.UNRECOGNIZED;
        }
        return cwwVar;
    }
}
