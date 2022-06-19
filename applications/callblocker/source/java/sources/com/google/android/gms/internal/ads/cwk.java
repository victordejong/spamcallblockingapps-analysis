package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwk.class */
public final class cwk extends dcw<cwk, C2914a> implements dei {
    private static volatile dep<cwk> zzea;
    private static final cwk zzhmd;
    private int zzhlm;
    private cwl zzhmb;

    /* renamed from: com.google.android.gms.internal.ads.cwk$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwk$a.class */
    public static final class C2914a extends dcw.C2955a<cwk, C2914a> implements dei {
        private C2914a() {
            super(cwk.zzhmd);
        }

        /* synthetic */ C2914a(cwj cwjVar) {
            this();
        }
    }

    static {
        cwk cwkVar = new cwk();
        zzhmd = cwkVar;
        dcw.m10083a(cwk.class, cwkVar);
    }

    private cwk() {
    }

    /* renamed from: a */
    public static cwk m10537a(dbi dbiVar, dci dciVar) {
        return (cwk) dcw.m10093a(zzhmd, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final cwl m10538a() {
        return this.zzhmb == null ? cwl.m10533b() : this.zzhmb;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cwk> depVar;
        switch (cwj.f13750a[i - 1]) {
            case 1:
                obj3 = new cwk();
                break;
            case 2:
                obj3 = new C2914a(null);
                break;
            case 3:
                obj3 = m10085a(zzhmd, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzhmb", "zzhlm"});
                break;
            case 4:
                obj3 = zzhmd;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cwk.class) {
                        try {
                            dep<cwk> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhmd);
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
    public final int m10536b() {
        return this.zzhlm;
    }
}
