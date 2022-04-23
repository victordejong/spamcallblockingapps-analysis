package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dic.class */
public final class dic extends dnh<dic, a> implements dov {
    private static volatile dpc<dic> zzek;
    private static final dic zzijs;
    private int zzihc;
    int zzihg;
    private did zzijq;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dic$a.class */
    public static final class a extends dnh.b<dic, a> implements dov {
        private a() {
            super(dic.zzijs);
        }

        /* synthetic */ a(dib dibVar) {
            this();
        }
    }

    static {
        dic dicVar = new dic();
        zzijs = dicVar;
        dnh.a(dic.class, dicVar);
    }

    private dic() {
    }

    public static dic a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dic) dnh.a(zzijs, dlwVar, dmtVar);
    }

    public static dic b() {
        return zzijs;
    }

    public final did a() {
        did didVar = this.zzijq;
        did didVar2 = didVar;
        if (didVar == null) {
            didVar2 = did.b();
        }
        return didVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dib.f26842a[i - 1]) {
            case 1:
                return new dic();
            case 2:
                return new a(null);
            case 3:
                return a(zzijs, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzijq", "zzihg", "zzihc"});
            case 4:
                return zzijs;
            case 5:
                dpc<dic> dpcVar = zzek;
                dpc<dic> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dic.class) {
                        try {
                            dpc<dic> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzijs);
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
