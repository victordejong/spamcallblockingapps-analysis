package com.google.android.gms.internal.mlkit_language_id;

import com.google.android.gms.internal.mlkit_language_id.zzeo;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzci.class */
public final class zzci {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzci$zza.class */
    public static final class zza extends zzeo<zza, C27643zza> implements zzgb {
        private static final zzex<Integer, zzdd> zzd = new zzcj();
        private static final zza zze;
        private static volatile zzgj<zza> zzf;
        private zzeu zzc = zzeo.zzk();

        /* renamed from: com.google.android.gms.internal.mlkit_language_id.zzci$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzci$zza$zza.class */
        public static final class C27643zza extends zzeo.zzb<zza, C27643zza> implements zzgb {
            private C27643zza() {
                super(zza.zze);
            }

            public /* synthetic */ C27643zza(zzch zzchVar) {
                this();
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_language_id.zzcj, com.google.android.gms.internal.mlkit_language_id.zzex<java.lang.Integer, com.google.android.gms.internal.mlkit_language_id.zzdd>] */
        static {
            zza zzaVar = new zza();
            zze = zzaVar;
            zzeo.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzci$zza>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zza> zzgjVar;
            switch (zzch.zza[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C27643zza(null);
                case 3:
                    return zzeo.zza(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001e", new Object[]{"zzc", zzdd.zzb()});
                case 4:
                    return zze;
                case 5:
                    zzgj<zza> zzgjVar2 = zzf;
                    zzgj<zza> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zza.class) {
                            try {
                                zzgj<zza> zzgjVar4 = zzf;
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

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzci$zzb.class */
    public static final class zzb extends zzeo<zzb, C27644zzb> implements zzgb {
        private static final zzb zzj;
        private static volatile zzgj<zzb> zzk;
        private int zzc;
        private int zzd;
        private int zze;
        private int zzf;
        private boolean zzg;
        private boolean zzh;
        private float zzi;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzci$zzb$zza.class */
        public enum zza implements zzet {
            CLASSIFICATION_UNKNOWN(0),
            CLASSIFICATION_NONE(1),
            CLASSIFICATION_ALL(2);
            
            private static final zzes<zza> zzd = new zzcl();
            private final int zze;

            zza(int i) {
                this.zze = i;
            }

            public static zzev zzb() {
                return zzck.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zze + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_language_id.zzet
            public final int zza() {
                return this.zze;
            }
        }

        /* renamed from: com.google.android.gms.internal.mlkit_language_id.zzci$zzb$zzb */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzci$zzb$zzb.class */
        public static final class C27644zzb extends zzeo.zzb<zzb, C27644zzb> implements zzgb {
            private C27644zzb() {
                super(zzb.zzj);
            }

            public /* synthetic */ C27644zzb(zzch zzchVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzci$zzb$zzc.class */
        public enum zzc implements zzet {
            LANDMARK_UNKNOWN(0),
            LANDMARK_NONE(1),
            LANDMARK_ALL(2),
            LANDMARK_CONTOUR(3);
            
            private static final zzes<zzc> zze = new zzcm();
            private final int zzf;

            zzc(int i) {
                this.zzf = i;
            }

            public static zzev zzb() {
                return zzcn.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzc.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_language_id.zzet
            public final int zza() {
                return this.zzf;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzci$zzb$zzd.class */
        public enum zzd implements zzet {
            MODE_UNKNOWN(0),
            MODE_ACCURATE(1),
            MODE_FAST(2),
            MODE_SELFIE(3);
            
            private static final zzes<zzd> zze = new zzcp();
            private final int zzf;

            zzd(int i) {
                this.zzf = i;
            }

            public static zzev zzb() {
                return zzco.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzd.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_language_id.zzet
            public final int zza() {
                return this.zzf;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzj = zzbVar;
            zzeo.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.mlkit_language_id.zzgj<com.google.android.gms.internal.mlkit_language_id.zzci$zzb>, com.google.android.gms.internal.mlkit_language_id.zzeo$zza] */
        @Override // com.google.android.gms.internal.mlkit_language_id.zzeo
        public final Object zza(int i, Object obj, Object obj2) {
            zzgj<zzb> zzgjVar;
            switch (zzch.zza[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new C27644zzb(null);
                case 3:
                    return zzeo.zza(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဌ��\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ခ\u0005", new Object[]{"zzc", "zzd", zzd.zzb(), "zze", zzc.zzb(), "zzf", zza.zzb(), "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    zzgj<zzb> zzgjVar2 = zzk;
                    zzgj<zzb> zzgjVar3 = zzgjVar2;
                    if (zzgjVar2 == null) {
                        synchronized (zzb.class) {
                            try {
                                zzgj<zzb> zzgjVar4 = zzk;
                                zzgjVar = zzgjVar4;
                                if (zzgjVar4 == null) {
                                    ?? zzaVar = new zzeo.zza(zzj);
                                    zzk = zzaVar;
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
}
