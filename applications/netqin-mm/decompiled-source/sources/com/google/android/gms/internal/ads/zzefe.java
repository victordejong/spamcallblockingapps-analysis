package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.o50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefe.class */
public final class zzefe extends zzejz<zzefe, zza> implements zzell {
    public static volatile zzelw<zzefe> zzel;
    public static final zzefe zzhzz;
    public String zzhzh = "";
    public zzeip zzhzi = zzeip.zzier;
    public int zzhzy;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefe$zza.class */
    public static final class zza extends zzejz.zzb<zzefe, zza> implements zzell {
        public zza() {
            super(zzefe.zzhzz);
        }

        public /* synthetic */ zza(o50 o50Var) {
            this();
        }
    }

    static {
        zzefe zzefeVar = new zzefe();
        zzhzz = zzefeVar;
        zzejz.m12401a(zzefe.class, zzefeVar);
    }

    /* renamed from: o */
    public static zzefe m12679o() {
        return zzhzz;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (o50.f14296a[i - 1]) {
            case 1:
                return new zzefe();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhzz, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzhzh", "zzhzi", "zzhzy"});
            case 4:
                return zzhzz;
            case 5:
                zzelw<zzefe> zzelwVar = zzel;
                zzelw<zzefe> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzefe.class) {
                        try {
                            zzelw<zzefe> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhzz);
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
    public final String m12681m() {
        return this.zzhzh;
    }

    /* renamed from: n */
    public final zzeip m12680n() {
        return this.zzhzi;
    }
}
