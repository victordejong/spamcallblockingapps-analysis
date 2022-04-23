package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p253a.q50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefj.class */
public final class zzefj extends zzejz<zzefj, zza> implements zzell {
    public static volatile zzelw<zzefj> zzel;
    public static final zzefj zziah;
    public int zziaf;
    public zzekk<zzb> zziag = zzejz.m12394l();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefj$zza.class */
    public static final class zza extends zzejz.zzb<zzefj, zza> implements zzell {
        public zza() {
            super(zzefj.zziah);
        }

        public /* synthetic */ zza(q50 q50Var) {
            this();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefj$zzb.class */
    public static final class zzb extends zzejz<zzb, zza> implements zzell {
        public static volatile zzelw<zzb> zzel;
        public static final zzb zzial;
        public int zzhzy;
        public zzefb zziai;
        public int zziaj;
        public int zziak;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefj$zzb$zza.class */
        public static final class zza extends zzejz.zzb<zzb, zza> implements zzell {
            public zza() {
                super(zzb.zzial);
            }

            public /* synthetic */ zza(q50 q50Var) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzial = zzbVar;
            zzejz.m12401a(zzb.class, zzbVar);
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (q50.f14590a[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzejz.m12403a(zzial, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zziai", "zziaj", "zziak", "zzhzy"});
                case 4:
                    return zzial;
                case 5:
                    zzelw<zzb> zzelwVar = zzel;
                    zzelw<zzb> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zzb.class) {
                            try {
                                zzelw<zzb> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zzial);
                                    zzel = zzelwVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzelwVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* renamed from: m */
        public final zzefc m12666m() {
            zzefc zzff = zzefc.zzff(this.zziaj);
            zzefc zzefcVar = zzff;
            if (zzff == null) {
                zzefcVar = zzefc.UNRECOGNIZED;
            }
            return zzefcVar;
        }

        /* renamed from: n */
        public final zzefv m12665n() {
            zzefv zzfm = zzefv.zzfm(this.zzhzy);
            zzefv zzefvVar = zzfm;
            if (zzfm == null) {
                zzefvVar = zzefv.UNRECOGNIZED;
            }
            return zzefvVar;
        }

        /* renamed from: o */
        public final boolean m12664o() {
            return this.zziai != null;
        }

        /* renamed from: p */
        public final zzefb m12663p() {
            zzefb zzefbVar = this.zziai;
            zzefb zzefbVar2 = zzefbVar;
            if (zzefbVar == null) {
                zzefbVar2 = zzefb.m12686q();
            }
            return zzefbVar2;
        }

        /* renamed from: q */
        public final int m12662q() {
            return this.zziak;
        }
    }

    static {
        zzefj zzefjVar = new zzefj();
        zziah = zzefjVar;
        zzejz.m12401a(zzefj.class, zzefjVar);
    }

    /* renamed from: a */
    public static zzefj m12671a(byte[] bArr, zzejm zzejmVar) throws zzekj {
        return (zzefj) zzejz.m12406a(zziah, bArr, zzejmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (q50.f14590a[i - 1]) {
            case 1:
                return new zzefj();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zziah, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zziaf", "zziag", zzb.class});
            case 4:
                return zziah;
            case 5:
                zzelw<zzefj> zzelwVar = zzel;
                zzelw<zzefj> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzefj.class) {
                        try {
                            zzelw<zzefj> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zziah);
                                zzel = zzelwVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return zzelwVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: m */
    public final int m12670m() {
        return this.zziaf;
    }

    /* renamed from: n */
    public final List<zzb> m12669n() {
        return this.zziag;
    }

    /* renamed from: o */
    public final int m12668o() {
        return this.zziag.size();
    }
}
