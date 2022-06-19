package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxq.class */
public final class cxq extends dcw<cxq, C2928a> implements dei {
    private static volatile dep<cxq> zzea;
    private static final cxq zzhnw;
    private int zzhlh;
    private int zzhlm;
    private cxt zzhnu;

    /* renamed from: com.google.android.gms.internal.ads.cxq$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxq$a.class */
    public static final class C2928a extends dcw.C2955a<cxq, C2928a> implements dei {
        private C2928a() {
            super(cxq.zzhnw);
        }

        /* synthetic */ C2928a(cxr cxrVar) {
            this();
        }
    }

    static {
        cxq cxqVar = new cxq();
        zzhnw = cxqVar;
        dcw.m10083a(cxq.class, cxqVar);
    }

    private cxq() {
    }

    /* renamed from: a */
    public static cxq m10433a(dbi dbiVar, dci dciVar) {
        return (cxq) dcw.m10093a(zzhnw, dbiVar, dciVar);
    }

    /* renamed from: c */
    public static cxq m10431c() {
        return zzhnw;
    }

    /* renamed from: a */
    public final cxt m10434a() {
        return this.zzhnu == null ? cxt.m10427c() : this.zzhnu;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cxq> depVar;
        switch (cxr.f13791a[i - 1]) {
            case 1:
                obj3 = new cxq();
                break;
            case 2:
                obj3 = new C2928a(null);
                break;
            case 3:
                obj3 = m10085a(zzhnw, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzhnu", "zzhlm", "zzhlh"});
                break;
            case 4:
                obj3 = zzhnw;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cxq.class) {
                        try {
                            dep<cxq> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhnw);
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
    public final int m10432b() {
        return this.zzhlm;
    }
}
