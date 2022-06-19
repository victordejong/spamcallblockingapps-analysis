package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyw.class */
public final class cyw extends dcw<cyw, C2947a> implements dei {
    private static volatile dep<cyw> zzea;
    private static final cyw zzhqb;

    /* renamed from: com.google.android.gms.internal.ads.cyw$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cyw$a.class */
    public static final class C2947a extends dcw.C2955a<cyw, C2947a> implements dei {
        private C2947a() {
            super(cyw.zzhqb);
        }

        /* synthetic */ C2947a(cyv cyvVar) {
            this();
        }
    }

    static {
        cyw cywVar = new cyw();
        zzhqb = cywVar;
        dcw.m10083a(cyw.class, cywVar);
    }

    private cyw() {
    }

    /* renamed from: a */
    public static cyw m10317a(dbi dbiVar, dci dciVar) {
        return (cyw) dcw.m10093a(zzhqb, dbiVar, dciVar);
    }

    /* JADX WARN: Type inference failed for: r6v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cyw> depVar;
        switch (cyv.f13830a[i - 1]) {
            case 1:
                obj3 = new cyw();
                break;
            case 2:
                obj3 = new C2947a(null);
                break;
            case 3:
                obj3 = m10085a(zzhqb, "����", (Object[]) null);
                break;
            case 4:
                obj3 = zzhqb;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cyw.class) {
                        try {
                            dep<cyw> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhqb);
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
