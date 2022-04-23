package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.a50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeed.class */
public final class zzeed extends zzejz<zzeed, zza> implements zzell {
    public static volatile zzelw<zzeed> zzel;
    public static final zzeed zzhxy;
    public zzefe zzhxx;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeed$zza.class */
    public static final class zza extends zzejz.zzb<zzeed, zza> implements zzell {
        public zza() {
            super(zzeed.zzhxy);
        }

        public /* synthetic */ zza(a50 a50Var) {
            this();
        }
    }

    static {
        zzeed zzeedVar = new zzeed();
        zzhxy = zzeedVar;
        zzejz.m12401a(zzeed.class, zzeedVar);
    }

    /* renamed from: n */
    public static zzeed m12771n() {
        return zzhxy;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (a50.f12067a[i - 1]) {
            case 1:
                return new zzeed();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxy, "��\u0001����\u0002\u0002\u0001������\u0002\t", new Object[]{"zzhxx"});
            case 4:
                return zzhxy;
            case 5:
                zzelw<zzeed> zzelwVar = zzel;
                zzelw<zzeed> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzeed.class) {
                        try {
                            zzelw<zzeed> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxy);
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
    public final zzefe m12772m() {
        zzefe zzefeVar = this.zzhxx;
        zzefe zzefeVar2 = zzefeVar;
        if (zzefeVar == null) {
            zzefeVar2 = zzefe.m12679o();
        }
        return zzefeVar2;
    }
}
