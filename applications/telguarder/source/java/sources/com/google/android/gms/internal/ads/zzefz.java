package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefz.class */
public final class zzefz extends zzelb<zzefz, zza> implements zzemq {
    private static volatile zzemx<zzefz> zzek;
    private static final zzefz zzigp;
    private int zzidz;
    private int zzied;
    private zzega zzign;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefz$zza.class */
    public static final class zza extends zzelb.zzb<zzefz, zza> implements zzemq {
        private zza() {
            super(zzefz.zzigp);
        }

        /* synthetic */ zza(zzefy zzefyVar) {
            this();
        }
    }

    static {
        zzefz zzefzVar = new zzefz();
        zzigp = zzefzVar;
        zzelb.zza(zzefz.class, zzefzVar);
    }

    private zzefz() {
    }

    public static zzefz zzbds() {
        return zzigp;
    }

    public static zzefz zzu(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzefz) zzelb.zza(zzigp, zzejrVar, zzekoVar);
    }

    public final int getKeySize() {
        return this.zzied;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefy.zzel[i - 1]) {
            case 1:
                return new zzefz();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzigp, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zzign", "zzied", "zzidz"});
            case 4:
                return zzigp;
            case 5:
                zzemx<zzefz> zzemxVar = zzek;
                zzemx<zzefz> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzefz.class) {
                        try {
                            zzemx<zzefz> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzigp);
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

    public final zzega zzbdo() {
        zzega zzegaVar = this.zzign;
        zzega zzegaVar2 = zzegaVar;
        if (zzegaVar == null) {
            zzegaVar2 = zzega.zzbdv();
        }
        return zzegaVar2;
    }
}
