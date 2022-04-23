package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfz.class */
public final class dfz extends dnh<dfz, a> implements dov {
    private static volatile dpc<dfz> zzek;
    private static final dfz zzihf;
    int zzihc;
    dlw zzihd = dlw.f26941a;
    private dge zzihe;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfz$a.class */
    public static final class a extends dnh.b<dfz, a> implements dov {
        private a() {
            super(dfz.zzihf);
        }

        /* synthetic */ a(dfy dfyVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dfz) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(dge dgeVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dfz.a((dfz) this.f26993a, dgeVar);
            return this;
        }

        public final a a(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dfz.a((dfz) this.f26993a, dlwVar);
            return this;
        }
    }

    static {
        dfz dfzVar = new dfz();
        zzihf = dfzVar;
        dnh.a(dfz.class, dfzVar);
    }

    private dfz() {
    }

    public static dfz a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dfz) dnh.a(zzihf, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dfz dfzVar, dge dgeVar) {
        dgeVar.getClass();
        dfzVar.zzihe = dgeVar;
    }

    static /* synthetic */ void a(dfz dfzVar, dlw dlwVar) {
        dlwVar.getClass();
        dfzVar.zzihd = dlwVar;
    }

    public static a b() {
        return zzihf.i();
    }

    public final dge a() {
        dge dgeVar = this.zzihe;
        dge dgeVar2 = dgeVar;
        if (dgeVar == null) {
            dgeVar2 = dge.a();
        }
        return dgeVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dfy.f26815a[i - 1]) {
            case 1:
                return new dfz();
            case 2:
                return new a(null);
            case 3:
                return a(zzihf, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzihc", "zzihd", "zzihe"});
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
                                dpcVar2 = new dnh.a<>(zzihf);
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
