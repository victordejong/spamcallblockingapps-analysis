package com.google.android.gms.internal.mlkit_translate;

import com.google.android.gms.internal.mlkit_translate.zzkc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno.class */
public final class zzno {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zza.class */
    public static final class zza extends zzkc<zza, zzb> implements zzlm {
        private static final zza zzf;
        private static volatile zzlu<zza> zzg;
        private int zzc;
        private int zzd;
        private zzj zze;

        /* renamed from: com.google.android.gms.internal.mlkit_translate.zzno$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zza$zza.class */
        public enum EnumC27658zza implements zzke {
            UNKNOWN_ENGINE(0),
            TFLITE(1);
            
            private static final zzkh<EnumC27658zza> zzc = new zzns();
            private final int zzd;

            EnumC27658zza(int i) {
                this.zzd = i;
            }

            public static zzkg zzb() {
                return zznr.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + EnumC27658zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzke
            public final int zza() {
                return this.zzd;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zza$zzb.class */
        public static final class zzb extends zzkc.zza<zza, zzb> implements zzlm {
            private zzb() {
                super(zza.zzf);
            }

            public /* synthetic */ zzb(zznq zznqVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzf = zzaVar;
            zzkc.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzkc.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzc", "zzd", EnumC27658zza.zzb(), "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzlu<zza> zzluVar = zzg;
                    zzlu<zza> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzlu<zza> zzluVar3 = zzg;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzf);
                                    zzg = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzb.class */
    public static final class zzb extends zzkc<zzb, zza> implements zzlm {
        private static final zzb zzn;
        private static volatile zzlu<zzb> zzo;
        private int zzc;
        private int zzd;
        private String zze = "";
        private String zzf = "";
        private String zzg = "";
        private String zzh = "";
        private String zzi = "";
        private String zzj = "";
        private String zzk = "";
        private String zzl = "";
        private String zzm = "";

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzb$zza.class */
        public static final class zza extends zzkc.zza<zzb, zza> implements zzlm {
            private zza() {
                super(zzb.zzn);
            }

            public /* synthetic */ zza(zznq zznqVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzn = zzbVar;
            zzkc.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzkc.zza(zzn, "\u0001\n��\u0001\u0001\n\n������\u0001င��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဈ\u0007\tဈ\b\nဈ\t", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
                case 4:
                    return zzn;
                case 5:
                    zzlu<zzb> zzluVar = zzo;
                    zzlu<zzb> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzlu<zzb> zzluVar3 = zzo;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzn);
                                    zzo = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzc.class */
    public static final class zzc extends zzkc<zzc, C27659zzc> implements zzlm {
        private static final zzc zzm;
        private static volatile zzlu<zzc> zzn;
        private int zzc;
        private int zzd;
        private int zze;
        private zza zzh;
        private zzd zzi;
        private int zzj;
        private int zzl;
        private String zzf = "";
        private String zzg = "";
        private zzkl<zzg> zzk = zzkc.zzl();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzc$zza.class */
        public enum zza implements zzke {
            UNKNOWN_ACTION(0),
            INITIALIZATION(1),
            COMPILATION(2),
            EXECUTION(3),
            TEARDOWN(4),
            VALIDATION(5);
            
            private static final zzkh<zza> zzg = new zznu();
            private final int zzh;

            zza(int i) {
                this.zzh = i;
            }

            public static zzkg zzb() {
                return zznt.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzke
            public final int zza() {
                return this.zzh;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzc$zzb.class */
        public static final class zzb extends zzkc<zzb, zza> implements zzlm {
            private static final zzb zzf;
            private static volatile zzlu<zzb> zzg;
            private int zzc;
            private int zzd;
            private int zze;

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzc$zzb$zza.class */
            public static final class zza extends zzkc.zza<zzb, zza> implements zzlm {
                private zza() {
                    super(zzb.zzf);
                }

                public /* synthetic */ zza(zznq zznqVar) {
                    this();
                }
            }

            static {
                zzb zzbVar = new zzb();
                zzf = zzbVar;
                zzkc.zza(zzb.class, zzbVar);
            }

            private zzb() {
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzkc
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zznq.zza[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzkc.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
                    case 4:
                        return zzf;
                    case 5:
                        zzlu<zzb> zzluVar = zzg;
                        zzlu<zzb> zzluVar2 = zzluVar;
                        if (zzluVar == null) {
                            synchronized (zzb.class) {
                                try {
                                    zzlu<zzb> zzluVar3 = zzg;
                                    zzluVar2 = zzluVar3;
                                    if (zzluVar3 == null) {
                                        zzluVar2 = new zzkc.zzc<>(zzf);
                                        zzg = zzluVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzluVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* renamed from: com.google.android.gms.internal.mlkit_translate.zzno$zzc$zzc */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzc$zzc.class */
        public static final class C27659zzc extends zzkc.zza<zzc, C27659zzc> implements zzlm {
            private C27659zzc() {
                super(zzc.zzm);
            }

            public /* synthetic */ C27659zzc(zznq zznqVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzc$zzd.class */
        public static final class zzd extends zzkc<zzd, zza> implements zzlm {
            private static final zzd zzg;
            private static volatile zzlu<zzd> zzh;
            private int zzc;
            private zzb zzd;
            private zzb zze;
            private boolean zzf;

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzc$zzd$zza.class */
            public static final class zza extends zzkc.zza<zzd, zza> implements zzlm {
                private zza() {
                    super(zzd.zzg);
                }

                public /* synthetic */ zza(zznq zznqVar) {
                    this();
                }
            }

            static {
                zzd zzdVar = new zzd();
                zzg = zzdVar;
                zzkc.zza(zzd.class, zzdVar);
            }

            private zzd() {
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzkc
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zznq.zza[i - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzkc.zza(zzg, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ဉ\u0001\u0003ဇ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
                    case 4:
                        return zzg;
                    case 5:
                        zzlu<zzd> zzluVar = zzh;
                        zzlu<zzd> zzluVar2 = zzluVar;
                        if (zzluVar == null) {
                            synchronized (zzd.class) {
                                try {
                                    zzlu<zzd> zzluVar3 = zzh;
                                    zzluVar2 = zzluVar3;
                                    if (zzluVar3 == null) {
                                        zzluVar2 = new zzkc.zzc<>(zzg);
                                        zzh = zzluVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzluVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzc$zze.class */
        public enum zze implements zzke {
            UNKNOWN_STATUS(0),
            COMPLETED_EVENT(1),
            MISSING_END_EVENT(2),
            HANG(3),
            ABANDONED_FROM_HANG(4),
            FORCED_CRASH_FROM_HANG(5);
            
            private static final zzkh<zze> zzg = new zznw();
            private final int zzh;

            zze(int i) {
                this.zzh = i;
            }

            public static zzkg zzb() {
                return zznv.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zze.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzke
            public final int zza() {
                return this.zzh;
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzm = zzcVar;
            zzkc.zza(zzc.class, zzcVar);
        }

        private zzc() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new C27659zzc(null);
                case 3:
                    return zzkc.zza(zzm, "\u0001\t��\u0001\u0001\t\t��\u0001��\u0001ဌ��\u0002ဌ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007င\u0006\b\u001b\tင\u0007", new Object[]{"zzc", "zzd", zza.zzb(), "zze", zze.zzb(), "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzg.class, "zzl"});
                case 4:
                    return zzm;
                case 5:
                    zzlu<zzc> zzluVar = zzn;
                    zzlu<zzc> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzlu<zzc> zzluVar3 = zzn;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzm);
                                    zzn = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzd.class */
    public static final class zzd extends zzkc<zzd, zza> implements zzlm {
        private static final zzd zzk;
        private static volatile zzlu<zzd> zzl;
        private int zzc;
        private int zzg;
        private int zzh;
        private int zzj;
        private String zzd = "";
        private String zze = "";
        private String zzf = "";
        private String zzi = "";

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzd$zza.class */
        public static final class zza extends zzkc.zza<zzd, zza> implements zzlm {
            private zza() {
                super(zzd.zzk);
            }

            public /* synthetic */ zza(zznq zznqVar) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzk = zzdVar;
            zzkc.zza(zzd.class, zzdVar);
        }

        private zzd() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(null);
                case 3:
                    return zzkc.zza(zzk, "\u0001\u0007��\u0001\u0001\u0007\u0007������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003\u0005င\u0004\u0006ဈ\u0005\u0007င\u0006", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
                case 4:
                    return zzk;
                case 5:
                    zzlu<zzd> zzluVar = zzl;
                    zzlu<zzd> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zzd.class) {
                            try {
                                zzlu<zzd> zzluVar3 = zzl;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzk);
                                    zzl = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zze.class */
    public static final class zze extends zzkc<zze, zza> implements zzlm {
        private static final zze zze;
        private static volatile zzlu<zze> zzf;
        private int zzc;
        private int zzd;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zze$zza.class */
        public static final class zza extends zzkc.zza<zze, zza> implements zzlm {
            private zza() {
                super(zze.zze);
            }

            public /* synthetic */ zza(zznq zznqVar) {
                this();
            }
        }

        static {
            zze zzeVar = new zze();
            zze = zzeVar;
            zzkc.zza(zze.class, zzeVar);
        }

        private zze() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zzkc.zza(zze, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001င��", new Object[]{"zzc", "zzd"});
                case 4:
                    return zze;
                case 5:
                    zzlu<zze> zzluVar = zzf;
                    zzlu<zze> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zze.class) {
                            try {
                                zzlu<zze> zzluVar3 = zzf;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zze);
                                    zzf = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzf.class */
    public static final class zzf extends zzkc<zzf, zza> implements zzlm {
        private static final zzf zzo;
        private static volatile zzlu<zzf> zzp;
        private int zzc;
        private zzb zzd;
        private zzi zze;
        private zzd zzf;
        private int zzg;
        private zzc zzh;
        private zzl zzi;
        private long zzj;
        private long zzk;
        private boolean zzl;
        private int zzm;
        private byte zzn = (byte) 2;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzf$zza.class */
        public static final class zza extends zzkc.zza<zzf, zza> implements zzlm {
            private zza() {
                super(zzf.zzo);
            }

            public /* synthetic */ zza(zznq zznqVar) {
                this();
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzo = zzfVar;
            zzkc.zza(zzf.class, zzfVar);
        }

        private zzf() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zzkc.zza(zzo, "\u0001\n��\u0001\u0001\n\n����\u0001\u0001ဉ��\u0002ဉ\u0001\u0003ဌ\u0003\u0004ဉ\u0004\u0005ᐉ\u0005\u0006ဂ\u0006\u0007ဂ\u0007\bဇ\b\tင\t\nဉ\u0002", new Object[]{"zzc", "zzd", "zze", "zzg", zzny.zzb(), "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzf"});
                case 4:
                    return zzo;
                case 5:
                    zzlu<zzf> zzluVar = zzp;
                    zzlu<zzf> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zzf.class) {
                            try {
                                zzlu<zzf> zzluVar3 = zzp;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzo);
                                    zzp = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return Byte.valueOf(this.zzn);
                case 7:
                    int i2 = 1;
                    if (obj == null) {
                        i2 = 0;
                    }
                    this.zzn = (byte) i2;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzg.class */
    public static final class zzg extends zzkc<zzg, zza> implements zzlm {
        private static final zzg zzd;
        private static volatile zzlu<zzg> zze;
        private zzkj zzc = zzkc.zzk();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzg$zza.class */
        public static final class zza extends zzkc.zza<zzg, zza> implements zzlm {
            private zza() {
                super(zzg.zzd);
            }

            public /* synthetic */ zza(zznq zznqVar) {
                this();
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzd = zzgVar;
            zzkc.zza(zzg.class, zzgVar);
        }

        private zzg() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(null);
                case 3:
                    return zzkc.zza(zzd, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u0016", new Object[]{"zzc"});
                case 4:
                    return zzd;
                case 5:
                    zzlu<zzg> zzluVar = zze;
                    zzlu<zzg> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zzg.class) {
                            try {
                                zzlu<zzg> zzluVar3 = zze;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzd);
                                    zze = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzh.class */
    public static final class zzh extends zzkc<zzh, zza> implements zzlm {
        private static final zzh zzf;
        private static volatile zzlu<zzh> zzg;
        private int zzc;
        private String zzd = "";
        private int zze;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzh$zza.class */
        public static final class zza extends zzkc.zza<zzh, zza> implements zzlm {
            private zza() {
                super(zzh.zzf);
            }

            public /* synthetic */ zza(zznq zznqVar) {
                this();
            }
        }

        static {
            zzh zzhVar = new zzh();
            zzf = zzhVar;
            zzkc.zza(zzh.class, zzhVar);
        }

        private zzh() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zza(null);
                case 3:
                    return zzkc.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzlu<zzh> zzluVar = zzg;
                    zzlu<zzh> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zzh.class) {
                            try {
                                zzlu<zzh> zzluVar3 = zzg;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzf);
                                    zzg = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzi.class */
    public static final class zzi extends zzkc<zzi, zzb> implements zzlm {
        private static final zzi zzd;
        private static volatile zzlu<zzi> zze;
        private zzkl<zza> zzc = zzkc.zzl();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzi$zza.class */
        public static final class zza extends zzkc<zza, C27660zza> implements zzlm {
            private static final zza zzh;
            private static volatile zzlu<zza> zzi;
            private int zzc;
            private int zze;
            private long zzg;
            private String zzd = "";
            private String zzf = "";

            /* renamed from: com.google.android.gms.internal.mlkit_translate.zzno$zzi$zza$zza */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzi$zza$zza.class */
            public static final class C27660zza extends zzkc.zza<zza, C27660zza> implements zzlm {
                private C27660zza() {
                    super(zza.zzh);
                }

                public /* synthetic */ C27660zza(zznq zznqVar) {
                    this();
                }
            }

            static {
                zza zzaVar = new zza();
                zzh = zzaVar;
                zzkc.zza(zza.class, zzaVar);
            }

            private zza() {
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzkc
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zznq.zza[i - 1]) {
                    case 1:
                        return new zza();
                    case 2:
                        return new C27660zza(null);
                    case 3:
                        return zzkc.zza(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002င\u0001\u0003ဈ\u0002\u0004ဂ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                    case 4:
                        return zzh;
                    case 5:
                        zzlu<zza> zzluVar = zzi;
                        zzlu<zza> zzluVar2 = zzluVar;
                        if (zzluVar == null) {
                            synchronized (zza.class) {
                                try {
                                    zzlu<zza> zzluVar3 = zzi;
                                    zzluVar2 = zzluVar3;
                                    if (zzluVar3 == null) {
                                        zzluVar2 = new zzkc.zzc<>(zzh);
                                        zzi = zzluVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzluVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzi$zzb.class */
        public static final class zzb extends zzkc.zza<zzi, zzb> implements zzlm {
            private zzb() {
                super(zzi.zzd);
            }

            public /* synthetic */ zzb(zznq zznqVar) {
                this();
            }
        }

        static {
            zzi zziVar = new zzi();
            zzd = zziVar;
            zzkc.zza(zzi.class, zziVar);
        }

        private zzi() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzkc.zza(zzd, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzc", zza.class});
                case 4:
                    return zzd;
                case 5:
                    zzlu<zzi> zzluVar = zze;
                    zzlu<zzi> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zzi.class) {
                            try {
                                zzlu<zzi> zzluVar3 = zze;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzd);
                                    zze = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzj.class */
    public static final class zzj extends zzkc<zzj, zzb> implements zzlm {
        private static final zzj zzg;
        private static volatile zzlu<zzj> zzh;
        private int zzc;
        private int zzd;
        private zzh zze;
        private zze zzf;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzj$zza.class */
        public enum zza implements zzke {
            DELEGATE_NONE(0),
            NNAPI(1),
            GPU(2),
            HEXAGON(3),
            EDGETPU(4);
            
            private static final zzkh<zza> zzf = new zzob();
            private final int zzg;

            zza(int i) {
                this.zzg = i;
            }

            public static zzkg zzb() {
                return zzoa.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzke
            public final int zza() {
                return this.zzg;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzj$zzb.class */
        public static final class zzb extends zzkc.zza<zzj, zzb> implements zzlm {
            private zzb() {
                super(zzj.zzg);
            }

            public /* synthetic */ zzb(zznq zznqVar) {
                this();
            }
        }

        static {
            zzj zzjVar = new zzj();
            zzg = zzjVar;
            zzkc.zza(zzj.class, zzjVar);
        }

        private zzj() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzkc.zza(zzg, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", zza.zzb(), "zze", "zzf"});
                case 4:
                    return zzg;
                case 5:
                    zzlu<zzj> zzluVar = zzh;
                    zzlu<zzj> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zzj.class) {
                            try {
                                zzlu<zzj> zzluVar3 = zzh;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzg);
                                    zzh = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzk.class */
    public static final class zzk extends zzkc<zzk, zza> implements zzlm {
        private static final zzk zzf;
        private static volatile zzlu<zzk> zzg;
        private int zzc;
        private int zzd;
        private float zze;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzk$zza.class */
        public static final class zza extends zzkc.zza<zzk, zza> implements zzlm {
            private zza() {
                super(zzk.zzf);
            }

            public /* synthetic */ zza(zznq zznqVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzk$zzb.class */
        public enum zzb implements zzke {
            UNKNOWN_METRIC(0),
            MEAN_ABSOLUTE_ERROR(1),
            MEAN_SQUARED_ERROR(2),
            ROOT_MEAN_SQUARED_ERROR(3);
            
            private static final zzkh<zzb> zze = new zzoc();
            private final int zzf;

            zzb(int i) {
                this.zzf = i;
            }

            public static zzkg zzb() {
                return zzod.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzke
            public final int zza() {
                return this.zzf;
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzf = zzkVar;
            zzkc.zza(zzk.class, zzkVar);
        }

        private zzk() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zza(null);
                case 3:
                    return zzkc.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ခ\u0001", new Object[]{"zzc", "zzd", zzb.zzb(), "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzlu<zzk> zzluVar = zzg;
                    zzlu<zzk> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zzk.class) {
                            try {
                                zzlu<zzk> zzluVar3 = zzg;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzf);
                                    zzg = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzl.class */
    public static final class zzl extends zzkc.zze<zzl, zzb> implements zzlm {
        private static final zzl zzf;
        private static volatile zzlu<zzl> zzg;
        private byte zze = (byte) 2;
        private zzkl<zza> zzd = zzkc.zzl();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzl$zza.class */
        public static final class zza extends zzkc<zza, C27661zza> implements zzlm {
            private static final zza zzg;
            private static volatile zzlu<zza> zzh;
            private int zzc;
            private int zzd;
            private int zze;
            private zzkl<zzk> zzf = zzkc.zzl();

            /* renamed from: com.google.android.gms.internal.mlkit_translate.zzno$zzl$zza$zza */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzl$zza$zza.class */
            public static final class C27661zza extends zzkc.zza<zza, C27661zza> implements zzlm {
                private C27661zza() {
                    super(zza.zzg);
                }

                public /* synthetic */ C27661zza(zznq zznqVar) {
                    this();
                }
            }

            static {
                zza zzaVar = new zza();
                zzg = zzaVar;
                zzkc.zza(zza.class, zzaVar);
            }

            private zza() {
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzkc
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zznq.zza[i - 1]) {
                    case 1:
                        return new zza();
                    case 2:
                        return new C27661zza(null);
                    case 3:
                        return zzkc.zza(zzg, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0001��\u0001င��\u0002င\u0001\u0003\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", zzk.class});
                    case 4:
                        return zzg;
                    case 5:
                        zzlu<zza> zzluVar = zzh;
                        zzlu<zza> zzluVar2 = zzluVar;
                        if (zzluVar == null) {
                            synchronized (zza.class) {
                                try {
                                    zzlu<zza> zzluVar3 = zzh;
                                    zzluVar2 = zzluVar3;
                                    if (zzluVar3 == null) {
                                        zzluVar2 = new zzkc.zzc<>(zzg);
                                        zzh = zzluVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzluVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzno$zzl$zzb.class */
        public static final class zzb extends zzkc.zzb<zzl, zzb> implements zzlm {
            private zzb() {
                super(zzl.zzf);
            }

            public /* synthetic */ zzb(zznq zznqVar) {
                this();
            }
        }

        static {
            zzl zzlVar = new zzl();
            zzf = zzlVar;
            zzkc.zza(zzl.class, zzlVar);
        }

        private zzl() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zznq.zza[i - 1]) {
                case 1:
                    return new zzl();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzkc.zza(zzf, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzd", zza.class});
                case 4:
                    return zzf;
                case 5:
                    zzlu<zzl> zzluVar = zzg;
                    zzlu<zzl> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zzl.class) {
                            try {
                                zzlu<zzl> zzluVar3 = zzg;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzf);
                                    zzg = zzluVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzluVar2;
                case 6:
                    return Byte.valueOf(this.zze);
                case 7:
                    int i2 = 1;
                    if (obj == null) {
                        i2 = 0;
                    }
                    this.zze = (byte) i2;
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
