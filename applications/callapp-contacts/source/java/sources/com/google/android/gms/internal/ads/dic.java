package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dic.class */
public final class dic extends dnh<dic, C12356a> implements dov {
    private static volatile dpc<dic> zzek;
    private static final dic zzijs;
    private int zzihc;
    int zzihg;
    private did zzijq;

    /* renamed from: com.google.android.gms.internal.ads.dic$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dic$a.class */
    public static final class C12356a extends dnh.C12383b<dic, C12356a> implements dov {
        private C12356a() {
            super(dic.zzijs);
        }

        /* synthetic */ C12356a(dib dibVar) {
            this();
        }
    }

    static {
        dic dicVar = new dic();
        zzijs = dicVar;
        dnh.m16339a(dic.class, dicVar);
    }

    private dic() {
    }

    /* renamed from: a */
    public static dic m16649a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dic) dnh.m16349a(zzijs, dlwVar, dmtVar);
    }

    /* renamed from: b */
    public static dic m16648b() {
        return zzijs;
    }

    /* renamed from: a */
    public final did m16650a() {
        did didVar = this.zzijq;
        did didVar2 = didVar;
        if (didVar == null) {
            didVar2 = did.m16645b();
        }
        return didVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dib.f47083a[i - 1]) {
            case 1:
                return new dic();
            case 2:
                return new C12356a(null);
            case 3:
                return m16341a(zzijs, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzijq", "zzihg", "zzihc"});
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
                                dpcVar2 = new dnh.C12382a<>(zzijs);
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
