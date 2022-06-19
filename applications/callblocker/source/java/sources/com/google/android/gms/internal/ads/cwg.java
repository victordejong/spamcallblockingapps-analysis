package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwg.class */
public final class cwg extends dcw<cwg, C2912a> implements dei {
    private static volatile dep<cwg> zzea;
    private static final cwg zzhma;
    private int zzhlz;

    /* renamed from: com.google.android.gms.internal.ads.cwg$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwg$a.class */
    public static final class C2912a extends dcw.C2955a<cwg, C2912a> implements dei {
        private C2912a() {
            super(cwg.zzhma);
        }

        /* synthetic */ C2912a(cwf cwfVar) {
            this();
        }
    }

    static {
        cwg cwgVar = new cwg();
        zzhma = cwgVar;
        dcw.m10083a(cwg.class, cwgVar);
    }

    private cwg() {
    }

    /* renamed from: b */
    public static cwg m10555b() {
        return zzhma;
    }

    /* renamed from: a */
    public final int m10556a() {
        return this.zzhlz;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cwg> depVar;
        switch (cwf.f13748a[i - 1]) {
            case 1:
                obj3 = new cwg();
                break;
            case 2:
                obj3 = new C2912a(null);
                break;
            case 3:
                obj3 = m10085a(zzhma, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzhlz"});
                break;
            case 4:
                obj3 = zzhma;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cwg.class) {
                        try {
                            dep<cwg> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhma);
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
