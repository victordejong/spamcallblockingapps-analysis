package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/did.class */
public final class did extends dnh<did, C12357a> implements dov {
    private static volatile dpc<did> zzek;
    private static final did zziju;
    int zzihi;
    private int zzijt;

    /* renamed from: com.google.android.gms.internal.ads.did$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/did$a.class */
    public static final class C12357a extends dnh.C12383b<did, C12357a> implements dov {
        private C12357a() {
            super(did.zziju);
        }

        /* synthetic */ C12357a(dif difVar) {
            this();
        }
    }

    static {
        did didVar = new did();
        zziju = didVar;
        dnh.m16339a(did.class, didVar);
    }

    private did() {
    }

    /* renamed from: b */
    public static did m16645b() {
        return zziju;
    }

    /* renamed from: a */
    public final dhw m16646a() {
        dhw zzfp = dhw.zzfp(this.zzijt);
        dhw dhwVar = zzfp;
        if (zzfp == null) {
            dhwVar = dhw.UNRECOGNIZED;
        }
        return dhwVar;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dif.f47090a[i - 1]) {
            case 1:
                return new did();
            case 2:
                return new C12357a(null);
            case 3:
                return m16341a(zziju, "��\u0002����\u0001\u0002\u0002������\u0001\f\u0002\u000b", new Object[]{"zzijt", "zzihi"});
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
                                dpcVar2 = new dnh.C12382a<>(zziju);
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
