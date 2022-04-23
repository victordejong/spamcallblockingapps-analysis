package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhq.class */
public final class dhq extends dnh<dhq, a> implements dov {
    private static volatile dpc<dhq> zzek;
    private static final dhq zziiu;
    int zzihc;
    dlw zzihd = dlw.f26941a;
    private dhr zziit;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhq$a.class */
    public static final class a extends dnh.b<dhq, a> implements dov {
        private a() {
            super(dhq.zziiu);
        }

        /* synthetic */ a(dhp dhpVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dhq) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(dhr dhrVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dhq.a((dhq) this.f26993a, dhrVar);
            return this;
        }

        public final a a(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dhq.a((dhq) this.f26993a, dlwVar);
            return this;
        }
    }

    static {
        dhq dhqVar = new dhq();
        zziiu = dhqVar;
        dnh.a(dhq.class, dhqVar);
    }

    private dhq() {
    }

    public static dhq a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhq) dnh.a(zziiu, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dhq dhqVar, dhr dhrVar) {
        dhrVar.getClass();
        dhqVar.zziit = dhrVar;
    }

    static /* synthetic */ void a(dhq dhqVar, dlw dlwVar) {
        dlwVar.getClass();
        dhqVar.zzihd = dlwVar;
    }

    public static a b() {
        return zziiu.i();
    }

    public final dhr a() {
        dhr dhrVar = this.zziit;
        dhr dhrVar2 = dhrVar;
        if (dhrVar == null) {
            dhrVar2 = dhr.c();
        }
        return dhrVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dhp.f26838a[i - 1]) {
            case 1:
                return new dhq();
            case 2:
                return new a(null);
            case 3:
                return a(zziiu, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zziit", "zzihd"});
            case 4:
                return zziiu;
            case 5:
                dpc<dhq> dpcVar = zzek;
                dpc<dhq> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhq.class) {
                        try {
                            dpc<dhq> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zziiu);
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
