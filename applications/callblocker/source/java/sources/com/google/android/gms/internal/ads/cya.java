package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cya.class */
public final class cya extends dcw<cya, C2933a> implements dei {
    private static volatile dep<cya> zzea;
    private static final cya zzhor;
    private String zzhnz = "";
    private dbi zzhoa = dbi.f13932a;
    private int zzhoq;

    /* renamed from: com.google.android.gms.internal.ads.cya$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cya$a.class */
    public static final class C2933a extends dcw.C2955a<cya, C2933a> implements dei {
        private C2933a() {
            super(cya.zzhor);
        }

        /* synthetic */ C2933a(cxz cxzVar) {
            this();
        }
    }

    static {
        cya cyaVar = new cya();
        zzhor = cyaVar;
        dcw.m10083a(cya.class, cyaVar);
    }

    private cya() {
    }

    /* renamed from: c */
    public static cya m10405c() {
        return zzhor;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cya> depVar;
        switch (cxz.f13811a[i - 1]) {
            case 1:
                obj3 = new cya();
                break;
            case 2:
                obj3 = new C2933a(null);
                break;
            case 3:
                obj3 = m10085a(zzhor, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzhnz", "zzhoa", "zzhoq"});
                break;
            case 4:
                obj3 = zzhor;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cya.class) {
                        try {
                            dep<cya> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhor);
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

    /* renamed from: a */
    public final String m10407a() {
        return this.zzhnz;
    }

    /* renamed from: b */
    public final dbi m10406b() {
        return this.zzhoa;
    }
}
