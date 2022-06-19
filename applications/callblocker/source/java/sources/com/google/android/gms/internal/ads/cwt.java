package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwt.class */
public final class cwt extends dcw<cwt, C2919a> implements dei {
    private static volatile dep<cwt> zzea;
    private static final cwt zzhmi;

    /* renamed from: com.google.android.gms.internal.ads.cwt$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwt$a.class */
    public static final class C2919a extends dcw.C2955a<cwt, C2919a> implements dei {
        private C2919a() {
            super(cwt.zzhmi);
        }

        /* synthetic */ C2919a(cwu cwuVar) {
            this();
        }
    }

    static {
        cwt cwtVar = new cwt();
        zzhmi = cwtVar;
        dcw.m10083a(cwt.class, cwtVar);
    }

    private cwt() {
    }

    /* renamed from: a */
    public static cwt m10505a(dbi dbiVar, dci dciVar) {
        return (cwt) dcw.m10093a(zzhmi, dbiVar, dciVar);
    }

    /* JADX WARN: Type inference failed for: r6v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cwt> depVar;
        switch (cwu.f13755a[i - 1]) {
            case 1:
                obj3 = new cwt();
                break;
            case 2:
                obj3 = new C2919a(null);
                break;
            case 3:
                obj3 = m10085a(zzhmi, "����", (Object[]) null);
                break;
            case 4:
                obj3 = zzhmi;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cwt.class) {
                        try {
                            dep<cwt> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhmi);
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
