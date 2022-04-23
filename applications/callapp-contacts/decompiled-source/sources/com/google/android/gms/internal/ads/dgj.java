package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgj.class */
public final class dgj extends dnh<dgj, a> implements dov {
    private static volatile dpc<dgj> zzek;
    private static final dgj zzihr;
    int zzihc;
    dlw zzihd = dlw.f26941a;
    private dgn zzihq;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgj$a.class */
    public static final class a extends dnh.b<dgj, a> implements dov {
        private a() {
            super(dgj.zzihr);
        }

        /* synthetic */ a(dgk dgkVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dgj) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(dgn dgnVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dgj.a((dgj) this.f26993a, dgnVar);
            return this;
        }

        public final a a(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dgj.a((dgj) this.f26993a, dlwVar);
            return this;
        }
    }

    static {
        dgj dgjVar = new dgj();
        zzihr = dgjVar;
        dnh.a(dgj.class, dgjVar);
    }

    private dgj() {
    }

    public static dgj a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgj) dnh.a(zzihr, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dgj dgjVar, dgn dgnVar) {
        dgnVar.getClass();
        dgjVar.zzihq = dgnVar;
    }

    static /* synthetic */ void a(dgj dgjVar, dlw dlwVar) {
        dlwVar.getClass();
        dgjVar.zzihd = dlwVar;
    }

    public static a b() {
        return zzihr.i();
    }

    public static dgj c() {
        return zzihr;
    }

    public final dgn a() {
        dgn dgnVar = this.zzihq;
        dgn dgnVar2 = dgnVar;
        if (dgnVar == null) {
            dgnVar2 = dgn.a();
        }
        return dgnVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgk.f26823a[i - 1]) {
            case 1:
                return new dgj();
            case 2:
                return new a(null);
            case 3:
                return a(zzihr, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zzihq", "zzihd"});
            case 4:
                return zzihr;
            case 5:
                dpc<dgj> dpcVar = zzek;
                dpc<dgj> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgj.class) {
                        try {
                            dpc<dgj> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzihr);
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
