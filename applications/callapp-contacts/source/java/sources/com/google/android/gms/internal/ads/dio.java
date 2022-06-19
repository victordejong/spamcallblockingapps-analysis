package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dio.class */
public final class dio extends dnh<dio, C12361a> implements dov {
    private static volatile dpc<dio> zzek;
    private static final dio zziks;
    int zzikp;
    boolean zzikq;
    String zziko = "";
    String zzijv = "";
    String zzikr = "";

    /* renamed from: com.google.android.gms.internal.ads.dio$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dio$a.class */
    public static final class C12361a extends dnh.C12383b<dio, C12361a> implements dov {
        private C12361a() {
            super(dio.zziks);
        }

        /* synthetic */ C12361a(din dinVar) {
            this();
        }
    }

    static {
        dio dioVar = new dio();
        zziks = dioVar;
        dnh.m16339a(dio.class, dioVar);
    }

    private dio() {
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (din.f47093a[i - 1]) {
            case 1:
                return new dio();
            case 2:
                return new C12361a(null);
            case 3:
                return m16341a(zziks, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zziko", "zzijv", "zzikp", "zzikq", "zzikr"});
            case 4:
                return zziks;
            case 5:
                dpc<dio> dpcVar = zzek;
                dpc<dio> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dio.class) {
                        try {
                            dpc<dio> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zziks);
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
