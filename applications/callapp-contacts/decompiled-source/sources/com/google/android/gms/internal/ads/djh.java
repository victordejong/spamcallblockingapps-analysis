package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djh.class */
public final class djh extends dnh<djh, a> implements dov {
    private static volatile dpc<djh> zzek;
    private static final djh zzilx;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djh$a.class */
    public static final class a extends dnh.b<djh, a> implements dov {
        private a() {
            super(djh.zzilx);
        }

        /* synthetic */ a(dji djiVar) {
            this();
        }
    }

    static {
        djh djhVar = new djh();
        zzilx = djhVar;
        dnh.a(djh.class, djhVar);
    }

    private djh() {
    }

    public static djh a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (djh) dnh.a(zzilx, dlwVar, dmtVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dji.f26859a[i - 1]) {
            case 1:
                return new djh();
            case 2:
                return new a(null);
            case 3:
                return a(zzilx, "����", (Object[]) null);
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
                                dpcVar2 = new dnh.a<>(zzilx);
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
