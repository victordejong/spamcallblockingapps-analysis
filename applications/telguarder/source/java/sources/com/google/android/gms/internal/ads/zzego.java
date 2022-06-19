package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzego.class */
public final class zzego extends zzelb<zzego, zzb> implements zzemq {
    private static volatile zzemx<zzego> zzek;
    private static final zzego zzihy;
    private int zzihq;
    private zzell<zza> zzihx = zzbin();

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzego$zza.class */
    public static final class zza extends zzelb<zza, C2605zza> implements zzemq {
        private static volatile zzemx<zza> zzek;
        private static final zza zzihz;
        private String zzigs = "";
        private int zzihj;
        private int zzihu;
        private int zzihv;

        /* renamed from: com.google.android.gms.internal.ads.zzego$zza$zza */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzego$zza$zza.class */
        public static final class C2605zza extends zzelb.zzb<zza, C2605zza> implements zzemq {
            private C2605zza() {
                super(zza.zzihz);
            }

            /* synthetic */ C2605zza(zzegn zzegnVar) {
                this();
            }

            public final C2605zza zzb(zzege zzegeVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza(zzegeVar);
                return this;
            }

            public final C2605zza zzb(zzegx zzegxVar) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zza(zzegxVar);
                return this;
            }

            public final C2605zza zzfo(int i) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzfm(i);
                return this;
            }

            public final C2605zza zzhv(String str) {
                if (this.zziqq) {
                    zzbis();
                    this.zziqq = false;
                }
                ((zza) this.zziqp).zzht(str);
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zzihz = zzaVar;
            zzelb.zza(zza.class, zzaVar);
        }

        private zza() {
        }

        public final void zza(zzege zzegeVar) {
            this.zzihu = zzegeVar.zzv();
        }

        public final void zza(zzegx zzegxVar) {
            this.zzihj = zzegxVar.zzv();
        }

        public static C2605zza zzbeu() {
            return zzihz.zzbii();
        }

        public final void zzfm(int i) {
            this.zzihv = i;
        }

        public final void zzht(String str) {
            str.getClass();
            this.zzigs = str;
        }

        @Override // com.google.android.gms.internal.ads.zzelb
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzegn.zzel[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C2605zza(null);
                case 3:
                    return zza(zzihz, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzigs", "zzihu", "zzihv", "zzihj"});
                case 4:
                    return zzihz;
                case 5:
                    zzemx<zza> zzemxVar = zzek;
                    zzemx<zza> zzemxVar2 = zzemxVar;
                    if (zzemxVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzemx<zza> zzemxVar3 = zzek;
                                zzemxVar2 = zzemxVar3;
                                if (zzemxVar3 == null) {
                                    zzemxVar2 = new zzelb.zza<>(zzihz);
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

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzego$zzb.class */
    public static final class zzb extends zzelb.zzb<zzego, zzb> implements zzemq {
        private zzb() {
            super(zzego.zzihy);
        }

        /* synthetic */ zzb(zzegn zzegnVar) {
            this();
        }

        public final zzb zzb(zza zzaVar) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzego) this.zziqp).zza(zzaVar);
            return this;
        }

        public final zzb zzfn(int i) {
            if (this.zziqq) {
                zzbis();
                this.zziqq = false;
            }
            ((zzego) this.zziqp).zzfl(i);
            return this;
        }
    }

    static {
        zzego zzegoVar = new zzego();
        zzihy = zzegoVar;
        zzelb.zza(zzego.class, zzegoVar);
    }

    private zzego() {
    }

    public final void zza(zza zzaVar) {
        zzaVar.getClass();
        zzell<zza> zzellVar = this.zzihx;
        if (!zzellVar.zzbge()) {
            this.zzihx = zzelb.zza(zzellVar);
        }
        this.zzihx.add(zzaVar);
    }

    public static zzb zzbes() {
        return zzihy.zzbii();
    }

    public final void zzfl(int i) {
        this.zzihq = i;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzegn.zzel[i - 1]) {
            case 1:
                return new zzego();
            case 2:
                return new zzb(null);
            case 3:
                return zza(zzihy, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzihq", "zzihx", zza.class});
            case 4:
                return zzihy;
            case 5:
                zzemx<zzego> zzemxVar = zzek;
                zzemx<zzego> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzego.class) {
                        try {
                            zzemx<zzego> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzihy);
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
