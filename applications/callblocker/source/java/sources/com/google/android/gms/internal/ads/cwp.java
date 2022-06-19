package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwp.class */
public final class cwp extends dcw<cwp, C2917a> implements dei {
    private static volatile dep<cwp> zzea;
    private static final cwp zzhmg;
    private int zzhlh;
    private int zzhlm;

    /* renamed from: com.google.android.gms.internal.ads.cwp$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwp$a.class */
    public static final class C2917a extends dcw.C2955a<cwp, C2917a> implements dei {
        private C2917a() {
            super(cwp.zzhmg);
        }

        /* synthetic */ C2917a(cwq cwqVar) {
            this();
        }
    }

    static {
        cwp cwpVar = new cwp();
        zzhmg = cwpVar;
        dcw.m10083a(cwp.class, cwpVar);
    }

    private cwp() {
    }

    /* renamed from: a */
    public static cwp m10519a(dbi dbiVar, dci dciVar) {
        return (cwp) dcw.m10093a(zzhmg, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final int m10520a() {
        return this.zzhlm;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cwp> depVar;
        switch (cwq.f13753a[i - 1]) {
            case 1:
                obj3 = new cwp();
                break;
            case 2:
                obj3 = new C2917a(null);
                break;
            case 3:
                obj3 = m10085a(zzhmg, "��\u0002����\u0002\u0003\u0002������\u0002\u000b\u0003\u000b", new Object[]{"zzhlm", "zzhlh"});
                break;
            case 4:
                obj3 = zzhmg;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cwp.class) {
                        try {
                            dep<cwp> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhmg);
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
