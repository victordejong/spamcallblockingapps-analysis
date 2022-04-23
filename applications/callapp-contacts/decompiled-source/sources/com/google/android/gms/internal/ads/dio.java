package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dio.class */
public final class dio extends dnh<dio, a> implements dov {
    private static volatile dpc<dio> zzek;
    private static final dio zziks;
    int zzikp;
    boolean zzikq;
    String zziko = "";
    String zzijv = "";
    String zzikr = "";

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dio$a.class */
    public static final class a extends dnh.b<dio, a> implements dov {
        private a() {
            super(dio.zziks);
        }

        /* synthetic */ a(din dinVar) {
            this();
        }
    }

    static {
        dio dioVar = new dio();
        zziks = dioVar;
        dnh.a(dio.class, dioVar);
    }

    private dio() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (din.f26850a[i - 1]) {
            case 1:
                return new dio();
            case 2:
                return new a(null);
            case 3:
                return a(zziks, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zziko", "zzijv", "zzikp", "zzikq", "zzikr"});
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
                                dpcVar2 = new dnh.a<>(zziks);
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
