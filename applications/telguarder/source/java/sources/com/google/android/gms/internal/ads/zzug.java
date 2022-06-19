package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug.class */
public final class zzug {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zza.class */
    public static final class zza extends zzelb<zza, zzb> implements zzemq {
        private static final zza zzbzl;
        private static volatile zzemx<zza> zzek;
        private int zzbza;
        private zzd zzbzc;
        private zze zzbzd;
        private zzf zzbzf;
        private zzp zzbzg;
        private zzn zzbzh;
        private zzk zzbzi;
        private zzl zzbzj;
        private int zzdv;
        private int zzbzb = 1000;
        private zzell<zzc> zzbze = zzbin();
        private zzell<zzv> zzbzk = zzbin();

        /* renamed from: com.google.android.gms.internal.ads.zzug$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zza$zza.class */
        public enum EnumC2617zza implements zzelg {
            AD_INITIATER_UNSPECIFIED(0),
            BANNER(1),
            DFP_BANNER(2),
            INTERSTITIAL(3),
            DFP_INTERSTITIAL(4),
            NATIVE_EXPRESS(5),
            AD_LOADER(6),
            REWARD_BASED_VIDEO_AD(7),
            BANNER_SEARCH_ADS(8),
            GOOGLE_MOBILE_ADS_SDK_ADAPTER(9),
            APP_OPEN(10),
            REWARDED_INTERSTITIAL(11);
            
            private static final zzelf<EnumC2617zza> zzes = new zzui();
            private final int value;

            EnumC2617zza(int i) {
                this.value = i;
            }

            public static EnumC2617zza zzbw(int i) {
                switch (i) {
                    case 0:
                        return AD_INITIATER_UNSPECIFIED;
                    case 1:
                        return BANNER;
                    case 2:
                        return DFP_BANNER;
                    case 3:
                        return INTERSTITIAL;
                    case 4:
                        return DFP_INTERSTITIAL;
                    case 5:
                        return NATIVE_EXPRESS;
                    case 6:
                        return AD_LOADER;
                    case 7:
                        return REWARD_BASED_VIDEO_AD;
                    case 8:
                        return BANNER_SEARCH_ADS;
                    case 9:
                        return GOOGLE_MOBILE_ADS_SDK_ADAPTER;
                    case 10:
                        return APP_OPEN;
                    case 11:
                        return REWARDED_INTERSTITIAL;
                    default:
                        return null;
                }
            }

            public static zzeli zzw() {
                return zzuh.zzeu;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zza$zzb.class */
        public static final class zzb extends zzelb.zzb<zza, zzb> implements zzemq {
            private zzb() {
                super(zza.zzbzl);
            }

            /* synthetic */ zzb(zzuf zzufVar) {
                this();
            }

            public final zzb zza(zze.zza zzaVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza((zze) ((zzelb) zzaVar.zzbiw()));
                return this;
            }

            public final zzb zzb(EnumC2617zza enumC2617zza) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza(enumC2617zza);
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zzbzl = zzaVar;
            zzelb.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        public final void zza(EnumC2617zza enumC2617zza) {
            this.zzbza = enumC2617zza.zzv();
            this.zzdv |= 1;
        }

        public final void zza(zze zzeVar) {
            zzeVar.getClass();
            this.zzbzd = zzeVar;
            this.zzdv |= 8;
        }

        public static zza zznj() {
            return zzbzl;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(null);
                case 3:
                    return zza(zzbzl, "\u0001\u000b��\u0001\u0007\u0011\u000b��\u0002��\u0007ဌ��\bဌ\u0001\tဉ\u0002\nဉ\u0003\u000b\u001b\fဉ\u0004\rဉ\u0005\u000eဉ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011\u001b", new Object[]{"zzdv", "zzbza", EnumC2617zza.zzw(), "zzbzb", zzuq.zzw(), "zzbzc", "zzbzd", "zzbze", zzc.class, "zzbzf", "zzbzg", "zzbzh", "zzbzi", "zzbzj", "zzbzk", zzv.class});
                case 4:
                    return zzbzl;
                case 5:
                    zzemx<zza> zzemxVar = zzek;
                    zzemx<zza> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzemx<zza> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzbzl);
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

        public final zze zzni() {
            zze zzeVar = this.zzbzd;
            zze zzeVar2 = zzeVar;
            if (zzeVar == null) {
                zzeVar2 = zze.zznv();
            }
            return zzeVar2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzaa.class */
    public static final class zzaa extends zzelb<zzaa, zza> implements zzemq {
        private static final zzaa zzcgv;
        private static volatile zzemx<zzaa> zzek;
        private int zzccw = 1000;
        private zzx zzcgh;
        private zzt zzcgi;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzaa$zza.class */
        public static final class zza extends zzelb.zzb<zzaa, zza> implements zzemq {
            private zza() {
                super(zzaa.zzcgv);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzaa zzaaVar = new zzaa();
            zzcgv = zzaaVar;
            zzelb.zza(zzaa.class, zzaaVar);
        }

        private zzaa() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzaa();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcgv, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzccw", zzuq.zzw(), "zzcgh", "zzcgi"});
                case 4:
                    return zzcgv;
                case 5:
                    zzemx<zzaa> zzemxVar = zzek;
                    zzemx<zzaa> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzaa.class) {
                            try {
                                zzemx<zzaa> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcgv);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzab.class */
    public static final class zzab extends zzelb<zzab, zza> implements zzemq {
        private static final zzab zzcgx;
        private static volatile zzemx<zzab> zzek;
        private int zzccw = 1000;
        private int zzcfx;
        private int zzcfy;
        private zzx zzcgh;
        private int zzcgt;
        private long zzcgw;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzab$zza.class */
        public static final class zza extends zzelb.zzb<zzab, zza> implements zzemq {
            private zza() {
                super(zzab.zzcgx);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzab zzabVar = new zzab();
            zzcgx = zzabVar;
            zzelb.zza(zzab.class, zzabVar);
        }

        private zzab() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzab();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcgx, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဌ��\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006ဃ\u0005", new Object[]{"zzdv", "zzccw", zzuq.zzw(), "zzcgh", "zzcfx", "zzcfy", "zzcgt", "zzcgw"});
                case 4:
                    return zzcgx;
                case 5:
                    zzemx<zzab> zzemxVar = zzek;
                    zzemx<zzab> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzab.class) {
                            try {
                                zzemx<zzab> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcgx);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzac.class */
    public static final class zzac extends zzelb<zzac, zza> implements zzemq {
        private static final zzac zzcgy;
        private static volatile zzemx<zzac> zzek;
        private int zzccw = 1000;
        private zzx zzcgh;
        private zzt zzcgi;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzac$zza.class */
        public static final class zza extends zzelb.zzb<zzac, zza> implements zzemq {
            private zza() {
                super(zzac.zzcgy);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzac zzacVar = new zzac();
            zzcgy = zzacVar;
            zzelb.zza(zzac.class, zzacVar);
        }

        private zzac() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzac();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcgy, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzccw", zzuq.zzw(), "zzcgh", "zzcgi"});
                case 4:
                    return zzcgy;
                case 5:
                    zzemx<zzac> zzemxVar = zzek;
                    zzemx<zzac> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzac.class) {
                            try {
                                zzemx<zzac> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcgy);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzad.class */
    public static final class zzad extends zzelb<zzad, zza> implements zzemq {
        private static final zzad zzcgz;
        private static volatile zzemx<zzad> zzek;
        private int zzccw = 1000;
        private zzx zzcgh;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzad$zza.class */
        public static final class zza extends zzelb.zzb<zzad, zza> implements zzemq {
            private zza() {
                super(zzad.zzcgz);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzad zzadVar = new zzad();
            zzcgz = zzadVar;
            zzelb.zza(zzad.class, zzadVar);
        }

        private zzad() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzad();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcgz, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzdv", "zzccw", zzuq.zzw(), "zzcgh"});
                case 4:
                    return zzcgz;
                case 5:
                    zzemx<zzad> zzemxVar = zzek;
                    zzemx<zzad> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzad.class) {
                            try {
                                zzemx<zzad> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcgz);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzae.class */
    public static final class zzae extends zzelb<zzae, zza> implements zzemq {
        private static final zzae zzchc;
        private static volatile zzemx<zzae> zzek;
        private boolean zzcha;
        private int zzchb;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzae$zza.class */
        public static final class zza extends zzelb.zzb<zzae, zza> implements zzemq {
            private zza() {
                super(zzae.zzchc);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }

            public final zza zzcu(int i) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzae) this.zziqp).zzcv(i);
                return this;
            }

            public final boolean zzpy() {
                return ((zzae) this.zziqp).zzpy();
            }

            public final zza zzw(boolean z) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzae) this.zziqp).zzx(z);
                return this;
            }
        }

        static {
            zzae zzaeVar = new zzae();
            zzchc = zzaeVar;
            zzelb.zza(zzae.class, zzaeVar);
        }

        private zzae() {
        }

        public final void zzcv(int i) {
            this.zzdv |= 2;
            this.zzchb = i;
        }

        public static zza zzpz() {
            return zzchc.zzbii();
        }

        public final void zzx(boolean z) {
            this.zzdv |= 1;
            this.zzcha = z;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzae();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzchc, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002င\u0001", new Object[]{"zzdv", "zzcha", "zzchb"});
                case 4:
                    return zzchc;
                case 5:
                    zzemx<zzae> zzemxVar = zzek;
                    zzemx<zzae> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzae.class) {
                            try {
                                zzemx<zzae> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzchc);
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

        public final boolean zzpy() {
            return this.zzcha;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzb.class */
    public static final class zzb extends zzelb<zzb, zzc> implements zzemq {
        private static final zzb zzbzn;
        private static volatile zzemx<zzb> zzek;
        private zzell<zza> zzbzm = zzbin();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzb$zza.class */
        public static final class zza extends zzelb<zza, C2618zza> implements zzemq {
            private static final zza zzbzr;
            private static volatile zzemx<zza> zzek;
            private int zzbzo;
            private zzd zzbzp;
            private zze zzbzq;
            private int zzdv;

            /* renamed from: com.google.android.gms.internal.ads.zzug$zzb$zza$zza */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzb$zza$zza.class */
            public static final class C2618zza extends zzelb.zzb<zza, C2618zza> implements zzemq {
                private C2618zza() {
                    super(zza.zzbzr);
                }

                /* synthetic */ C2618zza(zzuf zzufVar) {
                    this();
                }

                public final C2618zza zza(EnumC2619zzb enumC2619zzb) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zzb(enumC2619zzb);
                    return this;
                }

                public final C2618zza zza(zzd.zza zzaVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zza((zzd) ((zzelb) zzaVar.zzbiw()));
                    return this;
                }

                public final C2618zza zza(zze.zza zzaVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zza((zze) ((zzelb) zzaVar.zzbiw()));
                    return this;
                }
            }

            static {
                zza zzaVar = new zza();
                zzbzr = zzaVar;
                zzelb.zza(zza.class, zzaVar);
            }

            private zza() {
            }

            public final void zza(zzd zzdVar) {
                zzdVar.getClass();
                this.zzbzp = zzdVar;
                this.zzdv |= 2;
            }

            public final void zza(zze zzeVar) {
                zzeVar.getClass();
                this.zzbzq = zzeVar;
                this.zzdv |= 4;
            }

            public final void zzb(EnumC2619zzb enumC2619zzb) {
                this.zzbzo = enumC2619zzb.zzv();
                this.zzdv |= 1;
            }

            public static C2618zza zznn() {
                return zzbzr.zzbii();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzuf.zzel[i - 1]) {
                    case 1:
                        return new zza();
                    case 2:
                        return new C2618zza(null);
                    case 3:
                        return zza(zzbzr, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzbzo", EnumC2619zzb.zzw(), "zzbzp", "zzbzq"});
                    case 4:
                        return zzbzr;
                    case 5:
                        zzemx<zza> zzemxVar = zzek;
                        zzemx<zza> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zza.class) {
                                try {
                                    zzemx<zza> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzbzr);
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
        }

        /* renamed from: com.google.android.gms.internal.ads.zzug$zzb$zzb */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzb$zzb.class */
        public enum EnumC2619zzb implements zzelg {
            UNSPECIFIED(0),
            IN_MEMORY(1);
            
            private static final zzelf<EnumC2619zzb> zzes = new zzuk();
            private final int value;

            EnumC2619zzb(int i) {
                this.value = i;
            }

            public static EnumC2619zzb zzbx(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return IN_MEMORY;
                    }
                    return null;
                }
                return UNSPECIFIED;
            }

            public static zzeli zzw() {
                return zzuj.zzeu;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzb$zzc.class */
        public static final class zzc extends zzelb.zzb<zzb, zzc> implements zzemq {
            private zzc() {
                super(zzb.zzbzn);
            }

            /* synthetic */ zzc(zzuf zzufVar) {
                this();
            }

            public final zzc zza(zza.C2618zza c2618zza) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zza((zza) ((zzelb) c2618zza.zzbiw()));
                return this;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzb$zzd.class */
        public static final class zzd extends zzelb<zzd, zza> implements zzemq {
            private static final zzd zzbzx;
            private static volatile zzemx<zzd> zzek;
            private boolean zzbzv;
            private int zzbzw;
            private int zzdv;

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzb$zzd$zza.class */
            public static final class zza extends zzelb.zzb<zzd, zza> implements zzemq {
                private zza() {
                    super(zzd.zzbzx);
                }

                /* synthetic */ zza(zzuf zzufVar) {
                    this();
                }

                public final zza zzby(int i) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzd) this.zziqp).zzbz(i);
                    return this;
                }

                public final zza zzq(boolean z) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzd) this.zziqp).zzr(z);
                    return this;
                }
            }

            static {
                zzd zzdVar = new zzd();
                zzbzx = zzdVar;
                zzelb.zza(zzd.class, zzdVar);
            }

            private zzd() {
            }

            public final void zzbz(int i) {
                this.zzdv |= 2;
                this.zzbzw = i;
            }

            public static zza zznp() {
                return zzbzx.zzbii();
            }

            public final void zzr(boolean z) {
                this.zzdv |= 1;
                this.zzbzv = z;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzuf.zzel[i - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zza(zzbzx, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဇ��\u0002ဋ\u0001", new Object[]{"zzdv", "zzbzv", "zzbzw"});
                    case 4:
                        return zzbzx;
                    case 5:
                        zzemx<zzd> zzemxVar = zzek;
                        zzemx<zzd> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zzd.class) {
                                try {
                                    zzemx<zzd> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzbzx);
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
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzb$zze.class */
        public static final class zze extends zzelb<zze, zza> implements zzemq {
            private static final zze zzcaa;
            private static volatile zzemx<zze> zzek;
            private int zzbzw;
            private boolean zzbzy;
            private boolean zzbzz;
            private int zzdv;

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzb$zze$zza.class */
            public static final class zza extends zzelb.zzb<zze, zza> implements zzemq {
                private zza() {
                    super(zze.zzcaa);
                }

                /* synthetic */ zza(zzuf zzufVar) {
                    this();
                }

                public final zza zzca(int i) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzbz(i);
                    return this;
                }

                public final zza zzs(boolean z) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzu(z);
                    return this;
                }

                public final zza zzt(boolean z) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zze) this.zziqp).zzv(z);
                    return this;
                }
            }

            static {
                zze zzeVar = new zze();
                zzcaa = zzeVar;
                zzelb.zza(zze.class, zzeVar);
            }

            private zze() {
            }

            public final void zzbz(int i) {
                this.zzdv |= 4;
                this.zzbzw = i;
            }

            public static zza zznr() {
                return zzcaa.zzbii();
            }

            public final void zzu(boolean z) {
                this.zzdv |= 1;
                this.zzbzy = z;
            }

            public final void zzv(boolean z) {
                this.zzdv |= 2;
                this.zzbzz = z;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzuf.zzel[i - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zza(zzcaa, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဇ��\u0002ဇ\u0001\u0003ဋ\u0002", new Object[]{"zzdv", "zzbzy", "zzbzz", "zzbzw"});
                    case 4:
                        return zzcaa;
                    case 5:
                        zzemx<zze> zzemxVar = zzek;
                        zzemx<zze> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zze.class) {
                                try {
                                    zzemx<zze> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzcaa);
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
        }

        static {
            zzb zzbVar = new zzb();
            zzbzn = zzbVar;
            zzelb.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        public final void zza(zza zzaVar) {
            zzaVar.getClass();
            zzell<zza> zzellVar = this.zzbzm;
            if (!zzellVar.zzbge()) {
                this.zzbzm = zzelb.zza(zzellVar);
            }
            this.zzbzm.add(zzaVar);
        }

        public static zzc zznl() {
            return zzbzn.zzbii();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zzc(null);
                case 3:
                    return zza(zzbzn, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzbzm", zza.class});
                case 4:
                    return zzbzn;
                case 5:
                    zzemx<zzb> zzemxVar = zzek;
                    zzemx<zzb> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzemx<zzb> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzbzn);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzc.class */
    public static final class zzc extends zzelb<zzc, zzb> implements zzemq {
        private static final zzc zzcap;
        private static volatile zzemx<zzc> zzek;
        private int zzcan;
        private zzr zzcao;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzc$zza.class */
        public enum zza implements zzelg {
            AD_FORMAT_TYPE_UNSPECIFIED(0),
            BANNER(1),
            INTERSTITIAL(2),
            NATIVE_EXPRESS(3),
            NATIVE_CONTENT(4),
            NATIVE_APP_INSTALL(5),
            NATIVE_CUSTOM_TEMPLATE(6),
            DFP_BANNER(7),
            DFP_INTERSTITIAL(8),
            REWARD_BASED_VIDEO_AD(9),
            BANNER_SEARCH_ADS(10);
            
            private static final zzelf<zza> zzes = new zzum();
            private final int value;

            zza(int i) {
                this.value = i;
            }

            public static zza zzcb(int i) {
                switch (i) {
                    case 0:
                        return AD_FORMAT_TYPE_UNSPECIFIED;
                    case 1:
                        return BANNER;
                    case 2:
                        return INTERSTITIAL;
                    case 3:
                        return NATIVE_EXPRESS;
                    case 4:
                        return NATIVE_CONTENT;
                    case 5:
                        return NATIVE_APP_INSTALL;
                    case 6:
                        return NATIVE_CUSTOM_TEMPLATE;
                    case 7:
                        return DFP_BANNER;
                    case 8:
                        return DFP_INTERSTITIAL;
                    case 9:
                        return REWARD_BASED_VIDEO_AD;
                    case 10:
                        return BANNER_SEARCH_ADS;
                    default:
                        return null;
                }
            }

            public static zzeli zzw() {
                return zzul.zzeu;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzc$zzb.class */
        public static final class zzb extends zzelb.zzb<zzc, zzb> implements zzemq {
            private zzb() {
                super(zzc.zzcap);
            }

            /* synthetic */ zzb(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzcap = zzcVar;
            zzelb.zza(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zzb(null);
                case 3:
                    return zza(zzcap, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzdv", "zzcan", zza.zzw(), "zzcao"});
                case 4:
                    return zzcap;
                case 5:
                    zzemx<zzc> zzemxVar = zzek;
                    zzemx<zzc> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzemx<zzc> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcap);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzd.class */
    public static final class zzd extends zzelb<zzd, zza> implements zzemq {
        private static final zzd zzcat;
        private static volatile zzemx<zzd> zzek;
        private String zzcaq = "";
        private zzell<zzc> zzcar = zzbin();
        private int zzcas;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzd$zza.class */
        public static final class zza extends zzelb.zzb<zzd, zza> implements zzemq {
            private zza() {
                super(zzd.zzcat);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzcat = zzdVar;
            zzelb.zza(zzd.class, zzdVar);
        }

        private zzd() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcat, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001", new Object[]{"zzdv", "zzcaq", "zzcar", zzc.class, "zzcas", zzuq.zzw()});
                case 4:
                    return zzcat;
                case 5:
                    zzemx<zzd> zzemxVar = zzek;
                    zzemx<zzd> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzemx<zzd> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcat);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zze.class */
    public static final class zze extends zzelb<zze, zza> implements zzemq {
        private static final zze zzcaz;
        private static volatile zzemx<zze> zzek;
        private String zzcau = "";
        private zzell<zzc> zzcav = zzbin();
        private int zzcaw = 1000;
        private int zzcax = 1000;
        private int zzcay = 1000;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zze$zza.class */
        public static final class zza extends zzelb.zzb<zze, zza> implements zzemq {
            private zza() {
                super(zze.zzcaz);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }

            public final zza zzbu(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zze) this.zziqp).zzbt(str);
                return this;
            }
        }

        static {
            zze zzeVar = new zze();
            zzcaz = zzeVar;
            zzelb.zza(zze.class, zzeVar);
        }

        private zze() {
        }

        public final void zzbt(String str) {
            str.getClass();
            this.zzdv |= 1;
            this.zzcau = str;
        }

        public static zze zznv() {
            return zzcaz;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcaz, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001ဈ��\u0002\u001b\u0003ဌ\u0001\u0004ဌ\u0002\u0005ဌ\u0003", new Object[]{"zzdv", "zzcau", "zzcav", zzc.class, "zzcaw", zzuq.zzw(), "zzcax", zzuq.zzw(), "zzcay", zzuq.zzw()});
                case 4:
                    return zzcaz;
                case 5:
                    zzemx<zze> zzemxVar = zzek;
                    zzemx<zze> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzemx<zze> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcaz);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzf.class */
    public static final class zzf extends zzelb<zzf, zza> implements zzemq {
        private static final zzf zzcbg;
        private static volatile zzemx<zzf> zzek;
        private int zzcba;
        private zzt zzcbb;
        private zzt zzcbc;
        private zzt zzcbd;
        private zzell<zzt> zzcbe = zzbin();
        private int zzcbf;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzf$zza.class */
        public static final class zza extends zzelb.zzb<zzf, zza> implements zzemq {
            private zza() {
                super(zzf.zzcbg);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzcbg = zzfVar;
            zzelb.zza(zzf.class, zzfVar);
        }

        private zzf() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcbg, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001��\u0001င��\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဉ\u0003\u0005\u001b\u0006င\u0004", new Object[]{"zzdv", "zzcba", "zzcbb", "zzcbc", "zzcbd", "zzcbe", zzt.class, "zzcbf"});
                case 4:
                    return zzcbg;
                case 5:
                    zzemx<zzf> zzemxVar = zzek;
                    zzemx<zzf> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzemx<zzf> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcbg);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzg.class */
    public static final class zzg extends zzelb<zzg, zza> implements zzemq {
        private static final zzg zzcbp;
        private static volatile zzemx<zzg> zzek;
        private zzt zzcbi;
        private int zzcbj;
        private zzu zzcbk;
        private int zzcbl;
        private int zzdv;
        private String zzcbh = "";
        private int zzcbm = 1000;
        private int zzcbn = 1000;
        private int zzcbo = 1000;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzg$zza.class */
        public static final class zza extends zzelb.zzb<zzg, zza> implements zzemq {
            private zza() {
                super(zzg.zzcbp);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }

            public final zza zzb(zzu zzuVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzg) this.zziqp).zza(zzuVar);
                return this;
            }

            public final zza zzbw(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzg) this.zziqp).zzbv(str);
                return this;
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzcbp = zzgVar;
            zzelb.zza(zzg.class, zzgVar);
        }

        private zzg() {
        }

        public final void zza(zzu zzuVar) {
            zzuVar.getClass();
            this.zzcbk = zzuVar;
            this.zzdv |= 8;
        }

        public final void zzbv(String str) {
            str.getClass();
            this.zzdv |= 1;
            this.zzcbh = str;
        }

        public static zzg zzny() {
            return zzcbp;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcbp, "\u0001\b��\u0001\u0001\b\b������\u0001ဈ��\u0002ဉ\u0001\u0003င\u0002\u0004ဉ\u0003\u0005င\u0004\u0006ဌ\u0005\u0007ဌ\u0006\bဌ\u0007", new Object[]{"zzdv", "zzcbh", "zzcbi", "zzcbj", "zzcbk", "zzcbl", "zzcbm", zzuq.zzw(), "zzcbn", zzuq.zzw(), "zzcbo", zzuq.zzw()});
                case 4:
                    return zzcbp;
                case 5:
                    zzemx<zzg> zzemxVar = zzek;
                    zzemx<zzg> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzg.class) {
                            try {
                                zzemx<zzg> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcbp);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzh.class */
    public static final class zzh extends zzelb<zzh, zzb> implements zzemq {
        private static final zzh zzcbu;
        private static volatile zzemx<zzh> zzek;
        private int zzcbq;
        private zzu zzcbr;
        private String zzcbs = "";
        private String zzcbt = "";
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzh$zza.class */
        public enum zza implements zzelg {
            PLATFORM_UNSPECIFIED(0),
            IOS(1),
            ANDROID(2);
            
            private static final zzelf<zza> zzes = new zzuo();
            private final int value;

            zza(int i) {
                this.value = i;
            }

            public static zza zzcc(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return IOS;
                    }
                    if (i == 2) {
                        return ANDROID;
                    }
                    return null;
                }
                return PLATFORM_UNSPECIFIED;
            }

            public static zzeli zzw() {
                return zzun.zzeu;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzh$zzb.class */
        public static final class zzb extends zzelb.zzb<zzh, zzb> implements zzemq {
            private zzb() {
                super(zzh.zzcbu);
            }

            /* synthetic */ zzb(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzh zzhVar = new zzh();
            zzcbu = zzhVar;
            zzelb.zza(zzh.class, zzhVar);
        }

        private zzh() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zzb(null);
                case 3:
                    return zza(zzcbu, "\u0001\u0004��\u0001\u0005\b\u0004������\u0005ဌ��\u0006ဉ\u0001\u0007ဈ\u0002\bဈ\u0003", new Object[]{"zzdv", "zzcbq", zza.zzw(), "zzcbr", "zzcbs", "zzcbt"});
                case 4:
                    return zzcbu;
                case 5:
                    zzemx<zzh> zzemxVar = zzek;
                    zzemx<zzh> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzh.class) {
                            try {
                                zzemx<zzh> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcbu);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzi.class */
    public static final class zzi extends zzelb<zzi, zza> implements zzemq {
        private static final zzi zzccq;
        private static volatile zzemx<zzi> zzek;
        private int zzccd;
        private int zzccf;
        private zzu zzcch;
        private zzg zzccj;
        private zzh zzcck;
        private zzm zzccl;
        private zza zzccm;
        private zzo zzccn;
        private zzae zzcco;
        private zzb zzccp;
        private int zzdv;
        private String zzcce = "";
        private int zzccg = 1000;
        private zzelm zzcci = zzbim();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzi$zza.class */
        public static final class zza extends zzelb.zzb<zzi, zza> implements zzemq {
            private zza() {
                super(zzi.zzccq);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }

            public final zza zza(zza.zzb zzbVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzi) this.zziqp).zza((zza) ((zzelb) zzbVar.zzbiw()));
                return this;
            }

            public final zza zza(zzg.zza zzaVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzi) this.zziqp).zza((zzg) ((zzelb) zzaVar.zzbiw()));
                return this;
            }

            public final zza zzb(zzae zzaeVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzi) this.zziqp).zza(zzaeVar);
                return this;
            }

            public final zza zzb(zzb zzbVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzi) this.zziqp).zza(zzbVar);
                return this;
            }

            public final zza zzb(zzo zzoVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzi) this.zziqp).zza(zzoVar);
                return this;
            }

            public final zza zzb(Iterable<? extends Long> iterable) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzi) this.zziqp).zza(iterable);
                return this;
            }

            public final zza zzby(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzi) this.zziqp).zzbx(str);
                return this;
            }

            public final String zzob() {
                return ((zzi) this.zziqp).zzob();
            }

            public final zzg zzod() {
                return ((zzi) this.zziqp).zzod();
            }

            public final zza zzoe() {
                return ((zzi) this.zziqp).zzoe();
            }

            public final zza zzoi() {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzi) this.zziqp).zzoc();
                return this;
            }
        }

        static {
            zzi zziVar = new zzi();
            zzccq = zziVar;
            zzelb.zza(zzi.class, zziVar);
        }

        private zzi() {
        }

        public final void zza(zza zzaVar) {
            zzaVar.getClass();
            this.zzccm = zzaVar;
            this.zzdv |= 256;
        }

        public final void zza(zzae zzaeVar) {
            zzaeVar.getClass();
            this.zzcco = zzaeVar;
            this.zzdv |= 1024;
        }

        public final void zza(zzb zzbVar) {
            zzbVar.getClass();
            this.zzccp = zzbVar;
            this.zzdv |= 2048;
        }

        public final void zza(zzg zzgVar) {
            zzgVar.getClass();
            this.zzccj = zzgVar;
            this.zzdv |= 32;
        }

        public final void zza(zzo zzoVar) {
            zzoVar.getClass();
            this.zzccn = zzoVar;
            this.zzdv |= 512;
        }

        public final void zza(Iterable<? extends Long> iterable) {
            zzelm zzelmVar = this.zzcci;
            if (!zzelmVar.zzbge()) {
                int size = zzelmVar.size();
                this.zzcci = zzelmVar.zzhi(size == 0 ? 10 : size << 1);
            }
            zzejh.zza(iterable, this.zzcci);
        }

        public final void zzbx(String str) {
            str.getClass();
            this.zzdv |= 2;
            this.zzcce = str;
        }

        public final void zzoc() {
            this.zzcci = zzbim();
        }

        public static zza zzof() {
            return zzccq.zzbii();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzccq, "\u0001\r��\u0001\t\u0015\r��\u0001��\tင��\nဈ\u0001\u000bဋ\u0002\fဌ\u0003\rဉ\u0004\u000e\u0015\u000fဉ\u0005\u0010ဉ\u0006\u0011ဉ\u0007\u0012ဉ\b\u0013ဉ\t\u0014ဉ\n\u0015ဉ\u000b", new Object[]{"zzdv", "zzccd", "zzcce", "zzccf", "zzccg", zzuq.zzw(), "zzcch", "zzcci", "zzccj", "zzcck", "zzccl", "zzccm", "zzccn", "zzcco", "zzccp"});
                case 4:
                    return zzccq;
                case 5:
                    zzemx<zzi> zzemxVar = zzek;
                    zzemx<zzi> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzi.class) {
                            try {
                                zzemx<zzi> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzccq);
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

        public final String zzob() {
            return this.zzcce;
        }

        public final zzg zzod() {
            zzg zzgVar = this.zzccj;
            zzg zzgVar2 = zzgVar;
            if (zzgVar == null) {
                zzgVar2 = zzg.zzny();
            }
            return zzgVar2;
        }

        public final zza zzoe() {
            zza zzaVar = this.zzccm;
            zza zzaVar2 = zzaVar;
            if (zzaVar == null) {
                zzaVar2 = zza.zznj();
            }
            return zzaVar2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzj.class */
    public static final class zzj extends zzelb<zzj, zza> implements zzemq {
        private static final zzj zzccv;
        private static volatile zzemx<zzj> zzek;
        private int zzccs;
        private zzt zzccu;
        private int zzdv;
        private String zzccr = "";
        private zzelh zzcct = zzbil();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzj$zza.class */
        public static final class zza extends zzelb.zzb<zzj, zza> implements zzemq {
            private zza() {
                super(zzj.zzccv);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzj zzjVar = new zzj();
            zzccv = zzjVar;
            zzelb.zza(zzj.class, zzjVar);
        }

        private zzj() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzccv, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဈ��\u0002ဌ\u0001\u0003\u0016\u0004ဉ\u0002", new Object[]{"zzdv", "zzccr", "zzccs", zzuq.zzw(), "zzcct", "zzccu"});
                case 4:
                    return zzccv;
                case 5:
                    zzemx<zzj> zzemxVar = zzek;
                    zzemx<zzj> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzj.class) {
                            try {
                                zzemx<zzj> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzccv);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzk.class */
    public static final class zzk extends zzelb<zzk, zza> implements zzemq {
        private static final zzk zzccx;
        private static volatile zzemx<zzk> zzek;
        private zzelh zzcct = zzbil();
        private int zzccw;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzk$zza.class */
        public static final class zza extends zzelb.zzb<zzk, zza> implements zzemq {
            private zza() {
                super(zzk.zzccx);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzccx = zzkVar;
            zzelb.zza(zzk.class, zzkVar);
        }

        private zzk() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzccx, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001ဌ��\u0002\u0016", new Object[]{"zzdv", "zzccw", zzuq.zzw(), "zzcct"});
                case 4:
                    return zzccx;
                case 5:
                    zzemx<zzk> zzemxVar = zzek;
                    zzemx<zzk> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzk.class) {
                            try {
                                zzemx<zzk> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzccx);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzl.class */
    public static final class zzl extends zzelb<zzl, zza> implements zzemq {
        private static final zzl zzcda;
        private static volatile zzemx<zzl> zzek;
        private zzt zzccu;
        private int zzccw;
        private zzj zzccy;
        private zzell<zzs> zzccz = zzbin();
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzl$zza.class */
        public static final class zza extends zzelb.zzb<zzl, zza> implements zzemq {
            private zza() {
                super(zzl.zzcda);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzl zzlVar = new zzl();
            zzcda = zzlVar;
            zzelb.zza(zzl.class, zzlVar);
        }

        private zzl() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzl();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcda, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001ဉ��\u0002\u001b\u0003ဌ\u0001\u0004ဉ\u0002", new Object[]{"zzdv", "zzccy", "zzccz", zzs.class, "zzccw", zzuq.zzw(), "zzccu"});
                case 4:
                    return zzcda;
                case 5:
                    zzemx<zzl> zzemxVar = zzek;
                    zzemx<zzl> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzl.class) {
                            try {
                                zzemx<zzl> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcda);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzm.class */
    public static final class zzm extends zzelb<zzm, zzb> implements zzemq {
        private static final zzm zzcdc;
        private static volatile zzemx<zzm> zzek;
        private int zzcan;
        private int zzcdb;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzm$zza.class */
        public enum zza implements zzelg {
            CELLULAR_NETWORK_TYPE_UNSPECIFIED(0),
            TWO_G(1),
            THREE_G(2),
            LTE(4);
            
            private static final zzelf<zza> zzes = new zzut();
            private final int value;

            zza(int i) {
                this.value = i;
            }

            public static zza zzce(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return TWO_G;
                    }
                    if (i == 2) {
                        return THREE_G;
                    }
                    if (i == 4) {
                        return LTE;
                    }
                    return null;
                }
                return CELLULAR_NETWORK_TYPE_UNSPECIFIED;
            }

            public static zzeli zzw() {
                return zzus.zzeu;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzm$zzb.class */
        public static final class zzb extends zzelb.zzb<zzm, zzb> implements zzemq {
            private zzb() {
                super(zzm.zzcdc);
            }

            /* synthetic */ zzb(zzuf zzufVar) {
                this();
            }

            public final zzb zzb(zza zzaVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzm) this.zziqp).zza(zzaVar);
                return this;
            }

            public final zzb zzb(zzc zzcVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzm) this.zziqp).zza(zzcVar);
                return this;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzm$zzc.class */
        public enum zzc implements zzelg {
            NETWORKTYPE_UNSPECIFIED(0),
            CELL(1),
            WIFI(2);
            
            private static final zzelf<zzc> zzes = new zzuu();
            private final int value;

            zzc(int i) {
                this.value = i;
            }

            public static zzc zzcf(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return CELL;
                    }
                    if (i == 2) {
                        return WIFI;
                    }
                    return null;
                }
                return NETWORKTYPE_UNSPECIFIED;
            }

            public static zzeli zzw() {
                return zzuv.zzeu;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        static {
            zzm zzmVar = new zzm();
            zzcdc = zzmVar;
            zzelb.zza(zzm.class, zzmVar);
        }

        private zzm() {
        }

        public final void zza(zza zzaVar) {
            this.zzcdb = zzaVar.zzv();
            this.zzdv |= 2;
        }

        public final void zza(zzc zzcVar) {
            this.zzcan = zzcVar.zzv();
            this.zzdv |= 1;
        }

        public static zzb zzop() {
            return zzcdc.zzbii();
        }

        public static zzm zzoq() {
            return zzcdc;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzm();
                case 2:
                    return new zzb(null);
                case 3:
                    return zza(zzcdc, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဌ\u0001", new Object[]{"zzdv", "zzcan", zzc.zzw(), "zzcdb", zza.zzw()});
                case 4:
                    return zzcdc;
                case 5:
                    zzemx<zzm> zzemxVar = zzek;
                    zzemx<zzm> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzm.class) {
                            try {
                                zzemx<zzm> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcdc);
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

        public final boolean zzol() {
            return (this.zzdv & 1) != 0;
        }

        public final zzc zzom() {
            zzc zzcf = zzc.zzcf(this.zzcan);
            zzc zzcVar = zzcf;
            if (zzcf == null) {
                zzcVar = zzc.NETWORKTYPE_UNSPECIFIED;
            }
            return zzcVar;
        }

        public final boolean zzon() {
            return (this.zzdv & 2) != 0;
        }

        public final zza zzoo() {
            zza zzce = zza.zzce(this.zzcdb);
            zza zzaVar = zzce;
            if (zzce == null) {
                zzaVar = zza.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
            }
            return zzaVar;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzn.class */
    public static final class zzn extends zzelb<zzn, zza> implements zzemq {
        private static final zzn zzcdo;
        private static volatile zzemx<zzn> zzek;
        private int zzcdm;
        private zzt zzcdn;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzn$zza.class */
        public static final class zza extends zzelb.zzb<zzn, zza> implements zzemq {
            private zza() {
                super(zzn.zzcdo);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzn zznVar = new zzn();
            zzcdo = zznVar;
            zzelb.zza(zzn.class, zznVar);
        }

        private zzn() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzn();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcdo, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzdv", "zzcdm", zzuq.zzw(), "zzcdn"});
                case 4:
                    return zzcdo;
                case 5:
                    zzemx<zzn> zzemxVar = zzek;
                    zzemx<zzn> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzn.class) {
                            try {
                                zzemx<zzn> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcdo);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzo.class */
    public static final class zzo extends zzelb<zzo, zzb> implements zzemq {
        private static final zzo zzcdu;
        private static volatile zzemx<zzo> zzek;
        private int zzcdp;
        private int zzcdq;
        private long zzcdr;
        private long zzcdt;
        private int zzdv;
        private zzell<zza> zzbzm = zzbin();
        private String zzdw = "";
        private String zzcds = "";

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzo$zza.class */
        public static final class zza extends zzelb<zza, C2620zza> implements zzemq {
            private static final zzelj<Integer, zzc.zza> zzcea = new zzuw();
            private static final zza zzcei;
            private static volatile zzemx<zza> zzek;
            private long zzcdv;
            private int zzcdw;
            private long zzcdx;
            private long zzcdy;
            private zzelh zzcdz = zzbil();
            private zzm zzceb;
            private int zzcec;
            private int zzced;
            private int zzcee;
            private int zzcef;
            private int zzceg;
            private int zzceh;
            private int zzdv;

            /* renamed from: com.google.android.gms.internal.ads.zzug$zzo$zza$zza */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzo$zza$zza.class */
            public static final class C2620zza extends zzelb.zzb<zza, C2620zza> implements zzemq {
                private C2620zza() {
                    super(zza.zzcei);
                }

                /* synthetic */ C2620zza(zzuf zzufVar) {
                    this();
                }

                public final C2620zza zzb(zzm zzmVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zza(zzmVar);
                    return this;
                }

                public final C2620zza zzb(zzc zzcVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zza(zzcVar);
                    return this;
                }

                public final C2620zza zzcl(int i) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zzci(i);
                    return this;
                }

                public final C2620zza zzeu(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).setTimestamp(j);
                    return this;
                }

                public final C2620zza zzev(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zzeq(j);
                    return this;
                }

                public final C2620zza zzew(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zzer(j);
                    return this;
                }

                public final C2620zza zzf(zzuq zzuqVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zza(zzuqVar);
                    return this;
                }

                public final C2620zza zzf(Iterable<? extends zzc.zza> iterable) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zzd(iterable);
                    return this;
                }

                public final C2620zza zzg(zzuq zzuqVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zzb(zzuqVar);
                    return this;
                }

                public final C2620zza zzh(zzuq zzuqVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zzc(zzuqVar);
                    return this;
                }

                public final C2620zza zzi(zzuq zzuqVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zzd(zzuqVar);
                    return this;
                }

                public final C2620zza zzj(zzuq zzuqVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zze(zzuqVar);
                    return this;
                }
            }

            static {
                zza zzaVar = new zza();
                zzcei = zzaVar;
                zzelb.zza(zza.class, zzaVar);
            }

            private zza() {
            }

            public final void setTimestamp(long j) {
                this.zzdv |= 1;
                this.zzcdv = j;
            }

            public final void zza(zzm zzmVar) {
                zzmVar.getClass();
                this.zzceb = zzmVar;
                this.zzdv |= 16;
            }

            public final void zza(zzc zzcVar) {
                this.zzceh = zzcVar.zzv();
                this.zzdv |= 1024;
            }

            public final void zza(zzuq zzuqVar) {
                this.zzcdw = zzuqVar.zzv();
                this.zzdv |= 2;
            }

            public final void zzb(zzuq zzuqVar) {
                this.zzcec = zzuqVar.zzv();
                this.zzdv |= 32;
            }

            public final void zzc(zzuq zzuqVar) {
                this.zzced = zzuqVar.zzv();
                this.zzdv |= 64;
            }

            public final void zzci(int i) {
                this.zzdv |= 256;
                this.zzcef = i;
            }

            public final void zzd(zzuq zzuqVar) {
                this.zzcee = zzuqVar.zzv();
                this.zzdv |= 128;
            }

            public final void zzd(Iterable<? extends zzc.zza> iterable) {
                zzelh zzelhVar = this.zzcdz;
                if (!zzelhVar.zzbge()) {
                    this.zzcdz = zzelb.zza(zzelhVar);
                }
                for (zzc.zza zzaVar : iterable) {
                    this.zzcdz.zzhh(zzaVar.zzv());
                }
            }

            public final void zze(zzuq zzuqVar) {
                this.zzceg = zzuqVar.zzv();
                this.zzdv |= 512;
            }

            public final void zzeq(long j) {
                this.zzdv |= 4;
                this.zzcdx = j;
            }

            public final void zzer(long j) {
                this.zzdv |= 8;
                this.zzcdy = j;
            }

            public static zza zzg(byte[] bArr) throws zzelo {
                return (zza) zzelb.zza(zzcei, bArr);
            }

            public static C2620zza zzpg() {
                return zzcei.zzbii();
            }

            public final long getTimestamp() {
                return this.zzcdv;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzuf.zzel[i - 1]) {
                    case 1:
                        return new zza();
                    case 2:
                        return new C2620zza(null);
                    case 3:
                        return zza(zzcei, "\u0001\f��\u0001\u0001\f\f��\u0001��\u0001ဂ��\u0002ဌ\u0001\u0003ဂ\u0002\u0004ဂ\u0003\u0005\u001e\u0006ဉ\u0004\u0007ဌ\u0005\bဌ\u0006\tဌ\u0007\nင\b\u000bဌ\t\fဌ\n", new Object[]{"zzdv", "zzcdv", "zzcdw", zzuq.zzw(), "zzcdx", "zzcdy", "zzcdz", zzc.zza.zzw(), "zzceb", "zzcec", zzuq.zzw(), "zzced", zzuq.zzw(), "zzcee", zzuq.zzw(), "zzcef", "zzceg", zzuq.zzw(), "zzceh", zzc.zzw()});
                    case 4:
                        return zzcei;
                    case 5:
                        zzemx<zza> zzemxVar = zzek;
                        zzemx<zza> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zza.class) {
                                try {
                                    zzemx<zza> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzcei);
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

            public final zzuq zzov() {
                zzuq zzcd = zzuq.zzcd(this.zzcdw);
                zzuq zzuqVar = zzcd;
                if (zzcd == null) {
                    zzuqVar = zzuq.ENUM_FALSE;
                }
                return zzuqVar;
            }

            public final long zzow() {
                return this.zzcdx;
            }

            public final long zzox() {
                return this.zzcdy;
            }

            public final List<zzc.zza> zzoy() {
                return new zzelk(this.zzcdz, zzcea);
            }

            public final zzm zzoz() {
                zzm zzmVar = this.zzceb;
                zzm zzmVar2 = zzmVar;
                if (zzmVar == null) {
                    zzmVar2 = zzm.zzoq();
                }
                return zzmVar2;
            }

            public final zzuq zzpa() {
                zzuq zzcd = zzuq.zzcd(this.zzcec);
                zzuq zzuqVar = zzcd;
                if (zzcd == null) {
                    zzuqVar = zzuq.ENUM_FALSE;
                }
                return zzuqVar;
            }

            public final zzuq zzpb() {
                zzuq zzcd = zzuq.zzcd(this.zzced);
                zzuq zzuqVar = zzcd;
                if (zzcd == null) {
                    zzuqVar = zzuq.ENUM_FALSE;
                }
                return zzuqVar;
            }

            public final zzuq zzpc() {
                zzuq zzcd = zzuq.zzcd(this.zzcee);
                zzuq zzuqVar = zzcd;
                if (zzcd == null) {
                    zzuqVar = zzuq.ENUM_FALSE;
                }
                return zzuqVar;
            }

            public final int zzpd() {
                return this.zzcef;
            }

            public final zzuq zzpe() {
                zzuq zzcd = zzuq.zzcd(this.zzceg);
                zzuq zzuqVar = zzcd;
                if (zzcd == null) {
                    zzuqVar = zzuq.ENUM_FALSE;
                }
                return zzuqVar;
            }

            public final zzc zzpf() {
                zzc zzcm = zzc.zzcm(this.zzceh);
                zzc zzcVar = zzcm;
                if (zzcm == null) {
                    zzcVar = zzc.UNSPECIFIED;
                }
                return zzcVar;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzo$zzb.class */
        public static final class zzb extends zzelb.zzb<zzo, zzb> implements zzemq {
            private zzb() {
                super(zzo.zzcdu);
            }

            /* synthetic */ zzb(zzuf zzufVar) {
                this();
            }

            public final zzb zzca(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzo) this.zziqp).zzj(str);
                return this;
            }

            public final zzb zzcb(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzo) this.zziqp).zzbz(str);
                return this;
            }

            public final zzb zzcj(int i) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzo) this.zziqp).zzcg(i);
                return this;
            }

            public final zzb zzck(int i) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzo) this.zziqp).zzch(i);
                return this;
            }

            public final zzb zze(Iterable<? extends zza> iterable) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzo) this.zziqp).zzc(iterable);
                return this;
            }

            public final zzb zzes(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzo) this.zziqp).zzeo(j);
                return this;
            }

            public final zzb zzet(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzo) this.zziqp).zzep(j);
                return this;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzo$zzc.class */
        public enum zzc implements zzelg {
            UNSPECIFIED(0),
            CONNECTING(1),
            CONNECTED(2),
            DISCONNECTING(3),
            DISCONNECTED(4),
            SUSPENDED(5);
            
            private static final zzelf<zzc> zzes = new zzux();
            private final int value;

            zzc(int i) {
                this.value = i;
            }

            public static zzc zzcm(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return CONNECTING;
                    }
                    if (i == 2) {
                        return CONNECTED;
                    }
                    if (i == 3) {
                        return DISCONNECTING;
                    }
                    if (i == 4) {
                        return DISCONNECTED;
                    }
                    if (i == 5) {
                        return SUSPENDED;
                    }
                    return null;
                }
                return UNSPECIFIED;
            }

            public static zzeli zzw() {
                return zzuy.zzeu;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        static {
            zzo zzoVar = new zzo();
            zzcdu = zzoVar;
            zzelb.zza(zzo.class, zzoVar);
        }

        private zzo() {
        }

        public final void zzbz(String str) {
            str.getClass();
            this.zzdv |= 16;
            this.zzcds = str;
        }

        public final void zzc(Iterable<? extends zza> iterable) {
            zzell<zza> zzellVar = this.zzbzm;
            if (!zzellVar.zzbge()) {
                this.zzbzm = zzelb.zza(zzellVar);
            }
            zzejh.zza(iterable, this.zzbzm);
        }

        public final void zzcg(int i) {
            this.zzdv |= 1;
            this.zzcdp = i;
        }

        public final void zzch(int i) {
            this.zzdv |= 2;
            this.zzcdq = i;
        }

        public final void zzeo(long j) {
            this.zzdv |= 4;
            this.zzcdr = j;
        }

        public final void zzep(long j) {
            this.zzdv |= 32;
            this.zzcdt = j;
        }

        public final void zzj(String str) {
            str.getClass();
            this.zzdv |= 8;
            this.zzdw = str;
        }

        public static zzb zzot() {
            return zzcdu.zzbii();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzo();
                case 2:
                    return new zzb(null);
                case 3:
                    return zza(zzcdu, "\u0001\u0007��\u0001\u0001\u0007\u0007��\u0001��\u0001\u001b\u0002င��\u0003င\u0001\u0004ဂ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဂ\u0005", new Object[]{"zzdv", "zzbzm", zza.class, "zzcdp", "zzcdq", "zzcdr", "zzdw", "zzcds", "zzcdt"});
                case 4:
                    return zzcdu;
                case 5:
                    zzemx<zzo> zzemxVar = zzek;
                    zzemx<zzo> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzo.class) {
                            try {
                                zzemx<zzo> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcdu);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzp.class */
    public static final class zzp extends zzelb<zzp, zza> implements zzemq {
        private static final zzp zzcfb;
        private static volatile zzemx<zzp> zzek;
        private int zzceq = 1000;
        private int zzcer = 1000;
        private int zzces;
        private int zzcet;
        private int zzceu;
        private int zzcev;
        private int zzcew;
        private int zzcex;
        private int zzcey;
        private int zzcez;
        private zzq zzcfa;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzp$zza.class */
        public static final class zza extends zzelb.zzb<zzp, zza> implements zzemq {
            private zza() {
                super(zzp.zzcfb);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzp zzpVar = new zzp();
            zzcfb = zzpVar;
            zzelb.zza(zzp.class, zzpVar);
        }

        private zzp() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzp();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcfb, "\u0001\u000b��\u0001\u0001\u000b\u000b������\u0001ဌ��\u0002ဌ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tင\b\nင\t\u000bဉ\n", new Object[]{"zzdv", "zzceq", zzuq.zzw(), "zzcer", zzuq.zzw(), "zzces", "zzcet", "zzceu", "zzcev", "zzcew", "zzcex", "zzcey", "zzcez", "zzcfa"});
                case 4:
                    return zzcfb;
                case 5:
                    zzemx<zzp> zzemxVar = zzek;
                    zzemx<zzp> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzp.class) {
                            try {
                                zzemx<zzp> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcfb);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzq.class */
    public static final class zzq extends zzelb<zzq, zza> implements zzemq {
        private static final zzq zzcfe;
        private static volatile zzemx<zzq> zzek;
        private int zzcfc;
        private int zzcfd;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzq$zza.class */
        public static final class zza extends zzelb.zzb<zzq, zza> implements zzemq {
            private zza() {
                super(zzq.zzcfe);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzq zzqVar = new zzq();
            zzcfe = zzqVar;
            zzelb.zza(zzq.class, zzqVar);
        }

        private zzq() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzq();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcfe, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzdv", "zzcfc", "zzcfd"});
                case 4:
                    return zzcfe;
                case 5:
                    zzemx<zzq> zzemxVar = zzek;
                    zzemx<zzq> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzq.class) {
                            try {
                                zzemx<zzq> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcfe);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzr.class */
    public static final class zzr extends zzelb<zzr, zza> implements zzemq {
        private static final zzr zzcfh;
        private static volatile zzemx<zzr> zzek;
        private int zzcff;
        private int zzcfg;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzr$zza.class */
        public static final class zza extends zzelb.zzb<zzr, zza> implements zzemq {
            private zza() {
                super(zzr.zzcfh);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzr zzrVar = new zzr();
            zzcfh = zzrVar;
            zzelb.zza(zzr.class, zzrVar);
        }

        private zzr() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzr();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcfh, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzdv", "zzcff", "zzcfg"});
                case 4:
                    return zzcfh;
                case 5:
                    zzemx<zzr> zzemxVar = zzek;
                    zzemx<zzr> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzr.class) {
                            try {
                                zzemx<zzr> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcfh);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzs.class */
    public static final class zzs extends zzelb<zzs, zza> implements zzemq {
        private static final zzs zzcfi;
        private static volatile zzemx<zzs> zzek;
        private String zzccr = "";
        private int zzccs;
        private zzt zzccu;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzs$zza.class */
        public static final class zza extends zzelb.zzb<zzs, zza> implements zzemq {
            private zza() {
                super(zzs.zzcfi);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzs zzsVar = new zzs();
            zzcfi = zzsVar;
            zzelb.zza(zzs.class, zzsVar);
        }

        private zzs() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzs();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcfi, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဌ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzccr", "zzccs", zzuq.zzw(), "zzccu"});
                case 4:
                    return zzcfi;
                case 5:
                    zzemx<zzs> zzemxVar = zzek;
                    zzemx<zzs> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzs.class) {
                            try {
                                zzemx<zzs> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcfi);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzt.class */
    public static final class zzt extends zzelb<zzt, zza> implements zzemq {
        private static final zzt zzcfl;
        private static volatile zzemx<zzt> zzek;
        private int zzcfj;
        private int zzcfk;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzt$zza.class */
        public static final class zza extends zzelb.zzb<zzt, zza> implements zzemq {
            private zza() {
                super(zzt.zzcfl);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzt zztVar = new zzt();
            zzcfl = zztVar;
            zzelb.zza(zzt.class, zztVar);
        }

        private zzt() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzt();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcfl, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzdv", "zzcfj", "zzcfk"});
                case 4:
                    return zzcfl;
                case 5:
                    zzemx<zzt> zzemxVar = zzek;
                    zzemx<zzt> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzt.class) {
                            try {
                                zzemx<zzt> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcfl);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzu.class */
    public static final class zzu extends zzelb<zzu, zza> implements zzemq {
        private static final zzu zzcfp;
        private static volatile zzemx<zzu> zzek;
        private int zzcfm;
        private int zzcfn;
        private int zzcfo;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzu$zza.class */
        public static final class zza extends zzelb.zzb<zzu, zza> implements zzemq {
            private zza() {
                super(zzu.zzcfp);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }

            public final zza zzcq(int i) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzu) this.zziqp).zzcn(i);
                return this;
            }

            public final zza zzcr(int i) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzu) this.zziqp).zzco(i);
                return this;
            }

            public final zza zzcs(int i) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzu) this.zziqp).zzcp(i);
                return this;
            }
        }

        static {
            zzu zzuVar = new zzu();
            zzcfp = zzuVar;
            zzelb.zza(zzu.class, zzuVar);
        }

        private zzu() {
        }

        public final void zzcn(int i) {
            this.zzdv |= 1;
            this.zzcfm = i;
        }

        public final void zzco(int i) {
            this.zzdv |= 2;
            this.zzcfn = i;
        }

        public final void zzcp(int i) {
            this.zzdv |= 4;
            this.zzcfo = i;
        }

        public static zza zzpn() {
            return zzcfp.zzbii();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzu();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcfp, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002င\u0001\u0003င\u0002", new Object[]{"zzdv", "zzcfm", "zzcfn", "zzcfo"});
                case 4:
                    return zzcfp;
                case 5:
                    zzemx<zzu> zzemxVar = zzek;
                    zzemx<zzu> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzu.class) {
                            try {
                                zzemx<zzu> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcfp);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzv.class */
    public static final class zzv extends zzelb<zzv, zza> implements zzemq {
        private static final zzv zzcgg;
        private static volatile zzemx<zzv> zzek;
        private zzz zzcfq;
        private zzab zzcfr;
        private zzac zzcfs;
        private zzad zzcft;
        private zzw zzcfu;
        private zzaa zzcfv;
        private zzy zzcfw;
        private int zzcfx;
        private int zzcfy;
        private zzt zzcfz;
        private int zzcga;
        private int zzcgb;
        private int zzcgc;
        private int zzcgd;
        private int zzcge;
        private long zzcgf;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzv$zza.class */
        public static final class zza extends zzelb.zzb<zzv, zza> implements zzemq {
            private zza() {
                super(zzv.zzcgg);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzv zzvVar = new zzv();
            zzcgg = zzvVar;
            zzelb.zza(zzv.class, zzvVar);
        }

        private zzv() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzv();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcgg, "\u0001\u0010��\u0001\u0005\u0014\u0010������\u0005ဉ��\u0006ဉ\u0001\u0007ဉ\u0002\bဉ\u0003\tဉ\u0004\nဉ\u0005\u000bဉ\u0006\fင\u0007\rင\b\u000eဉ\t\u000fင\n\u0010င\u000b\u0011င\f\u0012င\r\u0013င\u000e\u0014ဃ\u000f", new Object[]{"zzdv", "zzcfq", "zzcfr", "zzcfs", "zzcft", "zzcfu", "zzcfv", "zzcfw", "zzcfx", "zzcfy", "zzcfz", "zzcga", "zzcgb", "zzcgc", "zzcgd", "zzcge", "zzcgf"});
                case 4:
                    return zzcgg;
                case 5:
                    zzemx<zzv> zzemxVar = zzek;
                    zzemx<zzv> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzv.class) {
                            try {
                                zzemx<zzv> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcgg);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzw.class */
    public static final class zzw extends zzelb<zzw, zza> implements zzemq {
        private static final zzw zzcgj;
        private static volatile zzemx<zzw> zzek;
        private int zzccw = 1000;
        private zzx zzcgh;
        private zzt zzcgi;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzw$zza.class */
        public static final class zza extends zzelb.zzb<zzw, zza> implements zzemq {
            private zza() {
                super(zzw.zzcgj);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzw zzwVar = new zzw();
            zzcgj = zzwVar;
            zzelb.zza(zzw.class, zzwVar);
        }

        private zzw() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzw();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcgj, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzdv", "zzccw", zzuq.zzw(), "zzcgh", "zzcgi"});
                case 4:
                    return zzcgj;
                case 5:
                    zzemx<zzw> zzemxVar = zzek;
                    zzemx<zzw> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzw.class) {
                            try {
                                zzemx<zzw> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcgj);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzx.class */
    public static final class zzx extends zzelb<zzx, zzb> implements zzemq {
        private static final zzx zzcgl;
        private static volatile zzemx<zzx> zzek;
        private int zzcgk;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzx$zza.class */
        public enum zza implements zzelg {
            VIDEO_ERROR_CODE_UNSPECIFIED(0),
            OPENGL_RENDERING_FAILED(1),
            CACHE_LOAD_FAILED(2),
            ANDROID_TARGET_API_TOO_LOW(3);
            
            private static final zzelf<zza> zzes = new zzva();
            private final int value;

            zza(int i) {
                this.value = i;
            }

            public static zza zzct(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return OPENGL_RENDERING_FAILED;
                    }
                    if (i == 2) {
                        return CACHE_LOAD_FAILED;
                    }
                    if (i == 3) {
                        return ANDROID_TARGET_API_TOO_LOW;
                    }
                    return null;
                }
                return VIDEO_ERROR_CODE_UNSPECIFIED;
            }

            public static zzeli zzw() {
                return zzuz.zzeu;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzx$zzb.class */
        public static final class zzb extends zzelb.zzb<zzx, zzb> implements zzemq {
            private zzb() {
                super(zzx.zzcgl);
            }

            /* synthetic */ zzb(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzx zzxVar = new zzx();
            zzcgl = zzxVar;
            zzelb.zza(zzx.class, zzxVar);
        }

        private zzx() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzx();
                case 2:
                    return new zzb(null);
                case 3:
                    return zza(zzcgl, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဌ��", new Object[]{"zzdv", "zzcgk", zza.zzw()});
                case 4:
                    return zzcgl;
                case 5:
                    zzemx<zzx> zzemxVar = zzek;
                    zzemx<zzx> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzx.class) {
                            try {
                                zzemx<zzx> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcgl);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzy.class */
    public static final class zzy extends zzelb<zzy, zza> implements zzemq {
        private static final zzy zzcgs;
        private static volatile zzemx<zzy> zzek;
        private int zzccw = 1000;
        private zzx zzcgh;
        private zzt zzcgi;
        private zzu zzcgr;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzy$zza.class */
        public static final class zza extends zzelb.zzb<zzy, zza> implements zzemq {
            private zza() {
                super(zzy.zzcgs);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzy zzyVar = new zzy();
            zzcgs = zzyVar;
            zzelb.zza(zzy.class, zzyVar);
        }

        private zzy() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzy();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcgs, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဉ��\u0002ဌ\u0001\u0003ဉ\u0002\u0004ဉ\u0003", new Object[]{"zzdv", "zzcgr", "zzccw", zzuq.zzw(), "zzcgh", "zzcgi"});
                case 4:
                    return zzcgs;
                case 5:
                    zzemx<zzy> zzemxVar = zzek;
                    zzemx<zzy> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzy.class) {
                            try {
                                zzemx<zzy> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcgs);
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
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzz.class */
    public static final class zzz extends zzelb<zzz, zza> implements zzemq {
        private static final zzz zzcgu;
        private static volatile zzemx<zzz> zzek;
        private int zzccw = 1000;
        private int zzcfx;
        private int zzcfy;
        private zzx zzcgh;
        private int zzcgt;
        private int zzdv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzug$zzz$zza.class */
        public static final class zza extends zzelb.zzb<zzz, zza> implements zzemq {
            private zza() {
                super(zzz.zzcgu);
            }

            /* synthetic */ zza(zzuf zzufVar) {
                this();
            }
        }

        static {
            zzz zzzVar = new zzz();
            zzcgu = zzzVar;
            zzelb.zza(zzz.class, zzzVar);
        }

        private zzz() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzuf.zzel[i - 1]) {
                case 1:
                    return new zzz();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzcgu, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဌ��\u0002ဉ\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzdv", "zzccw", zzuq.zzw(), "zzcgh", "zzcfx", "zzcfy", "zzcgt"});
                case 4:
                    return zzcgu;
                case 5:
                    zzemx<zzz> zzemxVar = zzek;
                    zzemx<zzz> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzz.class) {
                            try {
                                zzemx<zzz> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzcgu);
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
    }
}
