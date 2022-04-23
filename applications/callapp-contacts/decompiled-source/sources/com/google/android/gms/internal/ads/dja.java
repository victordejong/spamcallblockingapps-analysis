package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dja.class */
public final class dja extends dnh<dja, a> implements dov {
    private static volatile dpc<dja> zzek;
    private static final dja zzill;
    String zzilj = "";
    dik zzilk;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dja$a.class */
    public static final class a extends dnh.b<dja, a> implements dov {
        private a() {
            super(dja.zzill);
        }

        /* synthetic */ a(diz dizVar) {
            this();
        }
    }

    static {
        dja djaVar = new dja();
        zzill = djaVar;
        dnh.a(dja.class, djaVar);
    }

    private dja() {
    }

    public static dja a() {
        return zzill;
    }

    public static dja a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dja) dnh.a(zzill, dlwVar, dmtVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (diz.f26856a[i - 1]) {
            case 1:
                return new dja();
            case 2:
                return new a(null);
            case 3:
                return a(zzill, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\t", new Object[]{"zzilj", "zzilk"});
            case 4:
                return zzill;
            case 5:
                dpc<dja> dpcVar = zzek;
                dpc<dja> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dja.class) {
                        try {
                            dpc<dja> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzill);
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
