package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegl.class */
public final class zzegl extends zzelb<zzegl, zza> implements zzemq {
    private static volatile zzemx<zzegl> zzek;
    private static final zzegl zzihs;
    private int zzihq;
    private zzell<zzb> zzihr = zzbin();

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegl$zza.class */
    public static final class zza extends zzelb.zzb<zzegl, zza> implements zzemq {
        private zza() {
            super(zzegl.zzihs);
        }

        /* synthetic */ zza(zzegm zzegmVar) {
            this();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegl$zzb.class */
    public static final class zzb extends zzelb<zzb, zza> implements zzemq {
        private static volatile zzemx<zzb> zzek;
        private static final zzb zzihw;
        private int zzihj;
        private zzegd zziht;
        private int zzihu;
        private int zzihv;

        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegl$zzb$zza.class */
        public static final class zza extends zzelb.zzb<zzb, zza> implements zzemq {
            private zza() {
                super(zzb.zzihw);
            }

            /* synthetic */ zza(zzegm zzegmVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzihw = zzbVar;
            zzelb.zza(zzb.class, zzbVar);
        }

        private zzb() {
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzegm.zzel[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zza(zzihw, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zziht", "zzihu", "zzihv", "zzihj"});
                case 4:
                    return zzihw;
                case 5:
                    zzemx<zzb> zzemxVar = zzek;
                    zzemx<zzb> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzemx<zzb> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzihw);
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

        public final zzege zzbau() {
            zzege zzfk = zzege.zzfk(this.zzihu);
            zzege zzegeVar = zzfk;
            if (zzfk == null) {
                zzegeVar = zzege.UNRECOGNIZED;
            }
            return zzegeVar;
        }

        public final zzegx zzbav() {
            zzegx zzfr = zzegx.zzfr(this.zzihj);
            zzegx zzegxVar = zzfr;
            if (zzfr == null) {
                zzegxVar = zzegx.UNRECOGNIZED;
            }
            return zzegxVar;
        }

        public final boolean zzbeo() {
            return this.zziht != null;
        }

        public final zzegd zzbep() {
            zzegd zzegdVar = this.zziht;
            zzegd zzegdVar2 = zzegdVar;
            if (zzegdVar == null) {
                zzegdVar2 = zzegd.zzbeb();
            }
            return zzegdVar2;
        }

        public final int zzbeq() {
            return this.zzihv;
        }
    }

    static {
        zzegl zzeglVar = new zzegl();
        zzihs = zzeglVar;
        zzelb.zza(zzegl.class, zzeglVar);
    }

    private zzegl() {
    }

    public static zzegl zzc(byte[] bArr, zzeko zzekoVar) throws zzelo {
        return (zzegl) zzelb.zza(zzihs, bArr, zzekoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegm.zzel[i - 1]) {
            case 1:
                return new zzegl();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzihs, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzihq", "zzihr", zzb.class});
            case 4:
                return zzihs;
            case 5:
                zzemx<zzegl> zzemxVar = zzek;
                zzemx<zzegl> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzegl.class) {
                        try {
                            zzemx<zzegl> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzihs);
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

    public final int zzbek() {
        return this.zzihq;
    }

    public final List<zzb> zzbel() {
        return this.zzihr;
    }

    public final int zzbem() {
        return this.zzihr.size();
    }
}
