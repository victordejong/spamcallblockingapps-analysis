package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyn.class */
public final class cyn extends dcw<cyn, C2944a> implements dei {
    private static volatile dep<cyn> zzea;
    private static final cyn zzhpp;
    private String zzhpn = "";
    private cya zzhpo;

    /* renamed from: com.google.android.gms.internal.ads.cyn$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyn$a.class */
    public static final class C2944a extends dcw.C2955a<cyn, C2944a> implements dei {
        private C2944a() {
            super(cyn.zzhpp);
        }

        /* synthetic */ C2944a(cyo cyoVar) {
            this();
        }
    }

    static {
        cyn cynVar = new cyn();
        zzhpp = cynVar;
        dcw.m10083a(cyn.class, cynVar);
    }

    private cyn() {
    }

    /* renamed from: a */
    public static cyn m10337a(dbi dbiVar, dci dciVar) {
        return (cyn) dcw.m10093a(zzhpp, dbiVar, dciVar);
    }

    /* renamed from: c */
    public static cyn m10335c() {
        return zzhpp;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cyn> depVar;
        switch (cyo.f13818a[i - 1]) {
            case 1:
                obj3 = new cyn();
                break;
            case 2:
                obj3 = new C2944a(null);
                break;
            case 3:
                obj3 = m10085a(zzhpp, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\t", new Object[]{"zzhpn", "zzhpo"});
                break;
            case 4:
                obj3 = zzhpp;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cyn.class) {
                        try {
                            dep<cyn> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhpp);
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
    public final String m10338a() {
        return this.zzhpn;
    }

    /* renamed from: b */
    public final cya m10336b() {
        return this.zzhpo == null ? cya.m10405c() : this.zzhpo;
    }
}
