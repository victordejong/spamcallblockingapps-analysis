package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dix.class */
public final class dix extends dnh<dix, a> implements dov {
    private static volatile dpc<dix> zzek;
    private static final dix zzili;
    int zzihc;
    private dja zzilh;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dix$a.class */
    public static final class a extends dnh.b<dix, a> implements dov {
        private a() {
            super(dix.zzili);
        }

        /* synthetic */ a(diy diyVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dix) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(dja djaVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dix.a((dix) this.f26993a, djaVar);
            return this;
        }
    }

    static {
        dix dixVar = new dix();
        zzili = dixVar;
        dnh.a(dix.class, dixVar);
    }

    private dix() {
    }

    public static dix a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dix) dnh.a(zzili, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dix dixVar, dja djaVar) {
        djaVar.getClass();
        dixVar.zzilh = djaVar;
    }

    public static a b() {
        return zzili.i();
    }

    public final dja a() {
        dja djaVar = this.zzilh;
        dja djaVar2 = djaVar;
        if (djaVar == null) {
            djaVar2 = dja.a();
        }
        return djaVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (diy.f26855a[i - 1]) {
            case 1:
                return new dix();
            case 2:
                return new a(null);
            case 3:
                return a(zzili, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzihc", "zzilh"});
            case 4:
                return zzili;
            case 5:
                dpc<dix> dpcVar = zzek;
                dpc<dix> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dix.class) {
                        try {
                            dpc<dix> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zzili);
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
