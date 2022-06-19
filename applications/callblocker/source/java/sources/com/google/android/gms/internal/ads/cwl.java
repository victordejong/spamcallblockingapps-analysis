package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwl.class */
public final class cwl extends dcw<cwl, C2915a> implements dei {
    private static volatile dep<cwl> zzea;
    private static final cwl zzhme;
    private int zzhlz;

    /* renamed from: com.google.android.gms.internal.ads.cwl$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwl$a.class */
    public static final class C2915a extends dcw.C2955a<cwl, C2915a> implements dei {
        private C2915a() {
            super(cwl.zzhme);
        }

        /* synthetic */ C2915a(cwm cwmVar) {
            this();
        }
    }

    static {
        cwl cwlVar = new cwl();
        zzhme = cwlVar;
        dcw.m10083a(cwl.class, cwlVar);
    }

    private cwl() {
    }

    /* renamed from: b */
    public static cwl m10533b() {
        return zzhme;
    }

    /* renamed from: a */
    public final int m10534a() {
        return this.zzhlz;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cwl> depVar;
        switch (cwm.f13751a[i - 1]) {
            case 1:
                obj3 = new cwl();
                break;
            case 2:
                obj3 = new C2915a(null);
                break;
            case 3:
                obj3 = m10085a(zzhme, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzhlz"});
                break;
            case 4:
                obj3 = zzhme;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cwl.class) {
                        try {
                            dep<cwl> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhme);
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
