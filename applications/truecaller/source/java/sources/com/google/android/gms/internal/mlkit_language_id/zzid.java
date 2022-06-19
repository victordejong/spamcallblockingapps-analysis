package com.google.android.gms.internal.mlkit_language_id;

import com.google.android.gms.internal.mlkit_language_id.zzeo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid.class */
public final class zzid {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zza.class */
    public static final class zza extends zzeo<zza, C27645zza> implements zzgb {
        private static final zza zzf;
        private static volatile zzgj<zza> zzg;
        private int zzc;
        private int zzd;
        private zzj zze;

        /* renamed from: com.google.android.gms.internal.mlkit_language_id.zzid$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zza$zza.class */
        public static final class C27645zza extends zzeo.zzb<zza, C27645zza> implements zzgb {
            private C27645zza() {
                super(zza.zzf);
            }

            public /* synthetic */ C27645zza(zzic zzicVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zza$zzb.class */
        public enum zzb implements zzet {
            UNKNOWN_ENGINE(0),
            TFLITE(1);
            
            private static final zzes<zzb> zzc = new zzie();
            private final int zzd;

            zzb(int i) {
                this.zzd = i;
            }

            public static zzev zzb() {
                return zzif.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_language_id.zzet
            public final int zza() {
                return this.zzd;
            }
        }

        static {
            zza zzaVar = new zza();
            zzf = zzaVar;
            zzeo.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zza>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zza> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C27645zza(null);
                case 3:
                    return zzeo.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzc", "zzd", zzb.zzb(), "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgj<zza> zzgjVar2 = zzg;
                    zzgj<zza> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zza.class) {
                            try {
                                zzgj<zza> zzgjVar4 = zzg;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzf);
                                    zzg = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzb.class */
    public static final class zzb extends zzeo<zzb, zza> implements zzgb {
        private static final zzb zzn;
        private static volatile zzgj<zzb> zzo;
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

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzb$zza.class */
        public static final class zza extends zzeo.zzb<zzb, zza> implements zzgb {
            private zza() {
                super(zzb.zzn);
            }

            public /* synthetic */ zza(zzic zzicVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzn = zzbVar;
            zzeo.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzb>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zzb> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzeo.zza(zzn, "\u0001\n��\u0001\u0001\n\n������\u0001င��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဈ\u0007\tဈ\b\nဈ\t", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
                case 4:
                    return zzn;
                case 5:
                    zzgj<zzb> zzgjVar2 = zzo;
                    zzgj<zzb> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zzb.class) {
                            try {
                                zzgj<zzb> zzgjVar4 = zzo;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzn);
                                    zzo = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzc.class */
    public static final class zzc extends zzeo<zzc, zzb> implements zzgb {
        private static final zzc zzm;
        private static volatile zzgj<zzc> zzn;
        private int zzc;
        private int zzd;
        private int zze;
        private zza zzh;
        private zzd zzi;
        private int zzj;
        private int zzl;
        private String zzf = "";
        private String zzg = "";
        private zzew<zzg> zzk = zzeo.zzl();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzc$zza.class */
        public enum zza implements zzet {
            UNKNOWN_ACTION(0),
            INITIALIZATION(1),
            COMPILATION(2),
            EXECUTION(3),
            TEARDOWN(4),
            VALIDATION(5);
            
            private static final zzes<zza> zzg = new zzig();
            private final int zzh;

            zza(int i) {
                this.zzh = i;
            }

            public static zzev zzb() {
                return zzih.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_language_id.zzet
            public final int zza() {
                return this.zzh;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzc$zzb.class */
        public static final class zzb extends zzeo.zzb<zzc, zzb> implements zzgb {
            private zzb() {
                super(zzc.zzm);
            }

            public /* synthetic */ zzb(zzic zzicVar) {
                this();
            }
        }

        /* renamed from: com.google.android.gms.internal.mlkit_language_id.zzid$zzc$zzc */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzc$zzc.class */
        public static final class C27646zzc extends zzeo<C27646zzc, zza> implements zzgb {
            private static final C27646zzc zzf;
            private static volatile zzgj<C27646zzc> zzg;
            private int zzc;
            private int zzd;
            private int zze;

            /* renamed from: com.google.android.gms.internal.mlkit_language_id.zzid$zzc$zzc$zza */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzc$zzc$zza.class */
            public static final class zza extends zzeo.zzb<C27646zzc, zza> implements zzgb {
                private zza() {
                    super(C27646zzc.zzf);
                }

                public /* synthetic */ zza(zzic zzicVar) {
                    this();
                }
            }

            static {
                C27646zzc c27646zzc = new C27646zzc();
                zzf = c27646zzc;
                zzeo.zza(C27646zzc.class, c27646zzc);
            }

            private C27646zzc() {
            }

            /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzc$zzc>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
            @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
            public final Object zza(int i, Object obj, Object obj2) {
                zzgj<C27646zzc> zzgjVar;
                switch (zzic.zza[i - 1]) {
                    case 1:
                        return new C27646zzc();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzeo.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
                    case 4:
                        return zzf;
                    case 5:
                        zzgj<C27646zzc> zzgjVar2 = zzg;
                        zzgj<C27646zzc> zzgjVar3 = zzgjVar2;
                        if (zzgjVar2 == null) {
                            synchronized (C27646zzc.class) {
                                try {
                                    zzgj<C27646zzc> zzgjVar4 = zzg;
                                    zzgjVar = zzgjVar4;
                                    if (zzgjVar4 == null) {
                                        ?? zzaVar = new zzeo.zza(zzf);
                                        zzg = zzaVar;
                                        zzgjVar = zzaVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            zzgjVar3 = zzgjVar;
                        }
                        return zzgjVar3 == 1 ? 1 : 0;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzc$zzd.class */
        public static final class zzd extends zzeo<zzd, zza> implements zzgb {
            private static final zzd zzg;
            private static volatile zzgj<zzd> zzh;
            private int zzc;
            private C27646zzc zzd;
            private C27646zzc zze;
            private boolean zzf;

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzc$zzd$zza.class */
            public static final class zza extends zzeo.zzb<zzd, zza> implements zzgb {
                private zza() {
                    super(zzd.zzg);
                }

                public /* synthetic */ zza(zzic zzicVar) {
                    this();
                }
            }

            static {
                zzd zzdVar = new zzd();
                zzg = zzdVar;
                zzeo.zza(zzd.class, zzdVar);
            }

            private zzd() {
            }

            /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzc$zzd>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
            @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
            public final Object zza(int i, Object obj, Object obj2) {
                zzgj<zzd> zzgjVar;
                switch (zzic.zza[i - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzeo.zza(zzg, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ဉ\u0001\u0003ဇ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
                    case 4:
                        return zzg;
                    case 5:
                        zzgj<zzd> zzgjVar2 = zzh;
                        zzgj<zzd> zzgjVar3 = zzgjVar2;
                        if (zzgjVar2 == null) {
                            synchronized (zzd.class) {
                                try {
                                    zzgj<zzd> zzgjVar4 = zzh;
                                    zzgjVar = zzgjVar4;
                                    if (zzgjVar4 == null) {
                                        ?? zzaVar = new zzeo.zza(zzg);
                                        zzh = zzaVar;
                                        zzgjVar = zzaVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            zzgjVar3 = zzgjVar;
                        }
                        return zzgjVar3 == 1 ? 1 : 0;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzc$zze.class */
        public enum zze implements zzet {
            UNKNOWN_STATUS(0),
            COMPLETED_EVENT(1),
            MISSING_END_EVENT(2),
            HANG(3),
            ABANDONED_FROM_HANG(4),
            FORCED_CRASH_FROM_HANG(5);
            
            private static final zzes<zze> zzg = new zzii();
            private final int zzh;

            zze(int i) {
                this.zzh = i;
            }

            public static zzev zzb() {
                return zzik.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zze.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_language_id.zzet
            public final int zza() {
                return this.zzh;
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzm = zzcVar;
            zzeo.zza(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzc>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zzc> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzeo.zza(zzm, "\u0001\t��\u0001\u0001\t\t��\u0001��\u0001ဌ��\u0002ဌ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007င\u0006\b\u001b\tင\u0007", new Object[]{"zzc", "zzd", zza.zzb(), "zze", zze.zzb(), "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzg.class, "zzl"});
                case 4:
                    return zzm;
                case 5:
                    zzgj<zzc> zzgjVar2 = zzn;
                    zzgj<zzc> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zzc.class) {
                            try {
                                zzgj<zzc> zzgjVar4 = zzn;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzm);
                                    zzn = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzd.class */
    public static final class zzd extends zzeo<zzd, zza> implements zzgb {
        private static final zzd zzk;
        private static volatile zzgj<zzd> zzl;
        private int zzc;
        private int zzg;
        private int zzh;
        private int zzj;
        private String zzd = "";
        private String zze = "";
        private String zzf = "";
        private String zzi = "";

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzd$zza.class */
        public static final class zza extends zzeo.zzb<zzd, zza> implements zzgb {
            private zza() {
                super(zzd.zzk);
            }

            public /* synthetic */ zza(zzic zzicVar) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzk = zzdVar;
            zzeo.zza(zzd.class, zzdVar);
        }

        private zzd() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzd>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zzd> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(null);
                case 3:
                    return zzeo.zza(zzk, "\u0001\u0007��\u0001\u0001\u0007\u0007������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003\u0005င\u0004\u0006ဈ\u0005\u0007င\u0006", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
                case 4:
                    return zzk;
                case 5:
                    zzgj<zzd> zzgjVar2 = zzl;
                    zzgj<zzd> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zzd.class) {
                            try {
                                zzgj<zzd> zzgjVar4 = zzl;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzk);
                                    zzl = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zze.class */
    public static final class zze extends zzeo<zze, zza> implements zzgb {
        private static final zze zze;
        private static volatile zzgj<zze> zzf;
        private int zzc;
        private int zzd;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zze$zza.class */
        public static final class zza extends zzeo.zzb<zze, zza> implements zzgb {
            private zza() {
                super(zze.zze);
            }

            public /* synthetic */ zza(zzic zzicVar) {
                this();
            }
        }

        static {
            zze zzeVar = new zze();
            zze = zzeVar;
            zzeo.zza(zze.class, zzeVar);
        }

        private zze() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zze>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zze> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zzeo.zza(zze, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001င��", new Object[]{"zzc", "zzd"});
                case 4:
                    return zze;
                case 5:
                    zzgj<zze> zzgjVar2 = zzf;
                    zzgj<zze> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zze.class) {
                            try {
                                zzgj<zze> zzgjVar4 = zzf;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zze);
                                    zzf = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzf.class */
    public static final class zzf extends zzeo<zzf, zza> implements zzgb {
        private static final zzf zzo;
        private static volatile zzgj<zzf> zzp;
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

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzf$zza.class */
        public static final class zza extends zzeo.zzb<zzf, zza> implements zzgb {
            private zza() {
                super(zzf.zzo);
            }

            public /* synthetic */ zza(zzic zzicVar) {
                this();
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzo = zzfVar;
            zzeo.zza(zzf.class, zzfVar);
        }

        private zzf() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzf>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zzf> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zzeo.zza(zzo, "\u0001\n��\u0001\u0001\n\n����\u0001\u0001ဉ��\u0002ဉ\u0001\u0003ဌ\u0003\u0004ဉ\u0004\u0005ᐉ\u0005\u0006ဂ\u0006\u0007ဂ\u0007\bဇ\b\tင\t\nဉ\u0002", new Object[]{"zzc", "zzd", "zze", "zzg", zzij.zzb(), "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzf"});
                case 4:
                    return zzo;
                case 5:
                    zzgj<zzf> zzgjVar2 = zzp;
                    zzgj<zzf> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zzf.class) {
                            try {
                                zzgj<zzf> zzgjVar4 = zzp;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzo);
                                    zzp = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
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

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzg.class */
    public static final class zzg extends zzeo<zzg, zza> implements zzgb {
        private static final zzg zzd;
        private static volatile zzgj<zzg> zze;
        private zzeu zzc = zzeo.zzk();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzg$zza.class */
        public static final class zza extends zzeo.zzb<zzg, zza> implements zzgb {
            private zza() {
                super(zzg.zzd);
            }

            public /* synthetic */ zza(zzic zzicVar) {
                this();
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzd = zzgVar;
            zzeo.zza(zzg.class, zzgVar);
        }

        private zzg() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_language_id.zzeo$zza, com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzg>] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zzg> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(null);
                case 3:
                    return zzeo.zza(zzd, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u0016", new Object[]{"zzc"});
                case 4:
                    return zzd;
                case 5:
                    zzgj<zzg> zzgjVar2 = zze;
                    zzgj<zzg> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zzg.class) {
                            try {
                                zzgj<zzg> zzgjVar4 = zze;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzd);
                                    zze = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzh.class */
    public static final class zzh extends zzeo<zzh, zza> implements zzgb {
        private static final zzh zzf;
        private static volatile zzgj<zzh> zzg;
        private int zzc;
        private String zzd = "";
        private int zze;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzh$zza.class */
        public static final class zza extends zzeo.zzb<zzh, zza> implements zzgb {
            private zza() {
                super(zzh.zzf);
            }

            public /* synthetic */ zza(zzic zzicVar) {
                this();
            }
        }

        static {
            zzh zzhVar = new zzh();
            zzf = zzhVar;
            zzeo.zza(zzh.class, zzhVar);
        }

        private zzh() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzh>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zzh> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zza(null);
                case 3:
                    return zzeo.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgj<zzh> zzgjVar2 = zzg;
                    zzgj<zzh> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zzh.class) {
                            try {
                                zzgj<zzh> zzgjVar4 = zzg;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzf);
                                    zzg = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzi.class */
    public static final class zzi extends zzeo<zzi, zza> implements zzgb {
        private static final zzi zzd;
        private static volatile zzgj<zzi> zze;
        private zzew<zzb> zzc = zzeo.zzl();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzi$zza.class */
        public static final class zza extends zzeo.zzb<zzi, zza> implements zzgb {
            private zza() {
                super(zzi.zzd);
            }

            public /* synthetic */ zza(zzic zzicVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzi$zzb.class */
        public static final class zzb extends zzeo<zzb, zza> implements zzgb {
            private static final zzb zzh;
            private static volatile zzgj<zzb> zzi;
            private int zzc;
            private int zze;
            private long zzg;
            private String zzd = "";
            private String zzf = "";

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzi$zzb$zza.class */
            public static final class zza extends zzeo.zzb<zzb, zza> implements zzgb {
                private zza() {
                    super(zzb.zzh);
                }

                public /* synthetic */ zza(zzic zzicVar) {
                    this();
                }
            }

            static {
                zzb zzbVar = new zzb();
                zzh = zzbVar;
                zzeo.zza(zzb.class, zzbVar);
            }

            private zzb() {
            }

            /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzi$zzb>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
            @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
            public final Object zza(int i, Object obj, Object obj2) {
                zzgj<zzb> zzgjVar;
                switch (zzic.zza[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzeo.zza(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002င\u0001\u0003ဈ\u0002\u0004ဂ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                    case 4:
                        return zzh;
                    case 5:
                        zzgj<zzb> zzgjVar2 = zzi;
                        zzgj<zzb> zzgjVar3 = zzgjVar2;
                        if (zzgjVar2 == null) {
                            synchronized (zzb.class) {
                                try {
                                    zzgj<zzb> zzgjVar4 = zzi;
                                    zzgjVar = zzgjVar4;
                                    if (zzgjVar4 == null) {
                                        ?? zzaVar = new zzeo.zza(zzh);
                                        zzi = zzaVar;
                                        zzgjVar = zzaVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            zzgjVar3 = zzgjVar;
                        }
                        return zzgjVar3 == 1 ? 1 : 0;
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
            zzi zziVar = new zzi();
            zzd = zziVar;
            zzeo.zza(zzi.class, zziVar);
        }

        private zzi() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzi>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zzi> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza(null);
                case 3:
                    return zzeo.zza(zzd, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzc", zzb.class});
                case 4:
                    return zzd;
                case 5:
                    zzgj<zzi> zzgjVar2 = zze;
                    zzgj<zzi> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zzi.class) {
                            try {
                                zzgj<zzi> zzgjVar4 = zze;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzd);
                                    zze = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzj.class */
    public static final class zzj extends zzeo<zzj, zza> implements zzgb {
        private static final zzj zzg;
        private static volatile zzgj<zzj> zzh;
        private int zzc;
        private int zzd;
        private zzh zze;
        private zze zzf;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzj$zza.class */
        public static final class zza extends zzeo.zzb<zzj, zza> implements zzgb {
            private zza() {
                super(zzj.zzg);
            }

            public /* synthetic */ zza(zzic zzicVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzj$zzb.class */
        public enum zzb implements zzet {
            DELEGATE_NONE(0),
            NNAPI(1),
            GPU(2),
            HEXAGON(3),
            EDGETPU(4);
            
            private static final zzes<zzb> zzf = new zzin();
            private final int zzg;

            zzb(int i) {
                this.zzg = i;
            }

            public static zzev zzb() {
                return zzio.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_language_id.zzet
            public final int zza() {
                return this.zzg;
            }
        }

        static {
            zzj zzjVar = new zzj();
            zzg = zzjVar;
            zzeo.zza(zzj.class, zzjVar);
        }

        private zzj() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzj>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zzj> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zza(null);
                case 3:
                    return zzeo.zza(zzg, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", zzb.zzb(), "zze", "zzf"});
                case 4:
                    return zzg;
                case 5:
                    zzgj<zzj> zzgjVar2 = zzh;
                    zzgj<zzj> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zzj.class) {
                            try {
                                zzgj<zzj> zzgjVar4 = zzh;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzg);
                                    zzh = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzk.class */
    public static final class zzk extends zzeo<zzk, zzb> implements zzgb {
        private static final zzk zzf;
        private static volatile zzgj<zzk> zzg;
        private int zzc;
        private int zzd;
        private float zze;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzk$zza.class */
        public enum zza implements zzet {
            UNKNOWN_METRIC(0),
            MEAN_ABSOLUTE_ERROR(1),
            MEAN_SQUARED_ERROR(2),
            ROOT_MEAN_SQUARED_ERROR(3);
            
            private static final zzes<zza> zze = new zziq();
            private final int zzf;

            zza(int i) {
                this.zzf = i;
            }

            public static zzev zzb() {
                return zzip.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_language_id.zzet
            public final int zza() {
                return this.zzf;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzk$zzb.class */
        public static final class zzb extends zzeo.zzb<zzk, zzb> implements zzgb {
            private zzb() {
                super(zzk.zzf);
            }

            public /* synthetic */ zzb(zzic zzicVar) {
                this();
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzf = zzkVar;
            zzeo.zza(zzk.class, zzkVar);
        }

        private zzk() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzk>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zzk> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzeo.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ခ\u0001", new Object[]{"zzc", "zzd", zza.zzb(), "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgj<zzk> zzgjVar2 = zzg;
                    zzgj<zzk> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zzk.class) {
                            try {
                                zzgj<zzk> zzgjVar4 = zzg;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzf);
                                    zzg = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzl.class */
    public static final class zzl extends zzeo.zzc<zzl, zza> implements zzgb {
        private static final zzl zzf;
        private static volatile zzgj<zzl> zzg;
        private byte zze = (byte) 2;
        private zzew<zzb> zzd = zzeo.zzl();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzl$zza.class */
        public static final class zza extends zzeo.zzd<zzl, zza> implements zzgb {
            private zza() {
                super(zzl.zzf);
            }

            public /* synthetic */ zza(zzic zzicVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb.class */
        public static final class zzb extends zzeo<zzb, zza> implements zzgb {
            private static final zzb zzg;
            private static volatile zzgj<zzb> zzh;
            private int zzc;
            private int zzd;
            private int zze;
            private zzew<zzk> zzf = zzeo.zzl();

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzid$zzl$zzb$zza.class */
            public static final class zza extends zzeo.zzb<zzb, zza> implements zzgb {
                private zza() {
                    super(zzb.zzg);
                }

                public /* synthetic */ zza(zzic zzicVar) {
                    this();
                }
            }

            static {
                zzb zzbVar = new zzb();
                zzg = zzbVar;
                zzeo.zza(zzb.class, zzbVar);
            }

            private zzb() {
            }

            /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzl$zzb>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
            @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
            public final Object zza(int i, Object obj, Object obj2) {
                zzgj<zzb> zzgjVar;
                switch (zzic.zza[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzeo.zza(zzg, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0001��\u0001င��\u0002င\u0001\u0003\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", zzk.class});
                    case 4:
                        return zzg;
                    case 5:
                        zzgj<zzb> zzgjVar2 = zzh;
                        zzgj<zzb> zzgjVar3 = zzgjVar2;
                        if (zzgjVar2 == null) {
                            synchronized (zzb.class) {
                                try {
                                    zzgj<zzb> zzgjVar4 = zzh;
                                    zzgjVar = zzgjVar4;
                                    if (zzgjVar4 == null) {
                                        ?? zzaVar = new zzeo.zza(zzg);
                                        zzh = zzaVar;
                                        zzgjVar = zzaVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            zzgjVar3 = zzgjVar;
                        }
                        return zzgjVar3 == 1 ? 1 : 0;
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
            zzl zzlVar = new zzl();
            zzf = zzlVar;
            zzeo.zza(zzl.class, zzlVar);
        }

        private zzl() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzid$zzl>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zzl> zzgjVar;
            switch (zzic.zza[i - 1]) {
                case 1:
                    return new zzl();
                case 2:
                    return new zza(null);
                case 3:
                    return zzeo.zza(zzf, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzd", zzb.class});
                case 4:
                    return zzf;
                case 5:
                    zzgj<zzl> zzgjVar2 = zzg;
                    zzgj<zzl> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zzl.class) {
                            try {
                                zzgj<zzl> zzgjVar4 = zzg;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzf);
                                    zzg = zzaVar;
                                    zzgjVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzgjVar3 = zzgjVar;
                    }
                    return zzgjVar3 == 1 ? 1 : 0;
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
