package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyj.class */
public final class cyj extends dcw<cyj, C2942a> implements dei {
    private static volatile dep<cyj> zzea;
    private static final cyj zzhpk;
    private String zzhpj = "";

    /* renamed from: com.google.android.gms.internal.ads.cyj$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyj$a.class */
    public static final class C2942a extends dcw.C2955a<cyj, C2942a> implements dei {
        private C2942a() {
            super(cyj.zzhpk);
        }

        /* synthetic */ C2942a(cyk cykVar) {
            this();
        }
    }

    static {
        cyj cyjVar = new cyj();
        zzhpk = cyjVar;
        dcw.m10083a(cyj.class, cyjVar);
    }

    private cyj() {
    }

    /* renamed from: a */
    public static cyj m10352a(dbi dbiVar, dci dciVar) {
        return (cyj) dcw.m10093a(zzhpk, dbiVar, dciVar);
    }

    /* renamed from: b */
    public static cyj m10351b() {
        return zzhpk;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cyj> depVar;
        switch (cyk.f13816a[i - 1]) {
            case 1:
                obj3 = new cyj();
                break;
            case 2:
                obj3 = new C2942a(null);
                break;
            case 3:
                obj3 = m10085a(zzhpk, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"zzhpj"});
                break;
            case 4:
                obj3 = zzhpk;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cyj.class) {
                        try {
                            dep<cyj> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhpk);
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
    public final String m10353a() {
        return this.zzhpj;
    }
}
