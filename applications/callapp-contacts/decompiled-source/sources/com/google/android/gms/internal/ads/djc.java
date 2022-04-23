package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djc.class */
public final class djc extends dnh<djc, a> implements dov {
    private static volatile dpc<djc> zzek;
    private static final djc zzilv;
    private String zzilt = "";
    dnr<dio> zzilu = dph.d();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djc$a.class */
    public static final class a extends dnh.b<djc, a> implements dov {
        private a() {
            super(djc.zzilv);
        }

        /* synthetic */ a(dje djeVar) {
            this();
        }
    }

    static {
        djc djcVar = new djc();
        zzilv = djcVar;
        dnh.a(djc.class, djcVar);
    }

    private djc() {
    }

    public static djc a() {
        return zzilv;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dje.f26857a[i - 1]) {
            case 1:
                return new djc();
            case 2:
                return new a(null);
            case 3:
                return a(zzilv, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001Ȉ\u0002\u001b", new Object[]{"zzilt", "zzilu", dio.class});
            case 4:
                return zzilv;
            case 5:
                dpc<djc> dpcVar = zzek;
                dpc<djc> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (djc.class) {
                        try {
                            dpc<djc> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzilv);
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
