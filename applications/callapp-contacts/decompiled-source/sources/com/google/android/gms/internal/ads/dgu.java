package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgu.class */
public final class dgu extends dnh<dgu, a> implements dov {
    private static volatile dpc<dgu> zzek;
    private static final dgu zzihy;
    int zziht;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgu$a.class */
    public static final class a extends dnh.b<dgu, a> implements dov {
        private a() {
            super(dgu.zzihy);
        }

        /* synthetic */ a(dgt dgtVar) {
            this();
        }
    }

    static {
        dgu dguVar = new dgu();
        zzihy = dguVar;
        dnh.a(dgu.class, dguVar);
    }

    private dgu() {
    }

    public static dgu a() {
        return zzihy;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgt.f26828a[i - 1]) {
            case 1:
                return new dgu();
            case 2:
                return new a(null);
            case 3:
                return a(zzihy, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zziht"});
            case 4:
                return zzihy;
            case 5:
                dpc<dgu> dpcVar = zzek;
                dpc<dgu> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgu.class) {
                        try {
                            dpc<dgu> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzihy);
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
