package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedy.class */
public final class zzedy extends zzelb<zzedy, zza> implements zzemq {
    private static volatile zzemx<zzedy> zzek;
    private static final zzedy zziee;
    private zzeeb zzieb;
    private int zzied;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedy$zza.class */
    public static final class zza extends zzelb.zzb<zzedy, zza> implements zzemq {
        private zza() {
            super(zzedy.zziee);
        }

        /* synthetic */ zza(zzedz zzedzVar) {
            this();
        }
    }

    static {
        zzedy zzedyVar = new zzedy();
        zziee = zzedyVar;
        zzelb.zza(zzedy.class, zzedyVar);
    }

    private zzedy() {
    }

    public static zzedy zzd(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzedy) zzelb.zza(zziee, zzejrVar, zzekoVar);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzedz.zzel[i - 1]) {
            case 1:
                return new zzedy();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziee, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzied", "zzieb"});
            case 4:
                return zziee;
            case 5:
                zzemx<zzedy> zzemxVar = zzek;
                zzemx<zzedy> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzedy.class) {
                        try {
                            zzemx<zzedy> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziee);
                                zzek = zzemxVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return zzemxVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final zzeeb zzbbf() {
        zzeeb zzeebVar = this.zzieb;
        zzeeb zzeebVar2 = zzeebVar;
        if (zzeebVar == null) {
            zzeebVar2 = zzeeb.zzbbk();
        }
        return zzeebVar2;
    }
}
