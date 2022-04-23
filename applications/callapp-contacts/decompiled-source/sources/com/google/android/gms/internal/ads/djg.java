package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djg.class */
public final class djg extends dnh<djg, a> implements dov {
    private static volatile dpc<djg> zzek;
    private static final djg zzilw;
    int zzihc;
    dlw zzihd = dlw.f26941a;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djg$a.class */
    public static final class a extends dnh.b<djg, a> implements dov {
        private a() {
            super(djg.zzilw);
        }

        /* synthetic */ a(djf djfVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((djg) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            djg.a((djg) this.f26993a, dlwVar);
            return this;
        }
    }

    static {
        djg djgVar = new djg();
        zzilw = djgVar;
        dnh.a(djg.class, djgVar);
    }

    private djg() {
    }

    public static a a() {
        return zzilw.i();
    }

    public static djg a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (djg) dnh.a(zzilw, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(djg djgVar, dlw dlwVar) {
        dlwVar.getClass();
        djgVar.zzihd = dlwVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (djf.f26858a[i - 1]) {
            case 1:
                return new djg();
            case 2:
                return new a(null);
            case 3:
                return a(zzilw, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzihc", "zzihd"});
            case 4:
                return zzilw;
            case 5:
                dpc<djg> dpcVar = zzek;
                dpc<djg> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (djg.class) {
                        try {
                            dpc<djg> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzilw);
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
