package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cys.class */
public final class cys extends dcw<cys, C2945a> implements dei {
    private static volatile dep<cys> zzea;
    private static final cys zzhpz;
    private String zzhpx = "";
    private dde<cyb> zzhpy = m10075t();

    /* renamed from: com.google.android.gms.internal.ads.cys$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cys$a.class */
    public static final class C2945a extends dcw.C2955a<cys, C2945a> implements dei {
        private C2945a() {
            super(cys.zzhpz);
        }

        /* synthetic */ C2945a(cyr cyrVar) {
            this();
        }
    }

    static {
        cys cysVar = new cys();
        zzhpz = cysVar;
        dcw.m10083a(cys.class, cysVar);
    }

    private cys() {
    }

    /* renamed from: b */
    public static cys m10331b() {
        return zzhpz;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cys> depVar;
        switch (cyr.f13828a[i - 1]) {
            case 1:
                obj3 = new cys();
                break;
            case 2:
                obj3 = new C2945a(null);
                break;
            case 3:
                obj3 = m10085a(zzhpz, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001Ȉ\u0002\u001b", new Object[]{"zzhpx", "zzhpy", cyb.class});
                break;
            case 4:
                obj3 = zzhpz;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cys.class) {
                        try {
                            dep<cys> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhpz);
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
    public final List<cyb> m10332a() {
        return this.zzhpy;
    }
}
