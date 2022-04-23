package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/diw.class */
public final class diw extends dnh<diw, a> implements dov {
    private static volatile dpc<diw> zzek;
    private static final diw zzilg;
    String zzilf = "";

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/diw$a.class */
    public static final class a extends dnh.b<diw, a> implements dov {
        private a() {
            super(diw.zzilg);
        }

        /* synthetic */ a(div divVar) {
            this();
        }
    }

    static {
        diw diwVar = new diw();
        zzilg = diwVar;
        dnh.a(diw.class, diwVar);
    }

    private diw() {
    }

    public static diw a() {
        return zzilg;
    }

    public static diw a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (diw) dnh.a(zzilg, dlwVar, dmtVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (div.f26854a[i - 1]) {
            case 1:
                return new diw();
            case 2:
                return new a(null);
            case 3:
                return a(zzilg, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"zzilf"});
            case 4:
                return zzilg;
            case 5:
                dpc<diw> dpcVar = zzek;
                dpc<diw> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (diw.class) {
                        try {
                            dpc<diw> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzilg);
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
