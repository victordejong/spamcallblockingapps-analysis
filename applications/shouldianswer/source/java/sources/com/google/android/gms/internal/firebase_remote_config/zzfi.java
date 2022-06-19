package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzhi;
import java.io.InputStream;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi.class */
public final class zzfi {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zza.class */
    public static final class zza extends zzhi<zza, C3158zza> implements zzis {
        private static final zza zzmk = new zza();
        private static volatile zziz<zza> zzml;
        private int zzmg;
        private long zzmi;
        private zzhn<zzd> zzmh = zzgt();
        private zzhn<zzfx> zzmj = zzgt();

        /* renamed from: com.google.android.gms.internal.firebase_remote_config.zzfi$zza$zza */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zza$zza.class */
        public static final class C3158zza extends zzhi.zzb<zza, C3158zza> implements zzis {
            private C3158zza() {
                super(zza.zzmk);
            }

            /* synthetic */ C3158zza(zzfh zzfhVar) {
                this();
            }
        }

        static {
            zzhi.zza(zza.class, zzmk);
        }

        private zza() {
        }

        public static zza zzdm() {
            return zzmk;
        }

        public final long getTimestamp() {
            return this.zzmi;
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_remote_config.zziz<com.google.android.gms.internal.firebase_remote_config.zzfi$zza>, com.google.android.gms.internal.firebase_remote_config.zzhi$zza] */
        @Override // com.google.android.gms.internal.firebase_remote_config.zzhi
        public final Object zzb(int i, Object obj, Object obj2) {
            zziz<zza> zzizVar;
            switch (zzfh.zzmf[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3158zza(null);
                case 3:
                    return zza(zzmk, "\u0001\u0003��\u0001\u0001\u0003\u0003��\u0002��\u0001\u001b\u0002\u0005��\u0003\u001c", new Object[]{"zzmg", "zzmh", zzd.class, "zzmi", "zzmj"});
                case 4:
                    return zzmk;
                case 5:
                    zziz<zza> zzizVar2 = zzml;
                    zziz<zza> zzizVar3 = zzizVar2;
                    if (zzizVar2 == null) {
                        synchronized (zza.class) {
                            try {
                                zziz<zza> zzizVar4 = zzml;
                                zzizVar = zzizVar4;
                                if (zzizVar4 == null) {
                                    ?? zzaVar = new zzhi.zza(zzmk);
                                    zzml = zzaVar;
                                    zzizVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzizVar3 = zzizVar;
                    }
                    return zzizVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final List<zzd> zzdk() {
            return this.zzmh;
        }

        public final List<zzfx> zzdl() {
            return this.zzmj;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zzb.class */
    public static final class zzb extends zzhi<zzb, zza> implements zzis {
        private static volatile zziz<zzb> zzml;
        private static final zzb zzmo = new zzb();
        private int zzmg;
        private String zzmm = "";
        private zzfx zzmn = zzfx.zzov;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zzb$zza.class */
        public static final class zza extends zzhi.zzb<zzb, zza> implements zzis {
            private zza() {
                super(zzb.zzmo);
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }
        }

        static {
            zzhi.zza(zzb.class, zzmo);
        }

        private zzb() {
        }

        public final String getKey() {
            return this.zzmm;
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_remote_config.zziz<com.google.android.gms.internal.firebase_remote_config.zzfi$zzb>, com.google.android.gms.internal.firebase_remote_config.zzhi$zza] */
        @Override // com.google.android.gms.internal.firebase_remote_config.zzhi
        public final Object zzb(int i, Object obj, Object obj2) {
            zziz<zzb> zzizVar;
            switch (zzfh.zzmf[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzmo, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001\b��\u0002\n\u0001", new Object[]{"zzmg", "zzmm", "zzmn"});
                case 4:
                    return zzmo;
                case 5:
                    zziz<zzb> zzizVar2 = zzml;
                    zziz<zzb> zzizVar3 = zzizVar2;
                    if (zzizVar2 == null) {
                        synchronized (zzb.class) {
                            try {
                                zziz<zzb> zzizVar4 = zzml;
                                zzizVar = zzizVar4;
                                if (zzizVar4 == null) {
                                    ?? zzaVar = new zzhi.zza(zzmo);
                                    zzml = zzaVar;
                                    zzizVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzizVar3 = zzizVar;
                    }
                    return zzizVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final zzfx zzdo() {
            return this.zzmn;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zzc.class */
    public static final class zzc extends zzhi<zzc, zza> implements zzis {
        private static volatile zziz<zzc> zzml;
        private static final zzc zzms = new zzc();
        private int zzmg;
        private int zzmp;
        private boolean zzmq;
        private long zzmr;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zzc$zza.class */
        public static final class zza extends zzhi.zzb<zzc, zza> implements zzis {
            private zza() {
                super(zzc.zzms);
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }
        }

        static {
            zzhi.zza(zzc.class, zzms);
        }

        private zzc() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_remote_config.zziz<com.google.android.gms.internal.firebase_remote_config.zzfi$zzc>, com.google.android.gms.internal.firebase_remote_config.zzhi$zza] */
        @Override // com.google.android.gms.internal.firebase_remote_config.zzhi
        public final Object zzb(int i, Object obj, Object obj2) {
            zziz<zzc> zzizVar;
            switch (zzfh.zzmf[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzms, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\u0004��\u0002\u0007\u0001\u0003\u0005\u0002", new Object[]{"zzmg", "zzmp", "zzmq", "zzmr"});
                case 4:
                    return zzms;
                case 5:
                    zziz<zzc> zzizVar2 = zzml;
                    zziz<zzc> zzizVar3 = zzizVar2;
                    if (zzizVar2 == null) {
                        synchronized (zzc.class) {
                            try {
                                zziz<zzc> zzizVar4 = zzml;
                                zzizVar = zzizVar4;
                                if (zzizVar4 == null) {
                                    ?? zzaVar = new zzhi.zza(zzms);
                                    zzml = zzaVar;
                                    zzizVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzizVar3 = zzizVar;
                    }
                    return zzizVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zzd.class */
    public static final class zzd extends zzhi<zzd, zza> implements zzis {
        private static volatile zziz<zzd> zzml;
        private static final zzd zzmv = new zzd();
        private int zzmg;
        private String zzmt = "";
        private zzhn<zzb> zzmu = zzgt();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zzd$zza.class */
        public static final class zza extends zzhi.zzb<zzd, zza> implements zzis {
            private zza() {
                super(zzd.zzmv);
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }
        }

        static {
            zzhi.zza(zzd.class, zzmv);
        }

        private zzd() {
        }

        public final String getNamespace() {
            return this.zzmt;
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_remote_config.zziz<com.google.android.gms.internal.firebase_remote_config.zzfi$zzd>, com.google.android.gms.internal.firebase_remote_config.zzhi$zza] */
        @Override // com.google.android.gms.internal.firebase_remote_config.zzhi
        public final Object zzb(int i, Object obj, Object obj2) {
            zziz<zzd> zzizVar;
            switch (zzfh.zzmf[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzmv, "\u0001\u0002��\u0001\u0001\u0002\u0002��\u0001��\u0001\b��\u0002\u001b", new Object[]{"zzmg", "zzmt", "zzmu", zzb.class});
                case 4:
                    return zzmv;
                case 5:
                    zziz<zzd> zzizVar2 = zzml;
                    zziz<zzd> zzizVar3 = zzizVar2;
                    if (zzizVar2 == null) {
                        synchronized (zzd.class) {
                            try {
                                zziz<zzd> zzizVar4 = zzml;
                                zzizVar = zzizVar4;
                                if (zzizVar4 == null) {
                                    ?? zzaVar = new zzhi.zza(zzmv);
                                    zzml = zzaVar;
                                    zzizVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzizVar3 = zzizVar;
                    }
                    return zzizVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final List<zzb> zzdr() {
            return this.zzmu;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zze.class */
    public static final class zze extends zzhi<zze, zza> implements zzis {
        private static volatile zziz<zze> zzml;
        private static final zze zznb = new zze();
        private int zzmg;
        private zza zzmw;
        private zza zzmx;
        private zza zzmy;
        private zzc zzmz;
        private zzhn<zzf> zzna = zzgt();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zze$zza.class */
        public static final class zza extends zzhi.zzb<zze, zza> implements zzis {
            private zza() {
                super(zze.zznb);
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }
        }

        static {
            zzhi.zza(zze.class, zznb);
        }

        private zze() {
        }

        public static zze zzb(InputStream inputStream) {
            return (zze) zzhi.zza(zznb, inputStream);
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_remote_config.zziz<com.google.android.gms.internal.firebase_remote_config.zzfi$zze>, com.google.android.gms.internal.firebase_remote_config.zzhi$zza] */
        @Override // com.google.android.gms.internal.firebase_remote_config.zzhi
        public final Object zzb(int i, Object obj, Object obj2) {
            zziz<zze> zzizVar;
            switch (zzfh.zzmf[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zznb, "\u0001\u0005��\u0001\u0001\u0005\u0005��\u0001��\u0001\t��\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003\u0005\u001b", new Object[]{"zzmg", "zzmw", "zzmx", "zzmy", "zzmz", "zzna", zzf.class});
                case 4:
                    return zznb;
                case 5:
                    zziz<zze> zzizVar2 = zzml;
                    zziz<zze> zzizVar3 = zzizVar2;
                    if (zzizVar2 == null) {
                        synchronized (zze.class) {
                            try {
                                zziz<zze> zzizVar4 = zzml;
                                zzizVar = zzizVar4;
                                if (zzizVar4 == null) {
                                    ?? zzaVar = new zzhi.zza(zznb);
                                    zzml = zzaVar;
                                    zzizVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzizVar3 = zzizVar;
                    }
                    return zzizVar3 == 1 ? 1 : 0;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final zza zzdt() {
            zza zzaVar = this.zzmw;
            zza zzaVar2 = zzaVar;
            if (zzaVar == null) {
                zzaVar2 = zza.zzdm();
            }
            return zzaVar2;
        }

        public final zza zzdu() {
            zza zzaVar = this.zzmx;
            zza zzaVar2 = zzaVar;
            if (zzaVar == null) {
                zzaVar2 = zza.zzdm();
            }
            return zzaVar2;
        }

        public final zza zzdv() {
            zza zzaVar = this.zzmy;
            zza zzaVar2 = zzaVar;
            if (zzaVar == null) {
                zzaVar2 = zza.zzdm();
            }
            return zzaVar2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zzf.class */
    public static final class zzf extends zzhi<zzf, zza> implements zzis {
        private static volatile zziz<zzf> zzml;
        private static final zzf zzne = new zzf();
        private int zzmg;
        private String zzmt = "";
        private int zznc;
        private long zznd;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfi$zzf$zza.class */
        public static final class zza extends zzhi.zzb<zzf, zza> implements zzis {
            private zza() {
                super(zzf.zzne);
            }

            /* synthetic */ zza(zzfh zzfhVar) {
                this();
            }
        }

        static {
            zzhi.zza(zzf.class, zzne);
        }

        private zzf() {
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.firebase_remote_config.zzhi$zza, com.google.android.gms.internal.firebase_remote_config.zziz<com.google.android.gms.internal.firebase_remote_config.zzfi$zzf>] */
        @Override // com.google.android.gms.internal.firebase_remote_config.zzhi
        public final Object zzb(int i, Object obj, Object obj2) {
            zziz<zzf> zzizVar;
            switch (zzfh.zzmf[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzne, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\u0004��\u0002\u0005\u0001\u0003\b\u0002", new Object[]{"zzmg", "zznc", "zznd", "zzmt"});
                case 4:
                    return zzne;
                case 5:
                    zziz<zzf> zzizVar2 = zzml;
                    zziz<zzf> zzizVar3 = zzizVar2;
                    if (zzizVar2 == null) {
                        synchronized (zzf.class) {
                            try {
                                zziz<zzf> zzizVar4 = zzml;
                                zzizVar = zzizVar4;
                                if (zzizVar4 == null) {
                                    ?? zzaVar = new zzhi.zza(zzne);
                                    zzml = zzaVar;
                                    zzizVar = zzaVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzizVar3 = zzizVar;
                    }
                    return zzizVar3 == 1 ? 1 : 0;
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
