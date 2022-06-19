package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.internal.mlkit_common.zzfq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdf.class */
public final class zzdf {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdf$zza.class */
    public static final class zza extends zzfq<zza, C27639zza> implements zzhd {
        private static final zzfz<Integer, zzef> zzd = new zzdg();
        private static final zza zze;
        private static volatile zzhl<zza> zzf;
        private zzfw zzc = zzfq.zzk();

        /* renamed from: com.google.android.gms.internal.mlkit_common.zzdf$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdf$zza$zza.class */
        public static final class C27639zza extends zzfq.zzb<zza, C27639zza> implements zzhd {
            private C27639zza() {
                super(zza.zze);
            }

            public /* synthetic */ C27639zza(zzde zzdeVar) {
                this();
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_common.zzfz<java.lang.Integer, com.google.android.gms.internal.mlkit_common.zzef>, com.google.android.gms.internal.mlkit_common.zzdg] */
        static {
            zza zzaVar = new zza();
            zze = zzaVar;
            zzfq.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzdf$zza>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zza> zzhlVar;
            switch (zzde.zza[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C27639zza(null);
                case 3:
                    return zzfq.zza(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001e", new Object[]{"zzc", zzef.zzb()});
                case 4:
                    return zze;
                case 5:
                    zzhl<zza> zzhlVar2 = zzf;
                    zzhl<zza> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zza.class) {
                            try {
                                zzhl<zza> zzhlVar4 = zzf;
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

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdf$zzb.class */
    public static final class zzb extends zzfq<zzb, C27640zzb> implements zzhd {
        private static final zzb zzj;
        private static volatile zzhl<zzb> zzk;
        private int zzc;
        private int zzd;
        private int zze;
        private int zzf;
        private boolean zzg;
        private boolean zzh;
        private float zzi;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdf$zzb$zza.class */
        public enum zza implements zzfv {
            CLASSIFICATION_UNKNOWN(0),
            CLASSIFICATION_NONE(1),
            CLASSIFICATION_ALL(2);
            
            private static final zzfu<zza> zzd = new zzdi();
            private final int zze;

            zza(int i) {
                this.zze = i;
            }

            public static zzfx zzb() {
                return zzdh.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zze + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_common.zzfv
            public final int zza() {
                return this.zze;
            }
        }

        /* renamed from: com.google.android.gms.internal.mlkit_common.zzdf$zzb$zzb */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdf$zzb$zzb.class */
        public static final class C27640zzb extends zzfq.zzb<zzb, C27640zzb> implements zzhd {
            private C27640zzb() {
                super(zzb.zzj);
            }

            public /* synthetic */ C27640zzb(zzde zzdeVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdf$zzb$zzc.class */
        public enum zzc implements zzfv {
            LANDMARK_UNKNOWN(0),
            LANDMARK_NONE(1),
            LANDMARK_ALL(2),
            LANDMARK_CONTOUR(3);
            
            private static final zzfu<zzc> zze = new zzdj();
            private final int zzf;

            zzc(int i) {
                this.zzf = i;
            }

            public static zzfx zzb() {
                return zzdk.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzc.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_common.zzfv
            public final int zza() {
                return this.zzf;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzdf$zzb$zzd.class */
        public enum zzd implements zzfv {
            MODE_UNKNOWN(0),
            MODE_ACCURATE(1),
            MODE_FAST(2),
            MODE_SELFIE(3);
            
            private static final zzfu<zzd> zze = new zzdm();
            private final int zzf;

            zzd(int i) {
                this.zzf = i;
            }

            public static zzfx zzb() {
                return zzdl.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzd.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_common.zzfv
            public final int zza() {
                return this.zzf;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzj = zzbVar;
            zzfq.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_common.zzhl<com.google.android.gms.internal.mlkit_common.zzdf$zzb>, com.google.android.gms.internal.mlkit_common.zzfq$zza] */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq
        public final Object zza(int i, Object obj, Object obj2) {
            zzhl<zzb> zzhlVar;
            switch (zzde.zza[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new C27640zzb(null);
                case 3:
                    return zzfq.zza(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဌ��\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ခ\u0005", new Object[]{"zzc", "zzd", zzd.zzb(), "zze", zzc.zzb(), "zzf", zza.zzb(), "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    zzhl<zzb> zzhlVar2 = zzk;
                    zzhl<zzb> zzhlVar3 = zzhlVar2;
                    if (zzhlVar2 == null) {
                        synchronized (zzb.class) {
                            try {
                                zzhl<zzb> zzhlVar4 = zzk;
                                zzhlVar = zzhlVar4;
                                if (zzhlVar4 == null) {
                                    ?? zzaVar = new zzfq.zza(zzj);
                                    zzk = zzaVar;
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
}
