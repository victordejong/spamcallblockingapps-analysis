package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvz.class */
public final class cvz extends dcw<cvz, C2908a> implements dei {
    private static volatile dep<cvz> zzea;
    private static final cvz zzhlv;
    private cwd zzhlt;
    private cxq zzhlu;

    /* renamed from: com.google.android.gms.internal.ads.cvz$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvz$a.class */
    public static final class C2908a extends dcw.C2955a<cvz, C2908a> implements dei {
        private C2908a() {
            super(cvz.zzhlv);
        }

        /* synthetic */ C2908a(cwa cwaVar) {
            this();
        }
    }

    static {
        cvz cvzVar = new cvz();
        zzhlv = cvzVar;
        dcw.m10083a(cvz.class, cvzVar);
    }

    private cvz() {
    }

    /* renamed from: a */
    public static cvz m10583a(dbi dbiVar, dci dciVar) {
        return (cvz) dcw.m10093a(zzhlv, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final cwd m10584a() {
        return this.zzhlt == null ? cwd.m10558c() : this.zzhlt;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cvz> depVar;
        switch (cwa.f13745a[i - 1]) {
            case 1:
                obj3 = new cvz();
                break;
            case 2:
                obj3 = new C2908a(null);
                break;
            case 3:
                obj3 = m10085a(zzhlv, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"zzhlt", "zzhlu"});
                break;
            case 4:
                obj3 = zzhlv;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cvz.class) {
                        try {
                            dep<cvz> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhlv);
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
    public final cxq m10582b() {
        return this.zzhlu == null ? cxq.m10431c() : this.zzhlu;
    }
}
