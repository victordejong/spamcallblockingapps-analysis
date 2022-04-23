package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.k40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeda.class */
public final class zzeda extends zzejz<zzeda, zza> implements zzell {
    public static volatile zzelw<zzeda> zzel;
    public static final zzeda zzhwv;
    public zzedd zzhws;
    public int zzhwu;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeda$zza.class */
    public static final class zza extends zzejz.zzb<zzeda, zza> implements zzell {
        public zza() {
            super(zzeda.zzhwv);
        }

        public /* synthetic */ zza(k40 k40Var) {
            this();
        }
    }

    static {
        zzeda zzedaVar = new zzeda();
        zzhwv = zzedaVar;
        zzejz.m12401a(zzeda.class, zzedaVar);
    }

    /* renamed from: a */
    public static zzeda m12871a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzeda) zzejz.m12411a(zzhwv, zzeipVar, zzejmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (k40.f13836a[i - 1]) {
            case 1:
                return new zzeda();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhwv, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzhwu", "zzhws"});
            case 4:
                return zzhwv;
            case 5:
                zzelw<zzeda> zzelwVar = zzel;
                zzelw<zzeda> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzeda.class) {
                        try {
                            zzelw<zzeda> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhwv);
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
    public final int m12870m() {
        return this.zzhwu;
    }

    /* renamed from: n */
    public final zzedd m12869n() {
        zzedd zzeddVar = this.zzhws;
        zzedd zzeddVar2 = zzeddVar;
        if (zzeddVar == null) {
            zzeddVar2 = zzedd.m12866n();
        }
        return zzeddVar2;
    }
}
