package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dit.class */
public final class dit extends dnh<dit, a> implements dov {
    private static volatile dpc<dit> zzek;
    private static final dit zzile;
    int zzihc;
    diw zzild;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dit$a.class */
    public static final class a extends dnh.b<dit, a> implements dov {
        private a() {
            super(dit.zzile);
        }

        /* synthetic */ a(diu diuVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dit) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(diw diwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dit.a((dit) this.f26993a, diwVar);
            return this;
        }
    }

    static {
        dit ditVar = new dit();
        zzile = ditVar;
        dnh.a(dit.class, ditVar);
    }

    private dit() {
    }

    public static a a() {
        return zzile.i();
    }

    public static dit a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dit) dnh.a(zzile, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dit ditVar, diw diwVar) {
        diwVar.getClass();
        ditVar.zzild = diwVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (diu.f26853a[i - 1]) {
            case 1:
                return new dit();
            case 2:
                return new a(null);
            case 3:
                return a(zzile, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzihc", "zzild"});
            case 4:
                return zzile;
            case 5:
                dpc<dit> dpcVar = zzek;
                dpc<dit> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dit.class) {
                        try {
                            dpc<dit> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzile);
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
