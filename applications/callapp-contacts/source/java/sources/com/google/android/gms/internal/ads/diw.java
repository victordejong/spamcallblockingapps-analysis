package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/diw.class */
public final class diw extends dnh<diw, C12369a> implements dov {
    private static volatile dpc<diw> zzek;
    private static final diw zzilg;
    String zzilf = "";

    /* renamed from: com.google.android.gms.internal.ads.diw$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/diw$a.class */
    public static final class C12369a extends dnh.C12383b<diw, C12369a> implements dov {
        private C12369a() {
            super(diw.zzilg);
        }

        /* synthetic */ C12369a(div divVar) {
            this();
        }
    }

    static {
        diw diwVar = new diw();
        zzilg = diwVar;
        dnh.m16339a(diw.class, diwVar);
    }

    private diw() {
    }

    /* renamed from: a */
    public static diw m16596a() {
        return zzilg;
    }

    /* renamed from: a */
    public static diw m16595a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (diw) dnh.m16349a(zzilg, dlwVar, dmtVar);
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (div.f47097a[i - 1]) {
            case 1:
                return new diw();
            case 2:
                return new C12369a(null);
            case 3:
                return m16341a(zzilg, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"zzilf"});
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
                                dpcVar2 = new dnh.C12382a<>(zzilg);
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
