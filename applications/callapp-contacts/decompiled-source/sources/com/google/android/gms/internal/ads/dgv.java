package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgv.class */
public final class dgv extends dnh<dgv, a> implements dov {
    private static volatile dpc<dgv> zzek;
    private static final dgv zzihz;
    int zzihc;
    dlw zzihd = dlw.f26941a;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgv$a.class */
    public static final class a extends dnh.b<dgv, a> implements dov {
        private a() {
            super(dgv.zzihz);
        }

        /* synthetic */ a(dgw dgwVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dgv) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dgv.a((dgv) this.f26993a, dlwVar);
            return this;
        }
    }

    static {
        dgv dgvVar = new dgv();
        zzihz = dgvVar;
        dnh.a(dgv.class, dgvVar);
    }

    private dgv() {
    }

    public static a a() {
        return zzihz.i();
    }

    public static dgv a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgv) dnh.a(zzihz, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dgv dgvVar, dlw dlwVar) {
        dlwVar.getClass();
        dgvVar.zzihd = dlwVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dgw.f26829a[i - 1]) {
            case 1:
                return new dgv();
            case 2:
                return new a(null);
            case 3:
                return a(zzihz, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzihc", "zzihd"});
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
                                dpcVar2 = new dnh.a<>(zzihz);
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
