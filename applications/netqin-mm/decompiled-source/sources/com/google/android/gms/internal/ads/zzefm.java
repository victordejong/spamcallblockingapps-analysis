package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.r50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefm.class */
public final class zzefm extends zzejz<zzefm, zzb> implements zzell {
    public static volatile zzelw<zzefm> zzel;
    public static final zzefm zzian;
    public int zziaf;
    public zzekk<zza> zziam = zzejz.m12394l();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefm$zza.class */
    public static final class zza extends zzejz<zza, C10496zza> implements zzell {
        public static volatile zzelw<zza> zzel;
        public static final zza zziao;
        public String zzhzh = "";
        public int zzhzy;
        public int zziaj;
        public int zziak;

        /* renamed from: com.google.android.gms.internal.ads.zzefm$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefm$zza$zza.class */
        public static final class C10496zza extends zzejz.zzb<zza, C10496zza> implements zzell {
            public C10496zza() {
                super(zza.zziao);
            }

            public /* synthetic */ C10496zza(r50 r50Var) {
                this();
            }

            /* renamed from: a */
            public final C10496zza m12644a(int i) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m12647b(i);
                return this;
            }

            /* renamed from: a */
            public final C10496zza m12643a(zzefc zzefcVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m12654a(zzefcVar);
                return this;
            }

            /* renamed from: a */
            public final C10496zza m12642a(zzefv zzefvVar) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m12649a(zzefvVar);
                return this;
            }

            /* renamed from: a */
            public final C10496zza m12641a(String str) {
                if (this.f28073c) {
                    m12381m();
                    this.f28073c = false;
                }
                ((zza) this.f28072b).m12648a(str);
                return this;
            }
        }

        static {
            zza zzaVar = new zza();
            zziao = zzaVar;
            zzejz.m12401a(zza.class, zzaVar);
        }

        /* renamed from: m */
        public static C10496zza m12646m() {
            return zziao.m12399b();
        }

        @Override // com.google.android.gms.internal.ads.zzejz
        /* renamed from: a */
        public final Object mo11212a(int i, Object obj, Object obj2) {
            switch (r50.f14873a[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C10496zza(null);
                case 3:
                    return zzejz.m12403a(zziao, "��\u0004����\u0001\u0004\u0004������\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzhzh", "zziaj", "zziak", "zzhzy"});
                case 4:
                    return zziao;
                case 5:
                    zzelw<zza> zzelwVar = zzel;
                    zzelw<zza> zzelwVar2 = zzelwVar;
                    if (zzelwVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzelw<zza> zzelwVar3 = zzel;
                                zzelwVar2 = zzelwVar3;
                                if (zzelwVar3 == null) {
                                    zzelwVar2 = new zzejz.zza<>(zziao);
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
        public final void m12654a(zzefc zzefcVar) {
            this.zziaj = zzefcVar.zzv();
        }

        /* renamed from: a */
        public final void m12649a(zzefv zzefvVar) {
            this.zzhzy = zzefvVar.zzv();
        }

        /* renamed from: a */
        public final void m12648a(String str) {
            str.getClass();
            this.zzhzh = str;
        }

        /* renamed from: b */
        public final void m12647b(int i) {
            this.zziak = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefm$zzb.class */
    public static final class zzb extends zzejz.zzb<zzefm, zzb> implements zzell {
        public zzb() {
            super(zzefm.zzian);
        }

        public /* synthetic */ zzb(r50 r50Var) {
            this();
        }

        /* renamed from: a */
        public final zzb m12640a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzefm) this.f28072b).m12657b(i);
            return this;
        }

        /* renamed from: a */
        public final zzb m12639a(zza zzaVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzefm) this.f28072b).m12660a(zzaVar);
            return this;
        }
    }

    static {
        zzefm zzefmVar = new zzefm();
        zzian = zzefmVar;
        zzejz.m12401a(zzefm.class, zzefmVar);
    }

    /* renamed from: m */
    public static zzb m12656m() {
        return zzian.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (r50.f14873a[i - 1]) {
            case 1:
                return new zzefm();
            case 2:
                return new zzb(null);
            case 3:
                return zzejz.m12403a(zzian, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zziaf", "zziam", zza.class});
            case 4:
                return zzian;
            case 5:
                zzelw<zzefm> zzelwVar = zzel;
                zzelw<zzefm> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzefm.class) {
                        try {
                            zzelw<zzefm> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzian);
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
    public final void m12660a(zza zzaVar) {
        zzaVar.getClass();
        zzekk<zza> zzekkVar = this.zziam;
        if (!zzekkVar.mo12360w()) {
            this.zziam = zzejz.m12404a(zzekkVar);
        }
        this.zziam.add(zzaVar);
    }

    /* renamed from: b */
    public final void m12657b(int i) {
        this.zziaf = i;
    }
}
