package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhy.class */
public final class dhy extends dnh<dhy, a> implements dov {
    private static volatile dpc<dhy> zzek;
    private static final dhy zzijr;
    int zzihc;
    dlw zzihd = dlw.f26941a;
    private did zzijq;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhy$a.class */
    public static final class a extends dnh.b<dhy, a> implements dov {
        private a() {
            super(dhy.zzijr);
        }

        /* synthetic */ a(dia diaVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dhy) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(did didVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dhy.a((dhy) this.f26993a, didVar);
            return this;
        }

        public final a a(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dhy.a((dhy) this.f26993a, dlwVar);
            return this;
        }
    }

    static {
        dhy dhyVar = new dhy();
        zzijr = dhyVar;
        dnh.a(dhy.class, dhyVar);
    }

    private dhy() {
    }

    public static dhy a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhy) dnh.a(zzijr, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dhy dhyVar, did didVar) {
        didVar.getClass();
        dhyVar.zzijq = didVar;
    }

    static /* synthetic */ void a(dhy dhyVar, dlw dlwVar) {
        dlwVar.getClass();
        dhyVar.zzihd = dlwVar;
    }

    public static a b() {
        return zzijr.i();
    }

    public static dhy c() {
        return zzijr;
    }

    public final did a() {
        did didVar = this.zzijq;
        did didVar2 = didVar;
        if (didVar == null) {
            didVar2 = did.b();
        }
        return didVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dia.f26841a[i - 1]) {
            case 1:
                return new dhy();
            case 2:
                return new a(null);
            case 3:
                return a(zzijr, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zzijq", "zzihd"});
            case 4:
                return zzijr;
            case 5:
                dpc<dhy> dpcVar = zzek;
                dpc<dhy> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhy.class) {
                        try {
                            dpc<dhy> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzijr);
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
