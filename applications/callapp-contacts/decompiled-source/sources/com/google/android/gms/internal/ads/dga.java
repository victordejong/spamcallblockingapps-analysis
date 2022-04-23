package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dga.class */
public final class dga extends dnh<dga, a> implements dov {
    private static volatile dpc<dga> zzek;
    private static final dga zzihh;
    private dge zzihe;
    int zzihg;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dga$a.class */
    public static final class a extends dnh.b<dga, a> implements dov {
        private a() {
            super(dga.zzihh);
        }

        /* synthetic */ a(dgb dgbVar) {
            this();
        }
    }

    static {
        dga dgaVar = new dga();
        zzihh = dgaVar;
        dnh.a(dga.class, dgaVar);
    }

    private dga() {
    }

    public static dga a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dga) dnh.a(zzihh, dlwVar, dmtVar);
    }

    public final dge a() {
        dge dgeVar = this.zzihe;
        dge dgeVar2 = dgeVar;
        if (dgeVar == null) {
            dgeVar2 = dge.a();
        }
        return dgeVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgb.f26816a[i - 1]) {
            case 1:
                return new dga();
            case 2:
                return new a(null);
            case 3:
                return a(zzihh, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzihg", "zzihe"});
            case 4:
                return zzihh;
            case 5:
                dpc<dga> dpcVar = zzek;
                dpc<dga> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dga.class) {
                        try {
                            dpc<dga> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzihh);
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
