package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgz.class */
public final class dgz extends dnh<dgz, a> implements dov {
    private static volatile dpc<dgz> zzek;
    private static final dgz zziib;
    int zzihc;
    dlw zzihd = dlw.f26941a;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dgz$a.class */
    public static final class a extends dnh.b<dgz, a> implements dov {
        private a() {
            super(dgz.zziib);
        }

        /* synthetic */ a(dha dhaVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dgz) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dgz.a((dgz) this.f26993a, dlwVar);
            return this;
        }
    }

    static {
        dgz dgzVar = new dgz();
        zziib = dgzVar;
        dnh.a(dgz.class, dgzVar);
    }

    private dgz() {
    }

    public static a a() {
        return zziib.i();
    }

    public static dgz a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dgz) dnh.a(zziib, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dgz dgzVar, dlw dlwVar) {
        dlwVar.getClass();
        dgzVar.zzihd = dlwVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dha.f26831a[i - 1]) {
            case 1:
                return new dgz();
            case 2:
                return new a(null);
            case 3:
                return a(zziib, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzihc", "zzihd"});
            case 4:
                return zziib;
            case 5:
                dpc<dgz> dpcVar = zzek;
                dpc<dgz> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dgz.class) {
                        try {
                            dpc<dgz> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zziib);
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
