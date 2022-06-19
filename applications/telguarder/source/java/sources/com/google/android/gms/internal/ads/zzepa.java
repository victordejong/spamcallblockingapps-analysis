package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa.class */
public final class zzepa {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zza.class */
    public static final class zza extends zzelb<zza, C2606zza> implements zzemq {
        private static volatile zzemx<zza> zzek;
        private static final zza zzixr;
        private int zzdv;
        private int zzixk;
        private zzb zzixl;
        private boolean zzixo;
        private boolean zzixp;
        private byte zzixq = (byte) 2;
        private zzejr zzixm = zzejr.zzilz;
        private zzejr zzixn = zzejr.zzilz;

        /* renamed from: com.google.android.gms.internal.ads.zzepa$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zza$zza.class */
        public static final class C2606zza extends zzelb.zzb<zza, C2606zza> implements zzemq {
            private C2606zza() {
                super(zza.zzixr);
            }

            /* synthetic */ C2606zza(zzeoz zzeozVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zza$zzb.class */
        public static final class zzb extends zzelb<zzb, C2607zza> implements zzemq {
            private static volatile zzemx<zzb> zzek;
            private static final zzb zzixw;
            private int zzdv;
            private String zzixs = "";
            private String zzixt = "";
            private String zzixu = "";
            private int zzixv;

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zza$zzb$zza */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zza$zzb$zza.class */
            public static final class C2607zza extends zzelb.zzb<zzb, C2607zza> implements zzemq {
                private C2607zza() {
                    super(zzb.zzixw);
                }

                /* synthetic */ C2607zza(zzeoz zzeozVar) {
                    this();
                }
            }

            static {
                zzb zzbVar = new zzb();
                zzixw = zzbVar;
                zzelb.zza(zzb.class, zzbVar);
            }

            private zzb() {
            }

            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new C2607zza(null);
                    case 3:
                        return zza(zzixw, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003", new Object[]{"zzdv", "zzixs", "zzixt", "zzixu", "zzixv"});
                    case 4:
                        return zzixw;
                    case 5:
                        zzemx<zzb> zzemxVar = zzek;
                        zzemx<zzb> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zzb.class) {
                                try {
                                    zzemx<zzb> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzixw);
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

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zza$zzc.class */
        public enum zzc implements zzelg {
            SAFE(0),
            DANGEROUS(1),
            UNKNOWN(2),
            POTENTIALLY_UNWANTED(3),
            DANGEROUS_HOST(4);
            
            private static final zzelf<zzc> zzes = new zzepb();
            private final int value;

            zzc(int i) {
                this.value = i;
            }

            public static zzc zzhy(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return DANGEROUS;
                    }
                    if (i == 2) {
                        return UNKNOWN;
                    }
                    if (i == 3) {
                        return POTENTIALLY_UNWANTED;
                    }
                    if (i == 4) {
                        return DANGEROUS_HOST;
                    }
                    return null;
                }
                return SAFE;
            }

            public static zzeli zzw() {
                return zzepc.zzeu;
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
            zza zzaVar = new zza();
            zzixr = zzaVar;
            zzelb.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzeoz.zzel[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C2606zza(null);
                case 3:
                    return zza(zzixr, "\u0001\u0006��\u0001\u0001\u0006\u0006����\u0001\u0001ᔌ��\u0002ဉ\u0001\u0003ည\u0002\u0004ည\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzdv", "zzixk", zzc.zzw(), "zzixl", "zzixm", "zzixn", "zzixo", "zzixp"});
                case 4:
                    return zzixr;
                case 5:
                    zzemx<zza> zzemxVar = zzek;
                    zzemx<zza> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzemx<zza> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzixr);
                                    zzek = zzemxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzemxVar2;
                case 6:
                    return Byte.valueOf(this.zzixq);
                case 7:
                    int i2 = 1;
                    if (obj == null) {
                        i2 = 0;
                    }
                    this.zzixq = (byte) i2;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb.class */
    public static final class zzb extends zzelb<zzb, C2609zzb> implements zzemq {
        private static volatile zzemx<zzb> zzek;
        private static final zzb zziys;
        private int zzcan;
        private int zzdv;
        private int zziyd;
        private zza zziyg;
        private zzf zziyj;
        private boolean zziyk;
        private boolean zziyn;
        private boolean zziyo;
        private zzi zziyp;
        private byte zzixq = (byte) 2;
        private String zzixt = "";
        private String zziye = "";
        private String zziyf = "";
        private zzell<zzh> zziyh = zzbin();
        private String zziyi = "";
        private zzell<String> zziyl = zzelb.zzbin();
        private String zziym = "";
        private zzejr zzixm = zzejr.zzilz;
        private zzell<String> zziyq = zzelb.zzbin();
        private zzell<String> zziyr = zzelb.zzbin();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zza.class */
        public static final class zza extends zzelb<zza, C2608zza> implements zzemq {
            private static volatile zzemx<zza> zzek;
            private static final zza zziyu;
            private int zzdv;
            private String zziyt = "";

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zza$zza */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zza$zza.class */
            public static final class C2608zza extends zzelb.zzb<zza, C2608zza> implements zzemq {
                private C2608zza() {
                    super(zza.zziyu);
                }

                /* synthetic */ C2608zza(zzeoz zzeozVar) {
                    this();
                }

                public final C2608zza zzih(String str) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zza) this.zziqp).zzid(str);
                    return this;
                }
            }

            static {
                zza zzaVar = new zza();
                zziyu = zzaVar;
                zzelb.zza(zza.class, zzaVar);
            }

            private zza() {
            }

            public static C2608zza zzblr() {
                return zziyu.zzbii();
            }

            public final void zzid(String str) {
                str.getClass();
                this.zzdv |= 1;
                this.zziyt = str;
            }

            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zza();
                    case 2:
                        return new C2608zza(null);
                    case 3:
                        return zza(zziyu, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001ဈ��", new Object[]{"zzdv", "zziyt"});
                    case 4:
                        return zziyu;
                    case 5:
                        zzemx<zza> zzemxVar = zzek;
                        zzemx<zza> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zza.class) {
                                try {
                                    zzemx<zza> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zziyu);
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

        /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zzb */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzb.class */
        public static final class C2609zzb extends zzelb.zzb<zzb, C2609zzb> implements zzemq {
            private C2609zzb() {
                super(zzb.zziys);
            }

            /* synthetic */ C2609zzb(zzeoz zzeozVar) {
                this();
            }

            public final String getUrl() {
                return ((zzb) this.zziqp).getUrl();
            }

            public final C2609zzb zzb(zza zzaVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zza(zzaVar);
                return this;
            }

            public final C2609zzb zzb(zzf zzfVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zza(zzfVar);
                return this;
            }

            public final C2609zzb zzb(zzg zzgVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zza(zzgVar);
                return this;
            }

            public final C2609zzb zzb(zzh zzhVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zza(zzhVar);
                return this;
            }

            public final C2609zzb zzb(zzi zziVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zza(zziVar);
                return this;
            }

            public final List<zzh> zzblm() {
                return Collections.unmodifiableList(((zzb) this.zziqp).zzblm());
            }

            public final String zzbln() {
                return ((zzb) this.zziqp).zzbln();
            }

            public final C2609zzb zzblt() {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zzblo();
                return this;
            }

            public final C2609zzb zzie(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).setUrl(str);
                return this;
            }

            public final C2609zzb zzif(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zzic(str);
                return this;
            }

            public final C2609zzb zzig(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zzdv(str);
                return this;
            }

            public final C2609zzb zzo(Iterable<String> iterable) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zzm(iterable);
                return this;
            }

            public final C2609zzb zzp(Iterable<String> iterable) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zzb) this.zziqp).zzn(iterable);
                return this;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzc.class */
        public static final class zzc extends zzelb<zzc, zza> implements zzemq {
            private static volatile zzemx<zzc> zzek;
            private static final zzc zziyw;
            private int zzdv;
            private byte zzixq = (byte) 2;
            private zzejr zziyv = zzejr.zzilz;
            private zzejr zzigt = zzejr.zzilz;

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzc$zza.class */
            public static final class zza extends zzelb.zzb<zzc, zza> implements zzemq {
                private zza() {
                    super(zzc.zziyw);
                }

                /* synthetic */ zza(zzeoz zzeozVar) {
                    this();
                }

                public final zza zzap(zzejr zzejrVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzc) this.zziqp).zzao(zzejrVar);
                    return this;
                }

                public final zza zzaq(zzejr zzejrVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzc) this.zziqp).zzaf(zzejrVar);
                    return this;
                }
            }

            static {
                zzc zzcVar = new zzc();
                zziyw = zzcVar;
                zzelb.zza(zzc.class, zzcVar);
            }

            private zzc() {
            }

            public final void zzaf(zzejr zzejrVar) {
                zzejrVar.getClass();
                this.zzdv |= 2;
                this.zzigt = zzejrVar;
            }

            public final void zzao(zzejr zzejrVar) {
                zzejrVar.getClass();
                this.zzdv |= 1;
                this.zziyv = zzejrVar;
            }

            public static zza zzblu() {
                return zziyw.zzbii();
            }

            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzc();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zza(zziyw, "\u0001\u0002��\u0001\u0001\u0002\u0002����\u0001\u0001ᔊ��\u0002ည\u0001", new Object[]{"zzdv", "zziyv", "zzigt"});
                    case 4:
                        return zziyw;
                    case 5:
                        zzemx<zzc> zzemxVar = zzek;
                        zzemx<zzc> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zzc.class) {
                                try {
                                    zzemx<zzc> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zziyw);
                                        zzek = zzemxVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzemxVar2;
                    case 6:
                        return Byte.valueOf(this.zzixq);
                    case 7:
                        int i2 = 1;
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzixq = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzd.class */
        public static final class zzd extends zzelb<zzd, C2611zzb> implements zzemq {
            private static volatile zzemx<zzd> zzek;
            private static final zzd zzizc;
            private int zzdv;
            private zza zziyx;
            private int zzizb;
            private byte zzixq = (byte) 2;
            private zzell<zzc> zziyy = zzbin();
            private zzejr zziyz = zzejr.zzilz;
            private zzejr zziza = zzejr.zzilz;

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzd$zza.class */
            public static final class zza extends zzelb<zza, C2610zza> implements zzemq {
                private static volatile zzemx<zza> zzek;
                private static final zza zzizg;
                private int zzdv;
                private zzejr zzizd = zzejr.zzilz;
                private zzejr zzize = zzejr.zzilz;
                private zzejr zzizf = zzejr.zzilz;

                /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zzd$zza$zza */
                /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzd$zza$zza.class */
                public static final class C2610zza extends zzelb.zzb<zza, C2610zza> implements zzemq {
                    private C2610zza() {
                        super(zza.zzizg);
                    }

                    /* synthetic */ C2610zza(zzeoz zzeozVar) {
                        this();
                    }
                }

                static {
                    zza zzaVar = new zza();
                    zzizg = zzaVar;
                    zzelb.zza(zza.class, zzaVar);
                }

                private zza() {
                }

                @Override // com.google.android.gms.internal.ads.zzelb
                public final Object zza(int i, Object obj, Object obj2) {
                    switch (zzeoz.zzel[i - 1]) {
                        case 1:
                            return new zza();
                        case 2:
                            return new C2610zza(null);
                        case 3:
                            return zza(zzizg, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ည��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzizd", "zzize", "zzizf"});
                        case 4:
                            return zzizg;
                        case 5:
                            zzemx<zza> zzemxVar = zzek;
                            zzemx<zza> zzemxVar2 = zzemxVar;
                            if (zzemxVar == null) {
                                synchronized (zza.class) {
                                    try {
                                        zzemx<zza> zzemxVar3 = zzek;
                                        zzemxVar2 = zzemxVar3;
                                        if (zzemxVar3 == null) {
                                            zzemxVar2 = new zzelb.zza<>(zzizg);
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

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zzd$zzb */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzd$zzb.class */
            public static final class C2611zzb extends zzelb.zzb<zzd, C2611zzb> implements zzemq {
                private C2611zzb() {
                    super(zzd.zzizc);
                }

                /* synthetic */ C2611zzb(zzeoz zzeozVar) {
                    this();
                }

                public final C2611zzb zzb(zzc zzcVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzd) this.zziqp).zza(zzcVar);
                    return this;
                }
            }

            static {
                zzd zzdVar = new zzd();
                zzizc = zzdVar;
                zzelb.zza(zzd.class, zzdVar);
            }

            private zzd() {
            }

            public final void zza(zzc zzcVar) {
                zzcVar.getClass();
                zzell<zzc> zzellVar = this.zziyy;
                if (!zzellVar.zzbge()) {
                    this.zziyy = zzelb.zza(zzellVar);
                }
                this.zziyy.add(zzcVar);
            }

            public static C2611zzb zzblw() {
                return zzizc.zzbii();
            }

            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new C2611zzb(null);
                    case 3:
                        return zza(zzizc, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzdv", "zziyx", "zziyy", zzc.class, "zziyz", "zziza", "zzizb"});
                    case 4:
                        return zzizc;
                    case 5:
                        zzemx<zzd> zzemxVar = zzek;
                        zzemx<zzd> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zzd.class) {
                                try {
                                    zzemx<zzd> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzizc);
                                        zzek = zzemxVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzemxVar2;
                    case 6:
                        return Byte.valueOf(this.zzixq);
                    case 7:
                        int i2 = 1;
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzixq = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zze.class */
        public static final class zze extends zzelb<zze, C2613zzb> implements zzemq {
            private static volatile zzemx<zze> zzek;
            private static final zze zzizj;
            private int zzdv;
            private int zzizb;
            private zza zzizh;
            private byte zzixq = (byte) 2;
            private zzell<zzc> zziyy = zzbin();
            private zzejr zziyz = zzejr.zzilz;
            private zzejr zziza = zzejr.zzilz;
            private zzejr zzizi = zzejr.zzilz;

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zze$zza.class */
            public static final class zza extends zzelb<zza, C2612zza> implements zzemq {
                private static volatile zzemx<zza> zzek;
                private static final zza zzizm;
                private int zzdv;
                private int zzizk;
                private zzejr zzizl = zzejr.zzilz;
                private zzejr zzizf = zzejr.zzilz;

                /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zze$zza$zza */
                /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zze$zza$zza.class */
                public static final class C2612zza extends zzelb.zzb<zza, C2612zza> implements zzemq {
                    private C2612zza() {
                        super(zza.zzizm);
                    }

                    /* synthetic */ C2612zza(zzeoz zzeozVar) {
                        this();
                    }
                }

                static {
                    zza zzaVar = new zza();
                    zzizm = zzaVar;
                    zzelb.zza(zza.class, zzaVar);
                }

                private zza() {
                }

                @Override // com.google.android.gms.internal.ads.zzelb
                public final Object zza(int i, Object obj, Object obj2) {
                    switch (zzeoz.zzel[i - 1]) {
                        case 1:
                            return new zza();
                        case 2:
                            return new C2612zza(null);
                        case 3:
                            return zza(zzizm, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001င��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzizk", "zzizl", "zzizf"});
                        case 4:
                            return zzizm;
                        case 5:
                            zzemx<zza> zzemxVar = zzek;
                            zzemx<zza> zzemxVar2 = zzemxVar;
                            if (zzemxVar == null) {
                                synchronized (zza.class) {
                                    try {
                                        zzemx<zza> zzemxVar3 = zzek;
                                        zzemxVar2 = zzemxVar3;
                                        if (zzemxVar3 == null) {
                                            zzemxVar2 = new zzelb.zza<>(zzizm);
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

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zze$zzb */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zze$zzb.class */
            public static final class C2613zzb extends zzelb.zzb<zze, C2613zzb> implements zzemq {
                private C2613zzb() {
                    super(zze.zzizj);
                }

                /* synthetic */ C2613zzb(zzeoz zzeozVar) {
                    this();
                }
            }

            static {
                zze zzeVar = new zze();
                zzizj = zzeVar;
                zzelb.zza(zze.class, zzeVar);
            }

            private zze() {
            }

            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zze();
                    case 2:
                        return new C2613zzb(null);
                    case 3:
                        return zza(zzizj, "\u0001\u0006��\u0001\u0001\u0006\u0006��\u0001\u0001\u0001ဉ��\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzdv", "zzizh", "zziyy", zzc.class, "zziyz", "zziza", "zzizb", "zzizi"});
                    case 4:
                        return zzizj;
                    case 5:
                        zzemx<zze> zzemxVar = zzek;
                        zzemx<zze> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zze.class) {
                                try {
                                    zzemx<zze> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzizj);
                                        zzek = zzemxVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzemxVar2;
                    case 6:
                        return Byte.valueOf(this.zzixq);
                    case 7:
                        int i2 = 1;
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzixq = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzf.class */
        public static final class zzf extends zzelb<zzf, C2614zzb> implements zzemq {
            private static volatile zzemx<zzf> zzek;
            private static final zzf zzizp;
            private int zzcan;
            private int zzdv;
            private String zzizn = "";
            private zzejr zzizo = zzejr.zzilz;

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzf$zza.class */
            public enum zza implements zzelg {
                TYPE_UNKNOWN(0),
                TYPE_CREATIVE(1);
                
                private static final zzelf<zza> zzes = new zzepe();
                private final int value;

                zza(int i) {
                    this.value = i;
                }

                public static zza zzhz(int i) {
                    if (i != 0) {
                        if (i == 1) {
                            return TYPE_CREATIVE;
                        }
                        return null;
                    }
                    return TYPE_UNKNOWN;
                }

                public static zzeli zzw() {
                    return zzepd.zzeu;
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

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zzf$zzb */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzf$zzb.class */
            public static final class C2614zzb extends zzelb.zzb<zzf, C2614zzb> implements zzemq {
                private C2614zzb() {
                    super(zzf.zzizp);
                }

                /* synthetic */ C2614zzb(zzeoz zzeozVar) {
                    this();
                }

                public final C2614zzb zzas(zzejr zzejrVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zzar(zzejrVar);
                    return this;
                }

                public final C2614zzb zzb(zza zzaVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).zza(zzaVar);
                    return this;
                }

                public final C2614zzb zzii(String str) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzf) this.zziqp).setMimeType(str);
                    return this;
                }
            }

            static {
                zzf zzfVar = new zzf();
                zzizp = zzfVar;
                zzelb.zza(zzf.class, zzfVar);
            }

            private zzf() {
            }

            public final void setMimeType(String str) {
                str.getClass();
                this.zzdv |= 2;
                this.zzizn = str;
            }

            public final void zza(zza zzaVar) {
                this.zzcan = zzaVar.zzv();
                this.zzdv |= 1;
            }

            public final void zzar(zzejr zzejrVar) {
                zzejrVar.getClass();
                this.zzdv |= 4;
                this.zzizo = zzejrVar;
            }

            public static C2614zzb zzbmb() {
                return zzizp.zzbii();
            }

            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzf();
                    case 2:
                        return new C2614zzb(null);
                    case 3:
                        return zza(zzizp, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဈ\u0001\u0003ည\u0002", new Object[]{"zzdv", "zzcan", zza.zzw(), "zzizn", "zzizo"});
                    case 4:
                        return zzizp;
                    case 5:
                        zzemx<zzf> zzemxVar = zzek;
                        zzemx<zzf> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zzf.class) {
                                try {
                                    zzemx<zzf> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzizp);
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

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzg.class */
        public enum zzg implements zzelg {
            UNKNOWN(0),
            URL_PHISHING(1),
            URL_MALWARE(2),
            URL_UNWANTED(3),
            CLIENT_SIDE_PHISHING_URL(4),
            CLIENT_SIDE_MALWARE_URL(5),
            DANGEROUS_DOWNLOAD_RECOVERY(6),
            DANGEROUS_DOWNLOAD_WARNING(7),
            OCTAGON_AD(8),
            OCTAGON_AD_SB_MATCH(9);
            
            private static final zzelf<zzg> zzes = new zzepf();
            private final int value;

            zzg(int i) {
                this.value = i;
            }

            public static zzg zzia(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN;
                    case 1:
                        return URL_PHISHING;
                    case 2:
                        return URL_MALWARE;
                    case 3:
                        return URL_UNWANTED;
                    case 4:
                        return CLIENT_SIDE_PHISHING_URL;
                    case 5:
                        return CLIENT_SIDE_MALWARE_URL;
                    case 6:
                        return DANGEROUS_DOWNLOAD_RECOVERY;
                    case 7:
                        return DANGEROUS_DOWNLOAD_WARNING;
                    case 8:
                        return OCTAGON_AD;
                    case 9:
                        return OCTAGON_AD_SB_MATCH;
                    default:
                        return null;
                }
            }

            public static zzeli zzw() {
                return zzepg.zzeu;
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

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzh.class */
        public static final class zzh extends zzelb<zzh, C2615zzb> implements zzemq {
            private static volatile zzemx<zzh> zzek;
            private static final zzh zzjam;
            private int zzdv;
            private int zzjae;
            private zzd zzjaf;
            private zze zzjag;
            private int zzjah;
            private int zzjak;
            private byte zzixq = (byte) 2;
            private String zzixt = "";
            private zzelh zzjai = zzbil();
            private String zzjaj = "";
            private zzell<String> zzjal = zzelb.zzbin();

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzh$zza.class */
            public enum zza implements zzelg {
                AD_RESOURCE_UNKNOWN(0),
                AD_RESOURCE_CREATIVE(1),
                AD_RESOURCE_POST_CLICK(2),
                AD_RESOURCE_AUTO_CLICK_DESTINATION(3);
                
                private static final zzelf<zza> zzes = new zzeph();
                private final int value;

                zza(int i) {
                    this.value = i;
                }

                public static zza zzib(int i) {
                    if (i != 0) {
                        if (i == 1) {
                            return AD_RESOURCE_CREATIVE;
                        }
                        if (i == 2) {
                            return AD_RESOURCE_POST_CLICK;
                        }
                        if (i == 3) {
                            return AD_RESOURCE_AUTO_CLICK_DESTINATION;
                        }
                        return null;
                    }
                    return AD_RESOURCE_UNKNOWN;
                }

                public static zzeli zzw() {
                    return zzepi.zzeu;
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

            /* renamed from: com.google.android.gms.internal.ads.zzepa$zzb$zzh$zzb */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzh$zzb.class */
            public static final class C2615zzb extends zzelb.zzb<zzh, C2615zzb> implements zzemq {
                private C2615zzb() {
                    super(zzh.zzjam);
                }

                /* synthetic */ C2615zzb(zzeoz zzeozVar) {
                    this();
                }

                public final C2615zzb zzb(zzd zzdVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzh) this.zziqp).zza(zzdVar);
                    return this;
                }

                public final C2615zzb zzb(zza zzaVar) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzh) this.zziqp).zza(zzaVar);
                    return this;
                }

                public final C2615zzb zzic(int i) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzh) this.zziqp).setId(i);
                    return this;
                }

                public final C2615zzb zzik(String str) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzh) this.zziqp).setUrl(str);
                    return this;
                }

                public final C2615zzb zzil(String str) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzh) this.zziqp).zzij(str);
                    return this;
                }
            }

            static {
                zzh zzhVar = new zzh();
                zzjam = zzhVar;
                zzelb.zza(zzh.class, zzhVar);
            }

            private zzh() {
            }

            public final void setId(int i) {
                this.zzdv |= 1;
                this.zzjae = i;
            }

            public final void setUrl(String str) {
                str.getClass();
                this.zzdv |= 2;
                this.zzixt = str;
            }

            public final void zza(zzd zzdVar) {
                zzdVar.getClass();
                this.zzjaf = zzdVar;
                this.zzdv |= 4;
            }

            public final void zza(zza zzaVar) {
                this.zzjak = zzaVar.zzv();
                this.zzdv |= 64;
            }

            public static C2615zzb zzbme() {
                return zzjam.zzbii();
            }

            public final void zzij(String str) {
                str.getClass();
                zzell<String> zzellVar = this.zzjal;
                if (!zzellVar.zzbge()) {
                    this.zzjal = zzelb.zza(zzellVar);
                }
                this.zzjal.add(str);
            }

            public final String getUrl() {
                return this.zzixt;
            }

            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzh();
                    case 2:
                        return new C2615zzb(null);
                    case 3:
                        return zza(zzjam, "\u0001\t��\u0001\u0001\t\t��\u0002\u0003\u0001ᔄ��\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\bဌ\u0006\t\u001a", new Object[]{"zzdv", "zzjae", "zzixt", "zzjaf", "zzjag", "zzjah", "zzjai", "zzjaj", "zzjak", zza.zzw(), "zzjal"});
                    case 4:
                        return zzjam;
                    case 5:
                        zzemx<zzh> zzemxVar = zzek;
                        zzemx<zzh> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zzh.class) {
                                try {
                                    zzemx<zzh> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzjam);
                                        zzek = zzemxVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzemxVar2;
                    case 6:
                        return Byte.valueOf(this.zzixq);
                    case 7:
                        int i2 = 1;
                        if (obj == null) {
                            i2 = 0;
                        }
                        this.zzixq = (byte) i2;
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }

            public final int zzbmd() {
                return this.zzjal.size();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzi.class */
        public static final class zzi extends zzelb<zzi, zza> implements zzemq {
            private static volatile zzemx<zzi> zzek;
            private static final zzi zzjav;
            private int zzdv;
            private String zzjas = "";
            private long zzjat;
            private boolean zzjau;

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzepa$zzb$zzi$zza.class */
            public static final class zza extends zzelb.zzb<zzi, zza> implements zzemq {
                private zza() {
                    super(zzi.zzjav);
                }

                /* synthetic */ zza(zzeoz zzeozVar) {
                    this();
                }

                public final zza zzbv(boolean z) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzi) this.zziqp).zzbw(z);
                    return this;
                }

                public final zza zzfs(long j) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzi) this.zziqp).zzft(j);
                    return this;
                }

                public final zza zzim(String str) {
                    if (this.zziqq) {
                        zzbis();
                        this.zziqq = false;
                    }
                    ((zzi) this.zziqp).zzin(str);
                    return this;
                }
            }

            static {
                zzi zziVar = new zzi();
                zzjav = zziVar;
                zzelb.zza(zzi.class, zziVar);
            }

            private zzi() {
            }

            public static zza zzbmg() {
                return zzjav.zzbii();
            }

            public final void zzbw(boolean z) {
                this.zzdv |= 4;
                this.zzjau = z;
            }

            public final void zzft(long j) {
                this.zzdv |= 2;
                this.zzjat = j;
            }

            public final void zzin(String str) {
                str.getClass();
                this.zzdv |= 1;
                this.zzjas = str;
            }

            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzeoz.zzel[i - 1]) {
                    case 1:
                        return new zzi();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zza(zzjav, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဈ��\u0002ဂ\u0001\u0003ဇ\u0002", new Object[]{"zzdv", "zzjas", "zzjat", "zzjau"});
                    case 4:
                        return zzjav;
                    case 5:
                        zzemx<zzi> zzemxVar = zzek;
                        zzemx<zzi> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (zzi.class) {
                                try {
                                    zzemx<zzi> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzjav);
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
            zziys = zzbVar;
            zzelb.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        public final void setUrl(String str) {
            str.getClass();
            this.zzdv |= 4;
            this.zzixt = str;
        }

        public final void zza(zza zzaVar) {
            zzaVar.getClass();
            this.zziyg = zzaVar;
            this.zzdv |= 32;
        }

        public final void zza(zzf zzfVar) {
            zzfVar.getClass();
            this.zziyj = zzfVar;
            this.zzdv |= 128;
        }

        public final void zza(zzg zzgVar) {
            this.zzcan = zzgVar.zzv();
            this.zzdv |= 1;
        }

        public final void zza(zzh zzhVar) {
            zzhVar.getClass();
            zzell<zzh> zzellVar = this.zziyh;
            if (!zzellVar.zzbge()) {
                this.zziyh = zzelb.zza(zzellVar);
            }
            this.zziyh.add(zzhVar);
        }

        public final void zza(zzi zziVar) {
            zziVar.getClass();
            this.zziyp = zziVar;
            this.zzdv |= 8192;
        }

        public final void zzblo() {
            this.zzdv &= -65;
            this.zziyi = zziys.zziyi;
        }

        public static C2609zzb zzblp() {
            return zziys.zzbii();
        }

        public final void zzdv(String str) {
            str.getClass();
            this.zzdv |= 64;
            this.zziyi = str;
        }

        public final void zzic(String str) {
            str.getClass();
            this.zzdv |= 8;
            this.zziye = str;
        }

        public final void zzm(Iterable<String> iterable) {
            zzell<String> zzellVar = this.zziyq;
            if (!zzellVar.zzbge()) {
                this.zziyq = zzelb.zza(zzellVar);
            }
            zzejh.zza(iterable, this.zziyq);
        }

        public final void zzn(Iterable<String> iterable) {
            zzell<String> zzellVar = this.zziyr;
            if (!zzellVar.zzbge()) {
                this.zziyr = zzelb.zza(zzellVar);
            }
            zzejh.zza(iterable, this.zziyr);
        }

        public final String getUrl() {
            return this.zzixt;
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzeoz.zzel[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new C2609zzb(null);
                case 3:
                    return zza(zziys, "\u0001\u0012��\u0001\u0001\u0015\u0012��\u0004\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\nဌ��\u000bဌ\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0011ဉ\r\u0014\u001a\u0015\u001a", new Object[]{"zzdv", "zzixt", "zziye", "zziyf", "zziyh", zzh.class, "zziyk", "zziyl", "zziym", "zziyn", "zziyo", "zzcan", zzg.zzw(), "zziyd", zza.zzc.zzw(), "zziyg", "zziyi", "zziyj", "zzixm", "zziyp", "zziyq", "zziyr"});
                case 4:
                    return zziys;
                case 5:
                    zzemx<zzb> zzemxVar = zzek;
                    zzemx<zzb> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzemx<zzb> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zziys);
                                    zzek = zzemxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzemxVar2;
                case 6:
                    return Byte.valueOf(this.zzixq);
                case 7:
                    int i2 = 1;
                    if (obj == null) {
                        i2 = 0;
                    }
                    this.zzixq = (byte) i2;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final List<zzh> zzblm() {
            return this.zziyh;
        }

        public final String zzbln() {
            return this.zziyi;
        }
    }
}
