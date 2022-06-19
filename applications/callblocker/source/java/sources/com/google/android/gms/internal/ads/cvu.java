package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvu.class */
public final class cvu extends dcw<cvu, C2905a> implements dei {
    private static volatile dep<cvu> zzea;
    private static final cvu zzhln;
    private cvv zzhlj;
    private int zzhlm;

    /* renamed from: com.google.android.gms.internal.ads.cvu$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvu$a.class */
    public static final class C2905a extends dcw.C2955a<cvu, C2905a> implements dei {
        private C2905a() {
            super(cvu.zzhln);
        }

        /* synthetic */ C2905a(cvt cvtVar) {
            this();
        }
    }

    static {
        cvu cvuVar = new cvu();
        zzhln = cvuVar;
        dcw.m10083a(cvu.class, cvuVar);
    }

    private cvu() {
    }

    /* renamed from: a */
    public static cvu m10605a(dbi dbiVar, dci dciVar) {
        return (cvu) dcw.m10093a(zzhln, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final int m10606a() {
        return this.zzhlm;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cvu> depVar;
        switch (cvt.f13738a[i - 1]) {
            case 1:
                obj3 = new cvu();
                break;
            case 2:
                obj3 = new C2905a(null);
                break;
            case 3:
                obj3 = m10085a(zzhln, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzhlm", "zzhlj"});
                break;
            case 4:
                obj3 = zzhln;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cvu.class) {
                        try {
                            dep<cvu> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhln);
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
    public final cvv m10604b() {
        return this.zzhlj == null ? cvv.m10601b() : this.zzhlj;
    }
}
