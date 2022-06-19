package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgt.class */
public final class zzgt {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgt$zza.class */
    public static final class zza extends zzcg<zza, C3153zza> implements zzdq {
        private static volatile zzdz<zza> zzbg;
        private static final zza zzbil = new zza();

        /* renamed from: com.google.android.gms.internal.clearcut.zzgt$zza$zza */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgt$zza$zza.class */
        public static final class C3153zza extends zzcg.zza<zza, C3153zza> implements zzdq {
            private C3153zza() {
                super(zza.zzbil);
            }

            /* synthetic */ C3153zza(zzgu zzguVar) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgt$zza$zzb.class */
        public enum zzb implements zzcj {
            NO_RESTRICTION(0),
            SIDEWINDER_DEVICE(1),
            LATCHSKY_DEVICE(2);
            
            private static final zzck<zzb> zzbq = new zzgv();
            private final int value;

            zzb(int i) {
                this.value = i;
            }

            public static zzb zzbe(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return SIDEWINDER_DEVICE;
                    }
                    if (i == 2) {
                        return LATCHSKY_DEVICE;
                    }
                    return null;
                }
                return NO_RESTRICTION;
            }

            public static zzck<zzb> zzd() {
                return zzbq;
            }

            @Override // com.google.android.gms.internal.clearcut.zzcj
            public final int zzc() {
                return this.value;
            }
        }

        static {
            zzcg.zza(zza.class, zzbil);
        }

        private zza() {
        }

        /* JADX WARN: Type inference failed for: r6v6, types: [com.google.android.gms.internal.clearcut.zzcg$zzb, com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgt$zza>] */
        @Override // com.google.android.gms.internal.clearcut.zzcg
        public final Object zza(int i, Object obj, Object obj2) {
            zzdz<zza> zzdzVar;
            switch (zzgu.zzba[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3153zza(null);
                case 3:
                    return zza(zzbil, "\u0001��", (Object[]) null);
                case 4:
                    return zzbil;
                case 5:
                    zzdz<zza> zzdzVar2 = zzbg;
                    zzdz<zza> zzdzVar3 = zzdzVar2;
                    if (zzdzVar2 == null) {
                        synchronized (zza.class) {
                            try {
                                zzdz<zza> zzdzVar4 = zzbg;
                                zzdzVar = zzdzVar4;
                                if (zzdzVar4 == null) {
                                    ?? zzbVar = new zzcg.zzb(zzbil);
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
