package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgv.class */
public final class zzgv extends zzelb<zzgv, zza> implements zzemq {
    private static final zzgv zzaci;
    private static volatile zzemx<zzgv> zzek;
    private String zzacd = "";
    private String zzace = "";
    private long zzacf;
    private long zzacg;
    private long zzach;
    private int zzdv;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgv$zza.class */
    public static final class zza extends zzelb.zzb<zzgv, zza> implements zzemq {
        private zza() {
            super(zzgv.zzaci);
        }

        /* synthetic */ zza(zzgu zzguVar) {
            this();
        }

        public final zza zzav(String str) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzgv) this.zziqp).zzat(str);
            return this;
        }

        public final zza zzaw(String str) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzgv) this.zziqp).zzau(str);
            return this;
        }

        public final zza zzdj(long j) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzgv) this.zziqp).zzdg(j);
            return this;
        }

        public final zza zzdk(long j) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzgv) this.zziqp).zzdh(j);
            return this;
        }

        public final zza zzdl(long j) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzgv) this.zziqp).zzdi(j);
            return this;
        }
    }

    static {
        zzgv zzgvVar = new zzgv();
        zzaci = zzgvVar;
        zzelb.zza(zzgv.class, zzgvVar);
    }

    private zzgv() {
    }

    public final void zzat(String str) {
        str.getClass();
        this.zzdv |= 1;
        this.zzacd = str;
    }

    public final void zzau(String str) {
        str.getClass();
        this.zzdv |= 2;
        this.zzace = str;
    }

    public static zzgv zzb(zzejr zzejrVar, zzeko zzekoVar) throws zzelo {
        return (zzgv) zzelb.zza(zzaci, zzejrVar, zzekoVar);
    }

    public final void zzdg(long j) {
        this.zzdv |= 4;
        this.zzacf = j;
    }

    public final void zzdh(long j) {
        this.zzdv |= 8;
        this.zzacg = j;
    }

    public final void zzdi(long j) {
        this.zzdv |= 16;
        this.zzach = j;
    }

    public static zza zzdl() {
        return zzaci.zzbii();
    }

    public static zzgv zzdm() {
        return zzaci;
    }

    public static zzgv zzl(zzejr zzejrVar) throws zzelo {
        return (zzgv) zzelb.zza(zzaci, zzejrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzgu.zzel[i - 1]) {
            case 1:
                return new zzgv();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzaci, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဈ��\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzdv", "zzacd", "zzace", "zzacf", "zzacg", "zzach"});
            case 4:
                return zzaci;
            case 5:
                zzemx<zzgv> zzemxVar = zzek;
                zzemx<zzgv> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzgv.class) {
                        try {
                            zzemx<zzgv> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzaci);
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

    public final String zzdg() {
        return this.zzacd;
    }

    public final String zzdh() {
        return this.zzace;
    }

    public final long zzdi() {
        return this.zzacf;
    }

    public final long zzdj() {
        return this.zzacg;
    }

    public final long zzdk() {
        return this.zzach;
    }
}
