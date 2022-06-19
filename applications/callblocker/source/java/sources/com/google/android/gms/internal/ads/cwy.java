package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwy.class */
public final class cwy extends dcw<cwy, C2920a> implements dei {
    private static volatile dep<cwy> zzea;
    private static final cwy zzhmq;
    private cya zzhmp;

    /* renamed from: com.google.android.gms.internal.ads.cwy$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwy$a.class */
    public static final class C2920a extends dcw.C2955a<cwy, C2920a> implements dei {
        private C2920a() {
            super(cwy.zzhmq);
        }

        /* synthetic */ C2920a(cwx cwxVar) {
            this();
        }
    }

    static {
        cwy cwyVar = new cwy();
        zzhmq = cwyVar;
        dcw.m10083a(cwy.class, cwyVar);
    }

    private cwy() {
    }

    /* renamed from: b */
    public static cwy m10502b() {
        return zzhmq;
    }

    /* renamed from: a */
    public final cya m10503a() {
        return this.zzhmp == null ? cya.m10405c() : this.zzhmp;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cwy> depVar;
        switch (cwx.f13764a[i - 1]) {
            case 1:
                obj3 = new cwy();
                break;
            case 2:
                obj3 = new C2920a(null);
                break;
            case 3:
                obj3 = m10085a(zzhmq, "��\u0001����\u0002\u0002\u0001������\u0002\t", new Object[]{"zzhmp"});
                break;
            case 4:
                obj3 = zzhmq;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cwy.class) {
                        try {
                            dep<cwy> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhmq);
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
}
