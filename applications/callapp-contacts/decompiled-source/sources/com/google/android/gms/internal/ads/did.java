package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/did.class */
public final class did extends dnh<did, a> implements dov {
    private static volatile dpc<did> zzek;
    private static final did zziju;
    int zzihi;
    private int zzijt;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/did$a.class */
    public static final class a extends dnh.b<did, a> implements dov {
        private a() {
            super(did.zziju);
        }

        /* synthetic */ a(dif difVar) {
            this();
        }
    }

    static {
        did didVar = new did();
        zziju = didVar;
        dnh.a(did.class, didVar);
    }

    private did() {
    }

    public static did b() {
        return zziju;
    }

    public final dhw a() {
        dhw zzfp = dhw.zzfp(this.zzijt);
        dhw dhwVar = zzfp;
        if (zzfp == null) {
            dhwVar = dhw.UNRECOGNIZED;
        }
        return dhwVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dif.f26847a[i - 1]) {
            case 1:
                return new did();
            case 2:
                return new a(null);
            case 3:
                return a(zziju, "��\u0002����\u0001\u0002\u0002������\u0001\f\u0002\u000b", new Object[]{"zzijt", "zzihi"});
            case 4:
                return zziju;
            case 5:
                dpc<did> dpcVar = zzek;
                dpc<did> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (did.class) {
                        try {
                            dpc<did> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zziju);
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
