package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.t40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedt.class */
public final class zzedt extends zzejz<zzedt, zza> implements zzell {
    public static volatile zzelw<zzedt> zzel;
    public static final zzedt zzhxm;
    public int zzhxh;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedt$zza.class */
    public static final class zza extends zzejz.zzb<zzedt, zza> implements zzell {
        public zza() {
            super(zzedt.zzhxm);
        }

        public /* synthetic */ zza(t40 t40Var) {
            this();
        }
    }

    static {
        zzedt zzedtVar = new zzedt();
        zzhxm = zzedtVar;
        zzejz.m12401a(zzedt.class, zzedtVar);
    }

    /* renamed from: n */
    public static zzedt m12801n() {
        return zzhxm;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (t40.f15345a[i - 1]) {
            case 1:
                return new zzedt();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxm, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzhxh"});
            case 4:
                return zzhxm;
            case 5:
                zzelw<zzedt> zzelwVar = zzel;
                zzelw<zzedt> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzedt.class) {
                        try {
                            zzelw<zzedt> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxm);
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
    public final int m12802m() {
        return this.zzhxh;
    }
}
