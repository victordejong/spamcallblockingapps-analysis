package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcb.class */
public final class zzcb {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcb$zza.class */
    public static final class zza extends zzelb<zza, C2601zza> implements zzemq {
        private static volatile zzemx<zza> zzek;
        private static final zza zzex;
        private int zzdv;
        private zzb zzev;
        private zzc zzew;

        /* renamed from: com.google.android.gms.internal.ads.zzcb$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcb$zza$zza.class */
        public static final class C2601zza extends zzelb.zzb<zza, C2601zza> implements zzemq {
            private C2601zza() {
                super(zza.zzex);
            }

            /* synthetic */ C2601zza(zzca zzcaVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzex = zzaVar;
            zzelb.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzca.zzel[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C2601zza(null);
                case 3:
                    return zza(zzex, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဉ��\u0002ဉ\u0001", new Object[]{"zzdv", "zzev", "zzew"});
                case 4:
                    return zzex;
                case 5:
                    zzemx<zza> zzemxVar = zzek;
                    zzemx<zza> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzemx<zza> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzex);
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

        public final zzc zzaa() {
            zzc zzcVar = this.zzew;
            zzc zzcVar2 = zzcVar;
            if (zzcVar == null) {
                zzcVar2 = zzc.zzag();
            }
            return zzcVar2;
        }

        public final boolean zzx() {
            return (this.zzdv & 1) != 0;
        }

        public final zzb zzy() {
            zzb zzbVar = this.zzev;
            zzb zzbVar2 = zzbVar;
            if (zzbVar == null) {
                zzbVar2 = zzb.zzad();
            }
            return zzbVar2;
        }

        public final boolean zzz() {
            return (this.zzdv & 2) != 0;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcb$zzb.class */
    public static final class zzb extends zzelb<zzb, zza> implements zzemq {
        private static volatile zzemx<zzb> zzek;
        private static final zzb zzez;
        private int zzdv;
        private int zzey = 2;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcb$zzb$zza.class */
        public static final class zza extends zzelb.zzb<zzb, zza> implements zzemq {
            private zza() {
                super(zzb.zzez);
            }

            /* synthetic */ zza(zzca zzcaVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzez = zzbVar;
            zzelb.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        public static zzb zzad() {
            return zzez;
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzca.zzel[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzez, "\u0001\u0001��\u0001\u001b\u001b\u0001������\u001bဌ��", new Object[]{"zzdv", "zzey", zzcd.zzw()});
                case 4:
                    return zzez;
                case 5:
                    zzemx<zzb> zzemxVar = zzek;
                    zzemx<zzb> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzemx<zzb> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzez);
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

        public final zzcd zzac() {
            zzcd zzj = zzcd.zzj(this.zzey);
            zzcd zzcdVar = zzj;
            if (zzj == null) {
                zzcdVar = zzcd.ENUM_SIGNAL_SOURCE_ADSHIELD;
            }
            return zzcdVar;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcb$zzc.class */
    public static final class zzc extends zzelb<zzc, zza> implements zzemq {
        private static volatile zzemx<zzc> zzek;
        private static final zzc zzfm;
        private int zzdv;
        private String zzfg = "";
        private String zzfh = "";
        private String zzfi = "";
        private String zzfj = "";
        private String zzfk = "";
        private String zzfl = "";

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcb$zzc$zza.class */
        public static final class zza extends zzelb.zzb<zzc, zza> implements zzemq {
            private zza() {
                super(zzc.zzfm);
            }

            /* synthetic */ zza(zzca zzcaVar) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzfm = zzcVar;
            zzelb.zza(zzc.class, zzcVar);
        }

        private zzc() {
        }

        public static zzc zzag() {
            return zzfm;
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzca.zzel[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzfm, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005", new Object[]{"zzdv", "zzfg", "zzfh", "zzfi", "zzfj", "zzfk", "zzfl"});
                case 4:
                    return zzfm;
                case 5:
                    zzemx<zzc> zzemxVar = zzek;
                    zzemx<zzc> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzemx<zzc> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzfm);
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

        public final String zzaf() {
            return this.zzfg;
        }
    }
}
