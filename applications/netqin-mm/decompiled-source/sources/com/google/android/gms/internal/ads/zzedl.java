package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.p40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedl.class */
public final class zzedl extends zzejz<zzedl, zza> implements zzell {
    public static volatile zzelw<zzedl> zzel;
    public static final zzedl zzhxg;
    public int zzhwu;
    public zzedm zzhxe;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedl$zza.class */
    public static final class zza extends zzejz.zzb<zzedl, zza> implements zzell {
        public zza() {
            super(zzedl.zzhxg);
        }

        public /* synthetic */ zza(p40 p40Var) {
            this();
        }
    }

    static {
        zzedl zzedlVar = new zzedl();
        zzhxg = zzedlVar;
        zzejz.m12401a(zzedl.class, zzedlVar);
    }

    /* renamed from: a */
    public static zzedl m12829a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzedl) zzejz.m12411a(zzhxg, zzeipVar, zzejmVar);
    }

    /* renamed from: o */
    public static zzedl m12826o() {
        return zzhxg;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (p40.f14386a[i - 1]) {
            case 1:
                return new zzedl();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxg, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\u000b", new Object[]{"zzhxe", "zzhwu"});
            case 4:
                return zzhxg;
            case 5:
                zzelw<zzedl> zzelwVar = zzel;
                zzelw<zzedl> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzedl.class) {
                        try {
                            zzelw<zzedl> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxg);
                                zzel = zzelwVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return zzelwVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: m */
    public final int m12828m() {
        return this.zzhwu;
    }

    /* renamed from: n */
    public final zzedm m12827n() {
        zzedm zzedmVar = this.zzhxe;
        zzedm zzedmVar2 = zzedmVar;
        if (zzedmVar == null) {
            zzedmVar2 = zzedm.m12823n();
        }
        return zzedmVar2;
    }
}
