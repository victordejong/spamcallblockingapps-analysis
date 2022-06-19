package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djc.class */
public final class djc extends dnh<djc, C12373a> implements dov {
    private static volatile dpc<djc> zzek;
    private static final djc zzilv;
    private String zzilt = "";
    dnr<dio> zzilu = dph.m16197d();

    /* renamed from: com.google.android.gms.internal.ads.djc$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djc$a.class */
    public static final class C12373a extends dnh.C12383b<djc, C12373a> implements dov {
        private C12373a() {
            super(djc.zzilv);
        }

        /* synthetic */ C12373a(dje djeVar) {
            this();
        }
    }

    static {
        djc djcVar = new djc();
        zzilv = djcVar;
        dnh.m16339a(djc.class, djcVar);
    }

    private djc() {
    }

    /* renamed from: a */
    public static djc m16582a() {
        return zzilv;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dje.f47100a[i - 1]) {
            case 1:
                return new djc();
            case 2:
                return new C12373a(null);
            case 3:
                return m16341a(zzilv, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001Ȉ\u0002\u001b", new Object[]{"zzilt", "zzilu", dio.class});
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
                                dpcVar2 = new dnh.C12382a<>(zzilv);
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
