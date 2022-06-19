package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbw.class */
public final class zzbw {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbw$zza.class */
    public static final class zza extends zzelb<zza, zzb> implements zzemq {
        private static final zza zzej;
        private static volatile zzemx<zza> zzek;
        private int zzdv;
        private long zzdx;
        private long zzeb;
        private long zzec;
        private long zzee;
        private int zzei;
        private String zzdw = "";
        private String zzdy = "";
        private String zzdz = "";
        private String zzea = "";
        private String zzed = "";
        private String zzef = "";
        private String zzeg = "";
        private zzell<C2599zza> zzeh = zzbin();

        /* renamed from: com.google.android.gms.internal.ads.zzbw$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbw$zza$zza.class */
        public static final class C2599zza extends zzelb<C2599zza, C2600zza> implements zzemq {
            private static volatile zzemx<C2599zza> zzek;
            private static final C2599zza zzeo;
            private int zzdv;
            private String zzem = "";
            private String zzen = "";

            /* renamed from: com.google.android.gms.internal.ads.zzbw$zza$zza$zza */
            /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbw$zza$zza$zza.class */
            public static final class C2600zza extends zzelb.zzb<C2599zza, C2600zza> implements zzemq {
                private C2600zza() {
                    super(C2599zza.zzeo);
                }

                /* synthetic */ C2600zza(zzbx zzbxVar) {
                    this();
                }
            }

            static {
                C2599zza c2599zza = new C2599zza();
                zzeo = c2599zza;
                zzelb.zza(C2599zza.class, c2599zza);
            }

            private C2599zza() {
            }

            @Override // com.google.android.gms.internal.ads.zzelb
            public final Object zza(int i, Object obj, Object obj2) {
                switch (zzbx.zzel[i - 1]) {
                    case 1:
                        return new C2599zza();
                    case 2:
                        return new C2600zza(null);
                    case 3:
                        return zza(zzeo, "\u0001\u0002��\u0001\u0001\u0002\u0002������\u0001ဈ��\u0002ဈ\u0001", new Object[]{"zzdv", "zzem", "zzen"});
                    case 4:
                        return zzeo;
                    case 5:
                        zzemx<C2599zza> zzemxVar = zzek;
                        zzemx<C2599zza> zzemxVar2 = zzemxVar;
                        if (zzemxVar == null) {
                            synchronized (C2599zza.class) {
                                try {
                                    zzemx<C2599zza> zzemxVar3 = zzek;
                                    zzemxVar2 = zzemxVar3;
                                    if (zzemxVar3 == null) {
                                        zzemxVar2 = new zzelb.zza<>(zzeo);
                                        zzek = zzemxVar2;
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                        return zzemxVar2;
                    case 6:
                        return (byte) 1;
                    case 7:
                        return null;
                    default:
                        throw new UnsupportedOperationException();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbw$zza$zzb.class */
        public static final class zzb extends zzelb.zzb<zza, zzb> implements zzemq {
            private zzb() {
                super(zza.zzej);
            }

            /* synthetic */ zzb(zzbx zzbxVar) {
                this();
            }

            public final zzb zzb(zzc zzcVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza(zzcVar);
                return this;
            }

            public final zzb zzd(long j) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzc(j);
                return this;
            }

            public final zzb zzo(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzj(str);
                return this;
            }

            public final zzb zzp(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzk(str);
                return this;
            }

            public final zzb zzq(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzl(str);
                return this;
            }

            public final zzb zzr(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzm(str);
                return this;
            }

            public final zzb zzs(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzn(str);
                return this;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbw$zza$zzc.class */
        public enum zzc implements zzelg {
            UNKNOWN(0),
            ENABLED(1),
            DISABLED(2);
            
            private static final zzelf<zzc> zzes = new zzbz();
            private final int value;

            zzc(int i) {
                this.value = i;
            }

            public static zzc zzh(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return ENABLED;
                    }
                    if (i == 2) {
                        return DISABLED;
                    }
                    return null;
                }
                return UNKNOWN;
            }

            public static zzeli zzw() {
                return zzby.zzeu;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return SimpleComparison.LESS_THAN_OPERATION + getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
            }

            @Override // com.google.android.gms.internal.ads.zzelg
            public final int zzv() {
                return this.value;
            }
        }

        static {
            zza zzaVar = new zza();
            zzej = zzaVar;
            zzelb.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        public final void zza(zzc zzcVar) {
            this.zzei = zzcVar.zzv();
            this.zzdv |= 2048;
        }

        public final void zzc(long j) {
            this.zzdv |= 2;
            this.zzdx = j;
        }

        public final void zzj(String str) {
            str.getClass();
            this.zzdv |= 1;
            this.zzdw = str;
        }

        public final void zzk(String str) {
            str.getClass();
            this.zzdv |= 4;
            this.zzdy = str;
        }

        public final void zzl(String str) {
            str.getClass();
            this.zzdv |= 8;
            this.zzdz = str;
        }

        public final void zzm(String str) {
            str.getClass();
            this.zzdv |= 16;
            this.zzea = str;
        }

        public final void zzn(String str) {
            str.getClass();
            this.zzdv |= 1024;
            this.zzeg = str;
        }

        public static zzb zzs() {
            return zzej.zzbii();
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzbx.zzel[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new zzb(null);
                case 3:
                    return zza(zzej, "\u0001\r��\u0001\u0001\r\r��\u0001��\u0001ဈ��\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\rဌ\u000b", new Object[]{"zzdv", "zzdw", "zzdx", "zzdy", "zzdz", "zzea", "zzeb", "zzec", "zzed", "zzee", "zzef", "zzeg", "zzeh", C2599zza.class, "zzei", zzc.zzw()});
                case 4:
                    return zzej;
                case 5:
                    zzemx<zza> zzemxVar = zzek;
                    zzemx<zza> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzemx<zza> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzej);
                                    zzek = zzemxVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzemxVar2;
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
