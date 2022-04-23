package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.l50;
import p131c.p161d.p170b.p224d.p252g.p253a.m50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefb.class */
public final class zzefb extends zzejz<zzefb, zzb> implements zzell {
    public static volatile zzelw<zzefb> zzel;
    public static final zzefb zzhzk;
    public String zzhzh = "";
    public zzeip zzhzi = zzeip.zzier;
    public int zzhzj;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefb$zza.class */
    public enum zza implements zzeke {
        UNKNOWN_KEYMATERIAL(0),
        SYMMETRIC(1),
        ASYMMETRIC_PRIVATE(2),
        ASYMMETRIC_PUBLIC(3),
        REMOTE(4),
        UNRECOGNIZED(-1);
        
        public static final zzekd<zza> zzes = new m50();
        public final int value;

        zza(int i) {
            this.value = i;
        }

        public static zza zzfe(int i) {
            if (i == 0) {
                return UNKNOWN_KEYMATERIAL;
            }
            if (i == 1) {
                return SYMMETRIC;
            }
            if (i == 2) {
                return ASYMMETRIC_PRIVATE;
            }
            if (i == 3) {
                return ASYMMETRIC_PUBLIC;
            }
            if (i != 4) {
                return null;
            }
            return REMOTE;
        }

        @Override // java.lang.Enum
        public final String toString() {
            StringBuilder sb = new StringBuilder("<");
            sb.append(zza.class.getName());
            sb.append('@');
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            if (this != UNRECOGNIZED) {
                sb.append(" number=");
                sb.append(zzv());
            }
            sb.append(" name=");
            sb.append(name());
            sb.append('>');
            return sb.toString();
        }

        @Override // com.google.android.gms.internal.ads.zzeke
        public final int zzv() {
            if (this != UNRECOGNIZED) {
                return this.value;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefb$zzb.class */
    public static final class zzb extends zzejz.zzb<zzefb, zzb> implements zzell {
        public zzb() {
            super(zzefb.zzhzk);
        }

        public /* synthetic */ zzb(l50 l50Var) {
            this();
        }

        /* renamed from: a */
        public final zzb m12684a(zza zzaVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzefb) this.f28072b).m12696a(zzaVar);
            return this;
        }

        /* renamed from: a */
        public final zzb m12683a(zzeip zzeipVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzefb) this.f28072b).m12692a(zzeipVar);
            return this;
        }

        /* renamed from: a */
        public final zzb m12682a(String str) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzefb) this.f28072b).m12691a(str);
            return this;
        }
    }

    static {
        zzefb zzefbVar = new zzefb();
        zzhzk = zzefbVar;
        zzejz.m12401a(zzefb.class, zzefbVar);
    }

    /* renamed from: p */
    public static zzb m12687p() {
        return zzhzk.m12399b();
    }

    /* renamed from: q */
    public static zzefb m12686q() {
        return zzhzk;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (l50.f13932a[i - 1]) {
            case 1:
                return new zzefb();
            case 2:
                return new zzb(null);
            case 3:
                return zzejz.m12403a(zzhzk, "��\u0003����\u0001\u0003\u0003������\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzhzh", "zzhzi", "zzhzj"});
            case 4:
                return zzhzk;
            case 5:
                zzelw<zzefb> zzelwVar = zzel;
                zzelw<zzefb> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzefb.class) {
                        try {
                            zzelw<zzefb> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhzk);
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

    /* renamed from: a */
    public final void m12696a(zza zzaVar) {
        this.zzhzj = zzaVar.zzv();
    }

    /* renamed from: a */
    public final void m12692a(zzeip zzeipVar) {
        zzeipVar.getClass();
        this.zzhzi = zzeipVar;
    }

    /* renamed from: a */
    public final void m12691a(String str) {
        str.getClass();
        this.zzhzh = str;
    }

    /* renamed from: m */
    public final String m12690m() {
        return this.zzhzh;
    }

    /* renamed from: n */
    public final zzeip m12689n() {
        return this.zzhzi;
    }

    /* renamed from: o */
    public final zza m12688o() {
        zza zzfe = zza.zzfe(this.zzhzj);
        zza zzaVar = zzfe;
        if (zzfe == null) {
            zzaVar = zza.UNRECOGNIZED;
        }
        return zzaVar;
    }
}
