package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvv.class */
public final class cvv extends dcw<cvv, C2906a> implements dei {
    private static volatile dep<cvv> zzea;
    private static final cvv zzhlp;
    private int zzhlo;

    /* renamed from: com.google.android.gms.internal.ads.cvv$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvv$a.class */
    public static final class C2906a extends dcw.C2955a<cvv, C2906a> implements dei {
        private C2906a() {
            super(cvv.zzhlp);
        }

        /* synthetic */ C2906a(cvw cvwVar) {
            this();
        }
    }

    static {
        cvv cvvVar = new cvv();
        zzhlp = cvvVar;
        dcw.m10083a(cvv.class, cvvVar);
    }

    private cvv() {
    }

    /* renamed from: b */
    public static cvv m10601b() {
        return zzhlp;
    }

    /* renamed from: a */
    public final int m10602a() {
        return this.zzhlo;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cvv> depVar;
        switch (cvw.f13739a[i - 1]) {
            case 1:
                obj3 = new cvv();
                break;
            case 2:
                obj3 = new C2906a(null);
                break;
            case 3:
                obj3 = m10085a(zzhlp, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzhlo"});
                break;
            case 4:
                obj3 = zzhlp;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cvv.class) {
                        try {
                            dep<cvv> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhlp);
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
