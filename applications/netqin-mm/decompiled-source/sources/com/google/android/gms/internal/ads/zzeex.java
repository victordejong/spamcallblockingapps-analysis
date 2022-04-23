package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.j50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeex.class */
public final class zzeex extends zzejz<zzeex, zza> implements zzell {
    public static volatile zzelw<zzeex> zzel;
    public static final zzeex zzhze;
    public int zzhwq;
    public int zzhwu;
    public zzeey zzhzc;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeex$zza.class */
    public static final class zza extends zzejz.zzb<zzeex, zza> implements zzell {
        public zza() {
            super(zzeex.zzhze);
        }

        public /* synthetic */ zza(j50 j50Var) {
            this();
        }
    }

    static {
        zzeex zzeexVar = new zzeex();
        zzhze = zzeexVar;
        zzejz.m12401a(zzeex.class, zzeexVar);
    }

    /* renamed from: a */
    public static zzeex m12705a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzeex) zzejz.m12411a(zzhze, zzeipVar, zzejmVar);
    }

    /* renamed from: o */
    public static zzeex m12702o() {
        return zzhze;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (j50.f13586a[i - 1]) {
            case 1:
                return new zzeex();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhze, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzhzc", "zzhwu", "zzhwq"});
            case 4:
                return zzhze;
            case 5:
                zzelw<zzeex> zzelwVar = zzel;
                zzelw<zzeex> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzeex.class) {
                        try {
                            zzelw<zzeex> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhze);
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
    public final int m12704m() {
        return this.zzhwu;
    }

    /* renamed from: n */
    public final zzeey m12703n() {
        zzeey zzeeyVar = this.zzhzc;
        zzeey zzeeyVar2 = zzeeyVar;
        if (zzeeyVar == null) {
            zzeeyVar2 = zzeey.m12698o();
        }
        return zzeeyVar2;
    }
}
