package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgj.class */
public final class dgj extends dnh<dgj, C12335a> implements dov {
    private static volatile dpc<dgj> zzek;
    private static final dgj zzihr;
    int zzihc;
    dlw zzihd = dlw.f47199a;
    private dgn zzihq;

    /* renamed from: com.google.android.gms.internal.ads.dgj$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgj$a.class */
    public static final class C12335a extends dnh.C12383b<dgj, C12335a> implements dov {
        private C12335a() {
            super(dgj.zzihr);
        }

        /* synthetic */ C12335a(dgk dgkVar) {
            this();
        }

        /* renamed from: a */
        public final C12335a m16750a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dgj) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12335a m16749a(dgn dgnVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dgj.m16756a((dgj) this.f47274a, dgnVar);
            return this;
        }

        /* renamed from: a */
        public final C12335a m16748a(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dgj.m16755a((dgj) this.f47274a, dlwVar);
            return this;
        }
    }

    static {
        dgj dgjVar = new dgj();
        zzihr = dgjVar;
        dnh.m16339a(dgj.class, dgjVar);
    }

    private dgj() {
    }

    /* renamed from: a */
    public static dgj m16754a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgj) dnh.m16349a(zzihr, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16756a(dgj dgjVar, dgn dgnVar) {
        dgnVar.getClass();
        dgjVar.zzihq = dgnVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m16755a(dgj dgjVar, dlw dlwVar) {
        dlwVar.getClass();
        dgjVar.zzihd = dlwVar;
    }

    /* renamed from: b */
    public static C12335a m16753b() {
        return zzihr.m16335i();
    }

    /* renamed from: c */
    public static dgj m16752c() {
        return zzihr;
    }

    /* renamed from: a */
    public final dgn m16758a() {
        dgn dgnVar = this.zzihq;
        dgn dgnVar2 = dgnVar;
        if (dgnVar == null) {
            dgnVar2 = dgn.m16743a();
        }
        return dgnVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dgk.f47064a[i - 1]) {
            case 1:
                return new dgj();
            case 2:
                return new C12335a(null);
            case 3:
                return m16341a(zzihr, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zzihq", "zzihd"});
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
                                dpcVar2 = new dnh.C12382a<>(zzihr);
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
