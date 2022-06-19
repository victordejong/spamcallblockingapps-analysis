package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dja.class */
public final class dja extends dnh<dja, C12372a> implements dov {
    private static volatile dpc<dja> zzek;
    private static final dja zzill;
    String zzilj = "";
    dik zzilk;

    /* renamed from: com.google.android.gms.internal.ads.dja$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dja$a.class */
    public static final class C12372a extends dnh.C12383b<dja, C12372a> implements dov {
        private C12372a() {
            super(dja.zzill);
        }

        /* synthetic */ C12372a(diz dizVar) {
            this();
        }
    }

    static {
        dja djaVar = new dja();
        zzill = djaVar;
        dnh.m16339a(dja.class, djaVar);
    }

    private dja() {
    }

    /* renamed from: a */
    public static dja m16585a() {
        return zzill;
    }

    /* renamed from: a */
    public static dja m16584a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dja) dnh.m16349a(zzill, dlwVar, dmtVar);
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (diz.f47099a[i - 1]) {
            case 1:
                return new dja();
            case 2:
                return new C12372a(null);
            case 3:
                return m16341a(zzill, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\t", new Object[]{"zzilj", "zzilk"});
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
                                dpcVar2 = new dnh.C12382a<>(zzill);
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
