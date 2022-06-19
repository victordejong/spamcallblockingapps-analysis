package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwz.class */
public final class cwz extends dcw<cwz, C2921a> implements dei {
    private static volatile dep<cwz> zzea;
    private static final cwz zzhms;
    private cxc zzhmr;

    /* renamed from: com.google.android.gms.internal.ads.cwz$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwz$a.class */
    public static final class C2921a extends dcw.C2955a<cwz, C2921a> implements dei {
        private C2921a() {
            super(cwz.zzhms);
        }

        /* synthetic */ C2921a(cxa cxaVar) {
            this();
        }
    }

    static {
        cwz cwzVar = new cwz();
        zzhms = cwzVar;
        dcw.m10083a(cwz.class, cwzVar);
    }

    private cwz() {
    }

    /* renamed from: a */
    public static cwz m10499a(dbi dbiVar, dci dciVar) {
        return (cwz) dcw.m10093a(zzhms, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final cxc m10500a() {
        return this.zzhmr == null ? cxc.m10494d() : this.zzhmr;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cwz> depVar;
        switch (cxa.f13765a[i - 1]) {
            case 1:
                obj3 = new cwz();
                break;
            case 2:
                obj3 = new C2921a(null);
                break;
            case 3:
                obj3 = m10085a(zzhms, "��\u0001����\u0001\u0001\u0001������\u0001\t", new Object[]{"zzhmr"});
                break;
            case 4:
                obj3 = zzhms;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cwz.class) {
                        try {
                            dep<cwz> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhms);
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
