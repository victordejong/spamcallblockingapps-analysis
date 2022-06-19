package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyb.class */
public final class cyb extends dcw<cyb, C2934a> implements dei {
    private static volatile dep<cyb> zzea;
    private static final cyb zzhow;
    private int zzhot;
    private boolean zzhou;
    private String zzhos = "";
    private String zzhnz = "";
    private String zzhov = "";

    /* renamed from: com.google.android.gms.internal.ads.cyb$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyb$a.class */
    public static final class C2934a extends dcw.C2955a<cyb, C2934a> implements dei {
        private C2934a() {
            super(cyb.zzhow);
        }

        /* synthetic */ C2934a(cyc cycVar) {
            this();
        }
    }

    static {
        cyb cybVar = new cyb();
        zzhow = cybVar;
        dcw.m10083a(cyb.class, cybVar);
    }

    private cyb() {
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cyb> depVar;
        switch (cyc.f13812a[i - 1]) {
            case 1:
                obj3 = new cyb();
                break;
            case 2:
                obj3 = new C2934a(null);
                break;
            case 3:
                obj3 = m10085a(zzhow, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzhos", "zzhnz", "zzhot", "zzhou", "zzhov"});
                break;
            case 4:
                obj3 = zzhow;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cyb.class) {
                        try {
                            dep<cyb> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhow);
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
    public final String m10403a() {
        return this.zzhos;
    }

    /* renamed from: b */
    public final String m10402b() {
        return this.zzhnz;
    }

    /* renamed from: c */
    public final int m10401c() {
        return this.zzhot;
    }

    /* renamed from: d */
    public final boolean m10400d() {
        return this.zzhou;
    }

    /* renamed from: e */
    public final String m10399e() {
        return this.zzhov;
    }
}
