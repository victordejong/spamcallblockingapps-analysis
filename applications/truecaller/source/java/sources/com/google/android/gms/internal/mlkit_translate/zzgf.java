package com.google.android.gms.internal.mlkit_translate;

import com.google.android.gms.internal.mlkit_translate.zzkc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgf.class */
public final class zzgf {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgf$zza.class */
    public static final class zza extends zzkc<zza, C27656zza> implements zzlm {
        private static final zzki<Integer, zzio> zzd = new zzgg();
        private static final zza zze;
        private static volatile zzlu<zza> zzf;
        private zzkj zzc = zzkc.zzk();

        /* renamed from: com.google.android.gms.internal.mlkit_translate.zzgf$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgf$zza$zza.class */
        public static final class C27656zza extends zzkc.zza<zza, C27656zza> implements zzlm {
            private C27656zza() {
                super(zza.zze);
            }

            public /* synthetic */ C27656zza(zzge zzgeVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zze = zzaVar;
            zzkc.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzge.zza[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C27656zza(null);
                case 3:
                    return zzkc.zza(zze, "\u0001\u0001����\u0001\u0001\u0001��\u0001��\u0001\u001e", new Object[]{"zzc", zzio.zzb()});
                case 4:
                    return zze;
                case 5:
                    zzlu<zza> zzluVar = zzf;
                    zzlu<zza> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzlu<zza> zzluVar3 = zzf;
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

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgf$zzb.class */
    public static final class zzb extends zzkc<zzb, C27657zzb> implements zzlm {
        private static final zzb zzj;
        private static volatile zzlu<zzb> zzk;
        private int zzc;
        private int zzd;
        private int zze;
        private int zzf;
        private boolean zzg;
        private boolean zzh;
        private float zzi;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgf$zzb$zza.class */
        public enum zza implements zzke {
            CLASSIFICATION_UNKNOWN(0),
            CLASSIFICATION_NONE(1),
            CLASSIFICATION_ALL(2);
            
            private static final zzkh<zza> zzd = new zzgi();
            private final int zze;

            zza(int i) {
                this.zze = i;
            }

            public static zzkg zzb() {
                return zzgh.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zze + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzke
            public final int zza() {
                return this.zze;
            }
        }

        /* renamed from: com.google.android.gms.internal.mlkit_translate.zzgf$zzb$zzb */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgf$zzb$zzb.class */
        public static final class C27657zzb extends zzkc.zza<zzb, C27657zzb> implements zzlm {
            private C27657zzb() {
                super(zzb.zzj);
            }

            public /* synthetic */ C27657zzb(zzge zzgeVar) {
                this();
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgf$zzb$zzc.class */
        public enum zzc implements zzke {
            LANDMARK_UNKNOWN(0),
            LANDMARK_NONE(1),
            LANDMARK_ALL(2),
            LANDMARK_CONTOUR(3);
            
            private static final zzkh<zzc> zze = new zzgj();
            private final int zzf;

            zzc(int i) {
                this.zzf = i;
            }

            public static zzkg zzb() {
                return zzgk.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzc.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzke
            public final int zza() {
                return this.zzf;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgf$zzb$zzd.class */
        public enum zzd implements zzke {
            MODE_UNKNOWN(0),
            MODE_ACCURATE(1),
            MODE_FAST(2),
            MODE_SELFIE(3);
            
            private static final zzkh<zzd> zze = new zzgm();
            private final int zzf;

            zzd(int i) {
                this.zzf = i;
            }

            public static zzkg zzb() {
                return zzgl.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "<" + zzd.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.zzf + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.mlkit_translate.zzke
            public final int zza() {
                return this.zzf;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzj = zzbVar;
            zzkc.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        @Override // com.google.android.gms.internal.mlkit_translate.zzkc
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzge.zza[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new C27657zzb(null);
                case 3:
                    return zzkc.zza(zzj, "\u0001\u0006��\u0001\u0001\u0006\u0006������\u0001ဌ��\u0002ဌ\u0001\u0003ဌ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ခ\u0005", new Object[]{"zzc", "zzd", zzd.zzb(), "zze", zzc.zzb(), "zzf", zza.zzb(), "zzg", "zzh", "zzi"});
                case 4:
                    return zzj;
                case 5:
                    zzlu<zzb> zzluVar = zzk;
                    zzlu<zzb> zzluVar2 = zzluVar;
                    if (zzluVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzlu<zzb> zzluVar3 = zzk;
                                zzluVar2 = zzluVar3;
                                if (zzluVar3 == null) {
                                    zzluVar2 = new zzkc.zzc<>(zzj);
                                    zzk = zzluVar2;
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
}
