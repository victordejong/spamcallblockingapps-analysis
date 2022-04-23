package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.n40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedh.class */
public final class zzedh extends zzejz<zzedh, zza> implements zzell {
    public static volatile zzelw<zzedh> zzel;
    public static final zzedh zzhxd;
    public zzedl zzhxb;
    public zzeex zzhxc;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedh$zza.class */
    public static final class zza extends zzejz.zzb<zzedh, zza> implements zzell {
        public zza() {
            super(zzedh.zzhxd);
        }

        public /* synthetic */ zza(n40 n40Var) {
            this();
        }
    }

    static {
        zzedh zzedhVar = new zzedh();
        zzhxd = zzedhVar;
        zzejz.m12401a(zzedh.class, zzedhVar);
    }

    /* renamed from: a */
    public static zzedh m12849a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzedh) zzejz.m12411a(zzhxd, zzeipVar, zzejmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (n40.f14215a[i - 1]) {
            case 1:
                return new zzedh();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxd, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"zzhxb", "zzhxc"});
            case 4:
                return zzhxd;
            case 5:
                zzelw<zzedh> zzelwVar = zzel;
                zzelw<zzedh> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzedh.class) {
                        try {
                            zzelw<zzedh> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxd);
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
    public final zzedl m12848m() {
        zzedl zzedlVar = this.zzhxb;
        zzedl zzedlVar2 = zzedlVar;
        if (zzedlVar == null) {
            zzedlVar2 = zzedl.m12826o();
        }
        return zzedlVar2;
    }

    /* renamed from: n */
    public final zzeex m12847n() {
        zzeex zzeexVar = this.zzhxc;
        zzeex zzeexVar2 = zzeexVar;
        if (zzeexVar == null) {
            zzeexVar2 = zzeex.m12702o();
        }
        return zzeexVar2;
    }
}
