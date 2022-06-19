package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegk.class */
public final class zzegk extends zzelb<zzegk, zza> implements zzemq {
    private static volatile zzemx<zzegk> zzek;
    private static final zzegk zzihp;
    private int zzihm;
    private boolean zzihn;
    private String zzihl = "";
    private String zzigs = "";
    private String zziho = "";

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegk$zza.class */
    public static final class zza extends zzelb.zzb<zzegk, zza> implements zzemq {
        private zza() {
            super(zzegk.zzihp);
        }

        /* synthetic */ zza(zzegj zzegjVar) {
            this();
        }
    }

    static {
        zzegk zzegkVar = new zzegk();
        zzihp = zzegkVar;
        zzelb.zza(zzegk.class, zzegkVar);
    }

    private zzegk() {
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegj.zzel[i - 1]) {
            case 1:
                return new zzegk();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzihp, "��\u0005����\u0001\u0005\u0005������\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ", new Object[]{"zzihl", "zzigs", "zzihm", "zzihn", "zziho"});
            case 4:
                return zzihp;
            case 5:
                zzemx<zzegk> zzemxVar = zzek;
                zzemx<zzegk> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzegk.class) {
                        try {
                            zzemx<zzegk> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzihp);
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

    public final String zzbdx() {
        return this.zzigs;
    }

    public final String zzbef() {
        return this.zzihl;
    }

    public final int zzbeg() {
        return this.zzihm;
    }

    public final boolean zzbeh() {
        return this.zzihn;
    }

    public final String zzbei() {
        return this.zziho;
    }
}
