package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwd.class */
public final class cwd extends dcw<cwd, C2911a> implements dei {
    private static volatile dep<cwd> zzea;
    private static final cwd zzhly;
    private int zzhlm;
    private cwg zzhlw;

    /* renamed from: com.google.android.gms.internal.ads.cwd$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwd$a.class */
    public static final class C2911a extends dcw.C2955a<cwd, C2911a> implements dei {
        private C2911a() {
            super(cwd.zzhly);
        }

        /* synthetic */ C2911a(cwe cweVar) {
            this();
        }
    }

    static {
        cwd cwdVar = new cwd();
        zzhly = cwdVar;
        dcw.m10083a(cwd.class, cwdVar);
    }

    private cwd() {
    }

    /* renamed from: a */
    public static cwd m10560a(dbi dbiVar, dci dciVar) {
        return (cwd) dcw.m10093a(zzhly, dbiVar, dciVar);
    }

    /* renamed from: c */
    public static cwd m10558c() {
        return zzhly;
    }

    /* renamed from: a */
    public final cwg m10561a() {
        return this.zzhlw == null ? cwg.m10555b() : this.zzhlw;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cwd> depVar;
        switch (cwe.f13747a[i - 1]) {
            case 1:
                obj3 = new cwd();
                break;
            case 2:
                obj3 = new C2911a(null);
                break;
            case 3:
                obj3 = m10085a(zzhly, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzhlw", "zzhlm"});
                break;
            case 4:
                obj3 = zzhly;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cwd.class) {
                        try {
                            dep<cwd> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhly);
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
    public final int m10559b() {
        return this.zzhlm;
    }
}
