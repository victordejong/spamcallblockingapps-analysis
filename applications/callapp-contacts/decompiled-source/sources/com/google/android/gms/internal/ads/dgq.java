package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgq.class */
public final class dgq extends dnh<dgq, a> implements dov {
    private static volatile dpc<dgq> zzek;
    private static final dgq zzihw;
    int zzihc;
    dlw zzihd = dlw.f26941a;
    private dgu zzihv;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgq$a.class */
    public static final class a extends dnh.b<dgq, a> implements dov {
        private a() {
            super(dgq.zzihw);
        }

        /* synthetic */ a(dgp dgpVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dgq) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(dgu dguVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dgq.a((dgq) this.f26993a, dguVar);
            return this;
        }

        public final a a(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dgq.a((dgq) this.f26993a, dlwVar);
            return this;
        }
    }

    static {
        dgq dgqVar = new dgq();
        zzihw = dgqVar;
        dnh.a(dgq.class, dgqVar);
    }

    private dgq() {
    }

    public static dgq a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgq) dnh.a(zzihw, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dgq dgqVar, dgu dguVar) {
        dguVar.getClass();
        dgqVar.zzihv = dguVar;
    }

    static /* synthetic */ void a(dgq dgqVar, dlw dlwVar) {
        dlwVar.getClass();
        dgqVar.zzihd = dlwVar;
    }

    public static a b() {
        return zzihw.i();
    }

    public final dgu a() {
        dgu dguVar = this.zzihv;
        dgu dguVar2 = dguVar;
        if (dguVar == null) {
            dguVar2 = dgu.a();
        }
        return dguVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgp.f26826a[i - 1]) {
            case 1:
                return new dgq();
            case 2:
                return new a(null);
            case 3:
                return a(zzihw, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zzihv", "zzihd"});
            case 4:
                return zzihw;
            case 5:
                dpc<dgq> dpcVar = zzek;
                dpc<dgq> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgq.class) {
                        try {
                            dpc<dgq> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzihw);
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
