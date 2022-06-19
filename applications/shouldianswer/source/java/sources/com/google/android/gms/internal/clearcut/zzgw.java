package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgw.class */
public final class zzgw {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgw$zza.class */
    public static final class zza extends zzcg<zza, C3154zza> implements zzdq {
        private static volatile zzdz<zza> zzbg;
        private static final zza zzbir = new zza();
        private zzcn<zzb> zzbiq = zzbb();

        /* renamed from: com.google.android.gms.internal.clearcut.zzgw$zza$zza */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgw$zza$zza.class */
        public static final class C3154zza extends zzcg.zza<zza, C3154zza> implements zzdq {
            private C3154zza() {
                super(zza.zzbir);
            }

            /* synthetic */ C3154zza(zzgx zzgxVar) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgw$zza$zzb.class */
        public static final class zzb extends zzcg<zzb, C3155zza> implements zzdq {
            private static volatile zzdz<zzb> zzbg;
            private static final zzb zzbiv = new zzb();
            private int zzbb;
            private String zzbis = "";
            private long zzbit;
            private long zzbiu;
            private int zzya;

            /* renamed from: com.google.android.gms.internal.clearcut.zzgw$zza$zzb$zza */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgw$zza$zzb$zza.class */
            public static final class C3155zza extends zzcg.zza<zzb, C3155zza> implements zzdq {
                private C3155zza() {
                    super(zzb.zzbiv);
                }

                /* synthetic */ C3155zza(zzgx zzgxVar) {
                    this();
                }

                public final C3155zza zzn(String str) {
                    zzbf();
                    ((zzb) this.zzjt).zzm(str);
                    return this;
                }

                public final C3155zza zzr(long j) {
                    zzbf();
                    ((zzb) this.zzjt).zzp(j);
                    return this;
                }

                public final C3155zza zzs(long j) {
                    zzbf();
                    ((zzb) this.zzjt).zzq(j);
                    return this;
                }
            }

            static {
                zzcg.zza(zzb.class, zzbiv);
            }

            private zzb() {
            }

            public static C3155zza zzfz() {
                return (C3155zza) ((zzcg.zza) zzbiv.zza(zzcg.zzg.zzkh, (Object) null, (Object) null));
            }

            public final void zzm(String str) {
                if (str != null) {
                    this.zzbb |= 2;
                    this.zzbis = str;
                    return;
                }
                throw new NullPointerException();
            }

            public final void zzp(long j) {
                this.zzbb |= 4;
                this.zzbit = j;
            }

            public final void zzq(long j) {
                this.zzbb |= 8;
                this.zzbiu = j;
            }

            public final int getEventCode() {
                return this.zzya;
            }

            /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza$zzb>, com.google.android.gms.internal.clearcut.zzcg$zzb] */
            @Override // com.google.android.gms.internal.clearcut.zzcg
            public final Object zza(int i, Object obj, Object obj2) {
                zzdz<zzb> zzdzVar;
                switch (zzgx.zzba[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new C3155zza(null);
                    case 3:
                        return zza(zzbiv, "\u0001\u0004��\u0001\u0001\u0004\u0004\u0005������\u0001\u0004��\u0002\b\u0001\u0003\u0002\u0002\u0004\u0002\u0003", new Object[]{"zzbb", "zzya", "zzbis", "zzbit", "zzbiu"});
                    case 4:
                        return zzbiv;
                    case 5:
                        zzdz<zzb> zzdzVar2 = zzbg;
                        zzdz<zzb> zzdzVar3 = zzdzVar2;
                        if (zzdzVar2 == null) {
                            synchronized (zzb.class) {
                                try {
                                    zzdz<zzb> zzdzVar4 = zzbg;
                                    zzdzVar = zzdzVar4;
                                    if (zzdzVar4 == null) {
                                        ?? zzbVar = new zzcg.zzb(zzbiv);
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

            public final boolean zzfv() {
                return (this.zzbb & 1) == 1;
            }

            public final String zzfw() {
                return this.zzbis;
            }

            public final long zzfx() {
                return this.zzbit;
            }

            public final long zzfy() {
                return this.zzbiu;
            }
        }

        static {
            zzcg.zza(zza.class, zzbir);
        }

        private zza() {
        }

        public static zza zzft() {
            return zzbir;
        }

        public static zza zzi(byte[] bArr) {
            return (zza) zzcg.zzb(zzbir, bArr);
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.clearcut.zzcg$zzb, com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza>] */
        @Override // com.google.android.gms.internal.clearcut.zzcg
        public final Object zza(int i, Object obj, Object obj2) {
            zzdz<zza> zzdzVar;
            switch (zzgx.zzba[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C3154zza(null);
                case 3:
                    return zza(zzbir, "\u0001\u0001����\u0001\u0001\u0001\u0002��\u0001��\u0001\u001b", new Object[]{"zzbiq", zzb.class});
                case 4:
                    return zzbir;
                case 5:
                    zzdz<zza> zzdzVar2 = zzbg;
                    zzdz<zza> zzdzVar3 = zzdzVar2;
                    if (zzdzVar2 == null) {
                        synchronized (zza.class) {
                            try {
                                zzdz<zza> zzdzVar4 = zzbg;
                                zzdzVar = zzdzVar4;
                                if (zzdzVar4 == null) {
                                    ?? zzbVar = new zzcg.zzb(zzbir);
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

        public final List<zzb> zzfs() {
            return this.zzbiq;
        }
    }
}
