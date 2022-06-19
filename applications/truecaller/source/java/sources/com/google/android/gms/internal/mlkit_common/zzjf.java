package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.internal.mlkit_common.zzfq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf.class */
public final class zzjf {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zza.class */
    public static final class zza extends zzfq<zza, C27641zza> implements zzhd {
        private static final zza zzf;
        private static volatile zzhl<zza> zzg;
        private int zzc;
        private int zzd;
        private zzj zze;

        /* renamed from: com.google.android.gms.internal.mlkit_common.zzjf$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zza$zza.class */
        public static final class C27641zza extends zzfq.zzb<zza, C27641zza> implements zzhd {
            private C27641zza() {
                super(zza.zzf);
            }

            public /* synthetic */ C27641zza(zzje zzjeVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zza$zzb.class */
        public enum zzb implements zzfv {
            UNKNOWN_ENGINE(0),
            TFLITE(1);
            
            private static final zzfu<zzb> zzc = new zzjg();
            private final int zzd;

            zzb(int i) {
                this.zzd = i;
            }

            public static zzfx zzb() {
                return zzjh.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzd + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_common.zzfv
            public final int zza() {
                return this.zzd;
            }
        }

        static {
            zza zzaVar = new zza();
            zzf = zzaVar;
            zzfq.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zza>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zza> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C27641zza(null);
                case 3:
                    return zzfq.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ဉ\u0001", new Object[]{"zzc", "zzd", zzb.zzb(), "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzhl<zza> zzhlVar2 = zzg;
                    zzhl<zza> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zza.class) {
                            try {
                                zzhl<zza> zzhlVar4 = zzg;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzf);
                                    zzg = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzb.class */
    public static final class zzb extends zzfq<zzb, zza> implements zzhd {
        private static final zzb zzn;
        private static volatile zzhl<zzb> zzo;
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

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzb$zza.class */
        public static final class zza extends zzfq.zzb<zzb, zza> implements zzhd {
            private zza() {
                super(zzb.zzn);
            }

            public /* synthetic */ zza(zzje zzjeVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzn = zzbVar;
            zzfq.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzb>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zzb> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzfq.zza(zzn, "\u0001\n��\u0001\u0001\n\n������\u0001င��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဈ\u0007\tဈ\b\nဈ\t", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
                case 4:
                    return zzn;
                case 5:
                    zzhl<zzb> zzhlVar2 = zzo;
                    zzhl<zzb> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zzb.class) {
                            try {
                                zzhl<zzb> zzhlVar4 = zzo;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzn);
                                    zzo = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzc.class */
    public static final class zzc extends zzfq<zzc, zzb> implements zzhd {
        private static final zzc zzm;
        private static volatile zzhl<zzc> zzn;
        private int zzc;
        private int zzd;
        private int zze;
        private zza zzh;
        private zzd zzi;
        private int zzj;
        private int zzl;
        private String zzf = "";
        private String zzg = "";
        private zzfy<zzg> zzk = zzfq.zzl();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzc$zza.class */
        public enum zza implements zzfv {
            UNKNOWN_ACTION(0),
            INITIALIZATION(1),
            COMPILATION(2),
            EXECUTION(3),
            TEARDOWN(4),
            VALIDATION(5);
            
            private static final zzfu<zza> zzg = new zzji();
            private final int zzh;

            zza(int i) {
                this.zzh = i;
            }

            public static zzfx zzb() {
                return zzjj.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_common.zzfv
            public final int zza() {
                return this.zzh;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzc$zzb.class */
        public static final class zzb extends zzfq.zzb<zzc, zzb> implements zzhd {
            private zzb() {
                super(zzc.zzm);
            }

            public /* synthetic */ zzb(zzje zzjeVar) {
                this();
            }
        }

        /* renamed from: com.google.android.gms.internal.mlkit_common.zzjf$zzc$zzc */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzc$zzc.class */
        public static final class C27642zzc extends zzfq<C27642zzc, zza> implements zzhd {
            private static final C27642zzc zzf;
            private static volatile zzhl<C27642zzc> zzg;
            private int zzc;
            private int zzd;
            private int zze;

            /* renamed from: com.google.android.gms.internal.mlkit_common.zzjf$zzc$zzc$zza */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzc$zzc$zza.class */
            public static final class zza extends zzfq.zzb<C27642zzc, zza> implements zzhd {
                private zza() {
                    super(C27642zzc.zzf);
                }

                public /* synthetic */ zza(zzje zzjeVar) {
                    this();
                }
            }

            static {
                C27642zzc c27642zzc = new C27642zzc();
                zzf = c27642zzc;
                zzfq.zza(C27642zzc.class, c27642zzc);
            }

            private C27642zzc() {
            }

            /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzc$zzc>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
            @Override // com.google.android.gms.internal.mlkit_common.zzfq
            public final Object zza(int i, Object obj, Object obj2) {
                zzhl<C27642zzc> zzhlVar;
                switch (zzje.zza[i - 1]) {
                    case 1:
                        return new C27642zzc();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzfq.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001င��\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
                    case 4:
                        return zzf;
                    case 5:
                        zzhl<C27642zzc> zzhlVar2 = zzg;
                        zzhl<C27642zzc> zzhlVar3 = zzhlVar2;
                        if (zzhlVar2 == null) {
                            synchronized (C27642zzc.class) {
                                try {
                                    zzhl<C27642zzc> zzhlVar4 = zzg;
                                    zzhlVar = zzhlVar4;
                                    if (zzhlVar4 == null) {
                                        ?? zzaVar = new zzfq.zza(zzf);
                                        zzg = zzaVar;
                                        zzhlVar = zzaVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            zzhlVar3 = zzhlVar;
                        }
                        return zzhlVar3 == 1 ? 1 : 0;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzc$zzd.class */
        public static final class zzd extends zzfq<zzd, zza> implements zzhd {
            private static final zzd zzg;
            private static volatile zzhl<zzd> zzh;
            private int zzc;
            private C27642zzc zzd;
            private C27642zzc zze;
            private boolean zzf;

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzc$zzd$zza.class */
            public static final class zza extends zzfq.zzb<zzd, zza> implements zzhd {
                private zza() {
                    super(zzd.zzg);
                }

                public /* synthetic */ zza(zzje zzjeVar) {
                    this();
                }
            }

            static {
                zzd zzdVar = new zzd();
                zzg = zzdVar;
                zzfq.zza(zzd.class, zzdVar);
            }

            private zzd() {
            }

            /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzc$zzd>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
            @Override // com.google.android.gms.internal.mlkit_common.zzfq
            public final Object zza(int i, Object obj, Object obj2) {
                zzhl<zzd> zzhlVar;
                switch (zzje.zza[i - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzfq.zza(zzg, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ဉ\u0001\u0003ဇ\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
                    case 4:
                        return zzg;
                    case 5:
                        zzhl<zzd> zzhlVar2 = zzh;
                        zzhl<zzd> zzhlVar3 = zzhlVar2;
                        if (zzhlVar2 == null) {
                            synchronized (zzd.class) {
                                try {
                                    zzhl<zzd> zzhlVar4 = zzh;
                                    zzhlVar = zzhlVar4;
                                    if (zzhlVar4 == null) {
                                        ?? zzaVar = new zzfq.zza(zzg);
                                        zzh = zzaVar;
                                        zzhlVar = zzaVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            zzhlVar3 = zzhlVar;
                        }
                        return zzhlVar3 == 1 ? 1 : 0;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzc$zze.class */
        public enum zze implements zzfv {
            UNKNOWN_STATUS(0),
            COMPLETED_EVENT(1),
            MISSING_END_EVENT(2),
            HANG(3),
            ABANDONED_FROM_HANG(4),
            FORCED_CRASH_FROM_HANG(5);
            
            private static final zzfu<zze> zzg = new zzjk();
            private final int zzh;

            zze(int i) {
                this.zzh = i;
            }

            public static zzfx zzb() {
                return zzjm.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zze.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzh + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_common.zzfv
            public final int zza() {
                return this.zzh;
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzm = zzcVar;
            zzfq.zza(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzc>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zzc> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzfq.zza(zzm, "\u0001\t��\u0001\u0001\t\t��\u0001��\u0001ဌ��\u0002ဌ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007င\u0006\b\u001b\tင\u0007", new Object[]{"zzc", "zzd", zza.zzb(), "zze", zze.zzb(), "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzg.class, "zzl"});
                case 4:
                    return zzm;
                case 5:
                    zzhl<zzc> zzhlVar2 = zzn;
                    zzhl<zzc> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zzc.class) {
                            try {
                                zzhl<zzc> zzhlVar4 = zzn;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzm);
                                    zzn = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzd.class */
    public static final class zzd extends zzfq<zzd, zza> implements zzhd {
        private static final zzd zzk;
        private static volatile zzhl<zzd> zzl;
        private int zzc;
        private int zzg;
        private int zzh;
        private int zzj;
        private String zzd = "";
        private String zze = "";
        private String zzf = "";
        private String zzi = "";

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzd$zza.class */
        public static final class zza extends zzfq.zzb<zzd, zza> implements zzhd {
            private zza() {
                super(zzd.zzk);
            }

            public /* synthetic */ zza(zzje zzjeVar) {
                this();
            }
        }

        static {
            zzd zzdVar = new zzd();
            zzk = zzdVar;
            zzfq.zza(zzd.class, zzdVar);
        }

        private zzd() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_common.zzfq$zza, com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzd>] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zzd> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(null);
                case 3:
                    return zzfq.zza(zzk, "\u0001\u0007��\u0001\u0001\u0007\u0007������\u0001ဈ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004င\u0003\u0005င\u0004\u0006ဈ\u0005\u0007င\u0006", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj"});
                case 4:
                    return zzk;
                case 5:
                    zzhl<zzd> zzhlVar2 = zzl;
                    zzhl<zzd> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zzd.class) {
                            try {
                                zzhl<zzd> zzhlVar4 = zzl;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzk);
                                    zzl = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zze.class */
    public static final class zze extends zzfq<zze, zza> implements zzhd {
        private static final zze zze;
        private static volatile zzhl<zze> zzf;
        private int zzc;
        private int zzd;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zze$zza.class */
        public static final class zza extends zzfq.zzb<zze, zza> implements zzhd {
            private zza() {
                super(zze.zze);
            }

            public /* synthetic */ zza(zzje zzjeVar) {
                this();
            }
        }

        static {
            zze zzeVar = new zze();
            zze = zzeVar;
            zzfq.zza(zze.class, zzeVar);
        }

        private zze() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_common.zzfq$zza, com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zze>] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zze> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zzfq.zza(zze, "\u0001\u0001��\u0001\u0001\u0001\u0001������\u0001င��", new Object[]{"zzc", "zzd"});
                case 4:
                    return zze;
                case 5:
                    zzhl<zze> zzhlVar2 = zzf;
                    zzhl<zze> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zze.class) {
                            try {
                                zzhl<zze> zzhlVar4 = zzf;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zze);
                                    zzf = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzf.class */
    public static final class zzf extends zzfq<zzf, zza> implements zzhd {
        private static final zzf zzo;
        private static volatile zzhl<zzf> zzp;
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

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzf$zza.class */
        public static final class zza extends zzfq.zzb<zzf, zza> implements zzhd {
            private zza() {
                super(zzf.zzo);
            }

            public /* synthetic */ zza(zzje zzjeVar) {
                this();
            }
        }

        static {
            zzf zzfVar = new zzf();
            zzo = zzfVar;
            zzfq.zza(zzf.class, zzfVar);
        }

        private zzf() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzf>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zzf> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zzfq.zza(zzo, "\u0001\n��\u0001\u0001\n\n����\u0001\u0001ဉ��\u0002ဉ\u0001\u0003ဌ\u0003\u0004ဉ\u0004\u0005ᐉ\u0005\u0006ဂ\u0006\u0007ဂ\u0007\bဇ\b\tင\t\nဉ\u0002", new Object[]{"zzc", "zzd", "zze", "zzg", zzjl.zzb(), "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzf"});
                case 4:
                    return zzo;
                case 5:
                    zzhl<zzf> zzhlVar2 = zzp;
                    zzhl<zzf> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zzf.class) {
                            try {
                                zzhl<zzf> zzhlVar4 = zzp;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzo);
                                    zzp = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
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

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzg.class */
    public static final class zzg extends zzfq<zzg, zza> implements zzhd {
        private static final zzg zzd;
        private static volatile zzhl<zzg> zze;
        private zzfw zzc = zzfq.zzk();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzg$zza.class */
        public static final class zza extends zzfq.zzb<zzg, zza> implements zzhd {
            private zza() {
                super(zzg.zzd);
            }

            public /* synthetic */ zza(zzje zzjeVar) {
                this();
            }
        }

        static {
            zzg zzgVar = new zzg();
            zzd = zzgVar;
            zzfq.zza(zzg.class, zzgVar);
        }

        private zzg() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzg>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zzg> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(null);
                case 3:
                    return zzfq.zza(zzd, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u0016", new Object[]{"zzc"});
                case 4:
                    return zzd;
                case 5:
                    zzhl<zzg> zzhlVar2 = zze;
                    zzhl<zzg> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zzg.class) {
                            try {
                                zzhl<zzg> zzhlVar4 = zze;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzd);
                                    zze = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzh.class */
    public static final class zzh extends zzfq<zzh, zza> implements zzhd {
        private static final zzh zzf;
        private static volatile zzhl<zzh> zzg;
        private int zzc;
        private String zzd = "";
        private int zze;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzh$zza.class */
        public static final class zza extends zzfq.zzb<zzh, zza> implements zzhd {
            private zza() {
                super(zzh.zzf);
            }

            public /* synthetic */ zza(zzje zzjeVar) {
                this();
            }
        }

        static {
            zzh zzhVar = new zzh();
            zzf = zzhVar;
            zzfq.zza(zzh.class, zzhVar);
        }

        private zzh() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzh>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zzh> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zza(null);
                case 3:
                    return zzfq.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002င\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzhl<zzh> zzhlVar2 = zzg;
                    zzhl<zzh> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zzh.class) {
                            try {
                                zzhl<zzh> zzhlVar4 = zzg;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzf);
                                    zzg = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzi.class */
    public static final class zzi extends zzfq<zzi, zza> implements zzhd {
        private static final zzi zzd;
        private static volatile zzhl<zzi> zze;
        private zzfy<zzb> zzc = zzfq.zzl();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzi$zza.class */
        public static final class zza extends zzfq.zzb<zzi, zza> implements zzhd {
            private zza() {
                super(zzi.zzd);
            }

            public /* synthetic */ zza(zzje zzjeVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzi$zzb.class */
        public static final class zzb extends zzfq<zzb, zza> implements zzhd {
            private static final zzb zzh;
            private static volatile zzhl<zzb> zzi;
            private int zzc;
            private int zze;
            private long zzg;
            private String zzd = "";
            private String zzf = "";

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzi$zzb$zza.class */
            public static final class zza extends zzfq.zzb<zzb, zza> implements zzhd {
                private zza() {
                    super(zzb.zzh);
                }

                public /* synthetic */ zza(zzje zzjeVar) {
                    this();
                }
            }

            static {
                zzb zzbVar = new zzb();
                zzh = zzbVar;
                zzfq.zza(zzb.class, zzbVar);
            }

            private zzb() {
            }

            /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzi$zzb>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
            @Override // com.google.android.gms.internal.mlkit_common.zzfq
            public final Object zza(int i, Object obj, Object obj2) {
                zzhl<zzb> zzhlVar;
                switch (zzje.zza[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzfq.zza(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဈ��\u0002င\u0001\u0003ဈ\u0002\u0004ဂ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                    case 4:
                        return zzh;
                    case 5:
                        zzhl<zzb> zzhlVar2 = zzi;
                        zzhl<zzb> zzhlVar3 = zzhlVar2;
                        if (zzhlVar2 == null) {
                            synchronized (zzb.class) {
                                try {
                                    zzhl<zzb> zzhlVar4 = zzi;
                                    zzhlVar = zzhlVar4;
                                    if (zzhlVar4 == null) {
                                        ?? zzaVar = new zzfq.zza(zzh);
                                        zzi = zzaVar;
                                        zzhlVar = zzaVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            zzhlVar3 = zzhlVar;
                        }
                        return zzhlVar3 == 1 ? 1 : 0;
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
            zzfq.zza(zzi.class, zziVar);
        }

        private zzi() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzi>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zzi> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza(null);
                case 3:
                    return zzfq.zza(zzd, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzc", zzb.class});
                case 4:
                    return zzd;
                case 5:
                    zzhl<zzi> zzhlVar2 = zze;
                    zzhl<zzi> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zzi.class) {
                            try {
                                zzhl<zzi> zzhlVar4 = zze;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzd);
                                    zze = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzj.class */
    public static final class zzj extends zzfq<zzj, zza> implements zzhd {
        private static final zzj zzg;
        private static volatile zzhl<zzj> zzh;
        private int zzc;
        private int zzd;
        private zzh zze;
        private zze zzf;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzj$zza.class */
        public static final class zza extends zzfq.zzb<zzj, zza> implements zzhd {
            private zza() {
                super(zzj.zzg);
            }

            public /* synthetic */ zza(zzje zzjeVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzj$zzb.class */
        public enum zzb implements zzfv {
            DELEGATE_NONE(0),
            NNAPI(1),
            GPU(2),
            HEXAGON(3),
            EDGETPU(4);
            
            private static final zzfu<zzb> zzf = new zzjp();
            private final int zzg;

            zzb(int i) {
                this.zzg = i;
            }

            public static zzfx zzb() {
                return zzjq.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzg + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_common.zzfv
            public final int zza() {
                return this.zzg;
            }
        }

        static {
            zzj zzjVar = new zzj();
            zzg = zzjVar;
            zzfq.zza(zzj.class, zzjVar);
        }

        private zzj() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzj>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zzj> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zza(null);
                case 3:
                    return zzfq.zza(zzg, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဌ��\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", zzb.zzb(), "zze", "zzf"});
                case 4:
                    return zzg;
                case 5:
                    zzhl<zzj> zzhlVar2 = zzh;
                    zzhl<zzj> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zzj.class) {
                            try {
                                zzhl<zzj> zzhlVar4 = zzh;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzg);
                                    zzh = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzk.class */
    public static final class zzk extends zzfq<zzk, zzb> implements zzhd {
        private static final zzk zzf;
        private static volatile zzhl<zzk> zzg;
        private int zzc;
        private int zzd;
        private float zze;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzk$zza.class */
        public enum zza implements zzfv {
            UNKNOWN_METRIC(0),
            MEAN_ABSOLUTE_ERROR(1),
            MEAN_SQUARED_ERROR(2),
            ROOT_MEAN_SQUARED_ERROR(3);
            
            private static final zzfu<zza> zze = new zzjs();
            private final int zzf;

            zza(int i) {
                this.zzf = i;
            }

            public static zzfx zzb() {
                return zzjr.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_common.zzfv
            public final int zza() {
                return this.zzf;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzk$zzb.class */
        public static final class zzb extends zzfq.zzb<zzk, zzb> implements zzhd {
            private zzb() {
                super(zzk.zzf);
            }

            public /* synthetic */ zzb(zzje zzjeVar) {
                this();
            }
        }

        static {
            zzk zzkVar = new zzk();
            zzf = zzkVar;
            zzfq.zza(zzk.class, zzkVar);
        }

        private zzk() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzk>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zzk> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzfq.zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဌ��\u0002ခ\u0001", new Object[]{"zzc", "zzd", zza.zzb(), "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzhl<zzk> zzhlVar2 = zzg;
                    zzhl<zzk> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zzk.class) {
                            try {
                                zzhl<zzk> zzhlVar4 = zzg;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzf);
                                    zzg = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzl.class */
    public static final class zzl extends zzfq.zzc<zzl, zza> implements zzhd {
        private static final zzl zzf;
        private static volatile zzhl<zzl> zzg;
        private byte zze = (byte) 2;
        private zzfy<zzb> zzd = zzfq.zzl();

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzl$zza.class */
        public static final class zza extends zzfq.zzd<zzl, zza> implements zzhd {
            private zza() {
                super(zzl.zzf);
            }

            public /* synthetic */ zza(zzje zzjeVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzl$zzb.class */
        public static final class zzb extends zzfq<zzb, zza> implements zzhd {
            private static final zzb zzg;
            private static volatile zzhl<zzb> zzh;
            private int zzc;
            private int zzd;
            private int zze;
            private zzfy<zzk> zzf = zzfq.zzl();

            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzjf$zzl$zzb$zza.class */
            public static final class zza extends zzfq.zzb<zzb, zza> implements zzhd {
                private zza() {
                    super(zzb.zzg);
                }

                public /* synthetic */ zza(zzje zzjeVar) {
                    this();
                }
            }

            static {
                zzb zzbVar = new zzb();
                zzg = zzbVar;
                zzfq.zza(zzb.class, zzbVar);
            }

            private zzb() {
            }

            /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzl$zzb>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
            @Override // com.google.android.gms.internal.mlkit_common.zzfq
            public final Object zza(int i, Object obj, Object obj2) {
                zzhl<zzb> zzhlVar;
                switch (zzje.zza[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzfq.zza(zzg, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0001��\u0001င��\u0002င\u0001\u0003\u001b", new Object[]{"zzc", "zzd", "zze", "zzf", zzk.class});
                    case 4:
                        return zzg;
                    case 5:
                        zzhl<zzb> zzhlVar2 = zzh;
                        zzhl<zzb> zzhlVar3 = zzhlVar2;
                        if (zzhlVar2 == null) {
                            synchronized (zzb.class) {
                                try {
                                    zzhl<zzb> zzhlVar4 = zzh;
                                    zzhlVar = zzhlVar4;
                                    if (zzhlVar4 == null) {
                                        ?? zzaVar = new zzfq.zza(zzg);
                                        zzh = zzaVar;
                                        zzhlVar = zzaVar;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            zzhlVar3 = zzhlVar;
                        }
                        return zzhlVar3 == 1 ? 1 : 0;
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
            zzfq.zza(zzl.class, zzlVar);
        }

        private zzl() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzjf$zzl>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zzl> zzhlVar;
            switch (zzje.zza[i - 1]) {
                case 1:
                    return new zzl();
                case 2:
                    return new zza(null);
                case 3:
                    return zzfq.zza(zzf, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001b", new Object[]{"zzd", zzb.class});
                case 4:
                    return zzf;
                case 5:
                    zzhl<zzl> zzhlVar2 = zzg;
                    zzhl<zzl> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zzl.class) {
                            try {
                                zzhl<zzl> zzhlVar4 = zzg;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzf);
                                    zzg = zzaVar;
                                    zzhlVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzhlVar3 = zzhlVar;
                    }
                    return zzhlVar3 == 1 ? 1 : 0;
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
