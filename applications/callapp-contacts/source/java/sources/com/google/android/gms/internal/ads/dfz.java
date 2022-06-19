package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfz.class */
public final class dfz extends dnh<dfz, C12329a> implements dov {
    private static volatile dpc<dfz> zzek;
    private static final dfz zzihf;
    int zzihc;
    dlw zzihd = dlw.f47199a;
    private dge zzihe;

    /* renamed from: com.google.android.gms.internal.ads.dfz$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfz$a.class */
    public static final class C12329a extends dnh.C12383b<dfz, C12329a> implements dov {
        private C12329a() {
            super(dfz.zzihf);
        }

        /* synthetic */ C12329a(dfy dfyVar) {
            this();
        }

        /* renamed from: a */
        public final C12329a m16784a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dfz) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12329a m16783a(dge dgeVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dfz.m16789a((dfz) this.f47274a, dgeVar);
            return this;
        }

        /* renamed from: a */
        public final C12329a m16782a(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dfz.m16788a((dfz) this.f47274a, dlwVar);
            return this;
        }
    }

    static {
        dfz dfzVar = new dfz();
        zzihf = dfzVar;
        dnh.m16339a(dfz.class, dfzVar);
    }

    private dfz() {
    }

    /* renamed from: a */
    public static dfz m16787a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dfz) dnh.m16349a(zzihf, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16789a(dfz dfzVar, dge dgeVar) {
        dgeVar.getClass();
        dfzVar.zzihe = dgeVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m16788a(dfz dfzVar, dlw dlwVar) {
        dlwVar.getClass();
        dfzVar.zzihd = dlwVar;
    }

    /* renamed from: b */
    public static C12329a m16786b() {
        return zzihf.m16335i();
    }

    /* renamed from: a */
    public final dge m16791a() {
        dge dgeVar = this.zzihe;
        dge dgeVar2 = dgeVar;
        if (dgeVar == null) {
            dgeVar2 = dge.m16775a();
        }
        return dgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dfy.f47056a[i - 1]) {
            case 1:
                return new dfz();
            case 2:
                return new C12329a(null);
            case 3:
                return m16341a(zzihf, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzihc", "zzihd", "zzihe"});
            case 4:
                return zzihf;
            case 5:
                dpc<dfz> dpcVar = zzek;
                dpc<dfz> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dfz.class) {
                        try {
                            dpc<dfz> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzihf);
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
