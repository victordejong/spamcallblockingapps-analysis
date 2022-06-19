package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgv.class */
public final class dgv extends dnh<dgv, C12341a> implements dov {
    private static volatile dpc<dgv> zzek;
    private static final dgv zzihz;
    int zzihc;
    dlw zzihd = dlw.f47199a;

    /* renamed from: com.google.android.gms.internal.ads.dgv$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgv$a.class */
    public static final class C12341a extends dnh.C12383b<dgv, C12341a> implements dov {
        private C12341a() {
            super(dgv.zzihz);
        }

        /* synthetic */ C12341a(dgw dgwVar) {
            this();
        }

        /* renamed from: a */
        public final C12341a m16721a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dgv) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12341a m16720a(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dgv.m16724a((dgv) this.f47274a, dlwVar);
            return this;
        }
    }

    static {
        dgv dgvVar = new dgv();
        zzihz = dgvVar;
        dnh.m16339a(dgv.class, dgvVar);
    }

    private dgv() {
    }

    /* renamed from: a */
    public static C12341a m16726a() {
        return zzihz.m16335i();
    }

    /* renamed from: a */
    public static dgv m16723a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgv) dnh.m16349a(zzihz, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16724a(dgv dgvVar, dlw dlwVar) {
        dlwVar.getClass();
        dgvVar.zzihd = dlwVar;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dgw.f47070a[i - 1]) {
            case 1:
                return new dgv();
            case 2:
                return new C12341a(null);
            case 3:
                return m16341a(zzihz, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzihc", "zzihd"});
            case 4:
                return zzihz;
            case 5:
                dpc<dgv> dpcVar = zzek;
                dpc<dgv> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgv.class) {
                        try {
                            dpc<dgv> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzihz);
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
