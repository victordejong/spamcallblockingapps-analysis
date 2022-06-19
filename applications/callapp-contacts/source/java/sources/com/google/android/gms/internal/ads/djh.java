package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djh.class */
public final class djh extends dnh<djh, C12375a> implements dov {
    private static volatile dpc<djh> zzek;
    private static final djh zzilx;

    /* renamed from: com.google.android.gms.internal.ads.djh$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djh$a.class */
    public static final class C12375a extends dnh.C12383b<djh, C12375a> implements dov {
        private C12375a() {
            super(djh.zzilx);
        }

        /* synthetic */ C12375a(dji djiVar) {
            this();
        }
    }

    static {
        djh djhVar = new djh();
        zzilx = djhVar;
        dnh.m16339a(djh.class, djhVar);
    }

    private djh() {
    }

    /* renamed from: a */
    public static djh m16572a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (djh) dnh.m16349a(zzilx, dlwVar, dmtVar);
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dji.f47102a[i - 1]) {
            case 1:
                return new djh();
            case 2:
                return new C12375a(null);
            case 3:
                return m16341a(zzilx, "����", (Object[]) null);
            case 4:
                return zzilx;
            case 5:
                dpc<djh> dpcVar = zzek;
                dpc<djh> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (djh.class) {
                        try {
                            dpc<djh> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzilx);
                                zzek = dpcVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return dpcVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
