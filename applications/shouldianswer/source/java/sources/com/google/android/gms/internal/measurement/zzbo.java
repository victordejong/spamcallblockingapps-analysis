package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzbj;
import com.google.android.gms.internal.measurement.zzfd;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo.class */
public final class zzbo {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zza.class */
    public static final class zza extends zzfd<zza, C3161zza> implements zzgq {
        private static final zza zzh;
        private static volatile zzgx<zza> zzi;
        private int zzc;
        private String zzd = "";
        private boolean zze;
        private boolean zzf;
        private int zzg;

        /* renamed from: com.google.android.gms.internal.measurement.zzbo$zza$zza */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zza$zza.class */
        public static final class C3161zza extends zzfd.zzb<zza, C3161zza> implements zzgq {
            private C3161zza() {
                super(zza.zzh);
            }

            /* synthetic */ C3161zza(zzbq zzbqVar) {
                this();
            }

            public final C3161zza zza(String str) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zza) this.zza).zza(str);
                return this;
            }

            public final String zza() {
                return ((zza) this.zza).zza();
            }

            public final boolean zzb() {
                return ((zza) this.zza).zzb();
            }

            public final boolean zzc() {
                return ((zza) this.zza).zzc();
            }

            public final boolean zzd() {
                return ((zza) this.zza).zzd();
            }

            public final int zze() {
                return ((zza) this.zza).zze();
            }
        }

        static {
            zza zzaVar = new zza();
            zzh = zzaVar;
            zzfd.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        public final void zza(String str) {
            str.getClass();
            this.zzc |= 1;
            this.zzd = str;
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzbq.zza[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3161zza(null);
                case 3:
                    return zza(zzh, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001\b��\u0002\u0007\u0001\u0003\u0007\u0002\u0004\u0004\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
                case 4:
                    return zzh;
                case 5:
                    zzgx<zza> zzgxVar = zzi;
                    zzgx<zza> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzgx<zza> zzgxVar3 = zzi;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzh);
                                    zzi = zzgxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzgxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final String zza() {
            return this.zzd;
        }

        public final boolean zzb() {
            return this.zze;
        }

        public final boolean zzc() {
            return this.zzf;
        }

        public final boolean zzd() {
            return (this.zzc & 8) != 0;
        }

        public final int zze() {
            return this.zzg;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zzb.class */
    public static final class zzb extends zzfd<zzb, zza> implements zzgq {
        private static final zzb zzl;
        private static volatile zzgx<zzb> zzm;
        private int zzc;
        private long zzd;
        private int zzf;
        private boolean zzk;
        private String zze = "";
        private zzfl<zzc> zzg = zzbq();
        private zzfl<zza> zzh = zzbq();
        private zzfl<zzbj.zza> zzi = zzbq();
        private String zzj = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zzb$zza.class */
        public static final class zza extends zzfd.zzb<zzb, zza> implements zzgq {
            private zza() {
                super(zzb.zzl);
            }

            /* synthetic */ zza(zzbq zzbqVar) {
                this();
            }

            public final int zza() {
                return ((zzb) this.zza).zzf();
            }

            public final zza zza(int i) {
                return ((zzb) this.zza).zza(i);
            }

            public final zza zza(int i, zza.C3161zza c3161zza) {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzb) this.zza).zza(i, (zza) ((zzfd) c3161zza.zzu()));
                return this;
            }

            public final List<zzbj.zza> zzb() {
                return Collections.unmodifiableList(((zzb) this.zza).zzg());
            }

            public final zza zzc() {
                if (this.zzb) {
                    zzq();
                    this.zzb = false;
                }
                ((zzb) this.zza).zzl();
                return this;
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzl = zzbVar;
            zzfd.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        public final void zza(int i, zza zzaVar) {
            zzaVar.getClass();
            if (!this.zzh.zza()) {
                this.zzh = zzfd.zza(this.zzh);
            }
            this.zzh.set(i, zzaVar);
        }

        public static zza zzi() {
            return zzl.zzbk();
        }

        public static zzb zzj() {
            return zzl;
        }

        public final void zzl() {
            this.zzi = zzbq();
        }

        public final zza zza(int i) {
            return this.zzh.get(i);
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzbq.zza[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzl, "\u0001\b��\u0001\u0001\b\b��\u0003��\u0001\u0002��\u0002\b\u0001\u0003\u0004\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\b\u0003\b\u0007\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", zzc.class, "zzh", zza.class, "zzi", zzbj.zza.class, "zzj", "zzk"});
                case 4:
                    return zzl;
                case 5:
                    zzgx<zzb> zzgxVar = zzm;
                    zzgx<zzb> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzgx<zzb> zzgxVar3 = zzm;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzl);
                                    zzm = zzgxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzgxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final boolean zza() {
            return (this.zzc & 1) != 0;
        }

        public final long zzb() {
            return this.zzd;
        }

        public final boolean zzc() {
            return (this.zzc & 2) != 0;
        }

        public final String zzd() {
            return this.zze;
        }

        public final List<zzc> zze() {
            return this.zzg;
        }

        public final int zzf() {
            return this.zzh.size();
        }

        public final List<zzbj.zza> zzg() {
            return this.zzi;
        }

        public final boolean zzh() {
            return this.zzk;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zzc.class */
    public static final class zzc extends zzfd<zzc, zza> implements zzgq {
        private static final zzc zzf;
        private static volatile zzgx<zzc> zzg;
        private int zzc;
        private String zzd = "";
        private String zze = "";

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbo$zzc$zza.class */
        public static final class zza extends zzfd.zzb<zzc, zza> implements zzgq {
            private zza() {
                super(zzc.zzf);
            }

            /* synthetic */ zza(zzbq zzbqVar) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzf = zzcVar;
            zzfd.zza(zzc.class, zzcVar);
        }

        private zzc() {
        }

        @Override // com.google.android.gms.internal.measurement.zzfd
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzbq.zza[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzf, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\b��\u0002\b\u0001", new Object[]{"zzc", "zzd", "zze"});
                case 4:
                    return zzf;
                case 5:
                    zzgx<zzc> zzgxVar = zzg;
                    zzgx<zzc> zzgxVar2 = zzgxVar;
                    if (zzgxVar == null) {
                        synchronized (zzc.class) {
                            try {
                                zzgx<zzc> zzgxVar3 = zzg;
                                zzgxVar2 = zzgxVar3;
                                if (zzgxVar3 == null) {
                                    zzgxVar2 = new zzfd.zza<>(zzf);
                                    zzg = zzgxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzgxVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final String zza() {
            return this.zzd;
        }

        public final String zzb() {
            return this.zze;
        }
    }
}
