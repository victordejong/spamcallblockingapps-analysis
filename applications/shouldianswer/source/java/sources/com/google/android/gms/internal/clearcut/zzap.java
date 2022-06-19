package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzap.class */
public final class zzap {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzap$zza.class */
    public static final class zza extends zzcg<zza, C3151zza> implements zzdq {
        private static volatile zzdz<zza> zzbg;
        private static final zza zzes = new zza();
        private int zzbb;
        private int zzel;
        private int zzem;
        private int zzen;
        private int zzeo;
        private int zzep;
        private int zzeq;
        private int zzer;

        /* renamed from: com.google.android.gms.internal.clearcut.zzap$zza$zza */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzap$zza$zza.class */
        public static final class C3151zza extends zzcg.zza<zza, C3151zza> implements zzdq {
            private C3151zza() {
                super(zza.zzes);
            }

            /* synthetic */ C3151zza(zzaq zzaqVar) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzap$zza$zzb.class */
        public enum zzb implements zzcj {
            UNKNOWN(0),
            ON(1),
            OFF(2);
            
            private static final zzck<zzb> zzbq = new zzar();
            private final int value;

            zzb(int i) {
                this.value = i;
            }

            public static zzck<zzb> zzd() {
                return zzbq;
            }

            public static zzb zze(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return ON;
                    }
                    if (i == 2) {
                        return OFF;
                    }
                    return null;
                }
                return UNKNOWN;
            }

            @Override // com.google.android.gms.internal.clearcut.zzcj
            public final int zzc() {
                return this.value;
            }
        }

        static {
            zzcg.zza(zza.class, zzes);
        }

        private zza() {
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzap$zza>, com.google.android.gms.internal.clearcut.zzcg$zzb] */
        @Override // com.google.android.gms.internal.clearcut.zzcg
        public final Object zza(int i, Object obj, Object obj2) {
            zzdz<zza> zzdzVar;
            switch (zzaq.zzba[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3151zza(null);
                case 3:
                    return zza(zzes, "\u0001\u0007��\u0001\u0001\u0007\u0007\b������\u0001\f��\u0002\f\u0001\u0003\f\u0002\u0004\f\u0003\u0005\f\u0004\u0006\f\u0005\u0007\f\u0006", new Object[]{"zzbb", "zzel", zzb.zzd(), "zzem", zzb.zzd(), "zzen", zzb.zzd(), "zzeo", zzb.zzd(), "zzep", zzb.zzd(), "zzeq", zzb.zzd(), "zzer", zzb.zzd()});
                case 4:
                    return zzes;
                case 5:
                    zzdz<zza> zzdzVar2 = zzbg;
                    zzdz<zza> zzdzVar3 = zzdzVar2;
                    if (zzdzVar2 == null) {
                        synchronized (zza.class) {
                            try {
                                zzdz<zza> zzdzVar4 = zzbg;
                                zzdzVar = zzdzVar4;
                                if (zzdzVar4 == null) {
                                    ?? zzbVar = new zzcg.zzb(zzes);
                                    zzbg = zzbVar;
                                    zzdzVar = zzbVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        zzdzVar3 = zzdzVar;
                    }
                    return zzdzVar3 == 1 ? 1 : 0;
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
