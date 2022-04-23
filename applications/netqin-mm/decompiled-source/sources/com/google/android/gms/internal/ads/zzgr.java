package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.qb0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgr.class */
public final class zzgr extends zzejz<zzgr, zza> implements zzell {
    public static final zzgr zzach;
    public static volatile zzelw<zzgr> zzel;
    public String zzacc = "";
    public String zzacd = "";
    public long zzace;
    public long zzacf;
    public long zzacg;
    public int zzdw;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgr$zza.class */
    public static final class zza extends zzejz.zzb<zzgr, zza> implements zzell {
        public zza() {
            super(zzgr.zzach);
        }

        public /* synthetic */ zza(qb0 qb0Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12091a(long j) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzgr) this.f28072b).m12111a(j);
            return this;
        }

        /* renamed from: a */
        public final zza m12090a(String str) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzgr) this.f28072b).m12106a(str);
            return this;
        }

        /* renamed from: b */
        public final zza m12089b(long j) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzgr) this.f28072b).m12105b(j);
            return this;
        }

        /* renamed from: b */
        public final zza m12088b(String str) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzgr) this.f28072b).m12102b(str);
            return this;
        }

        /* renamed from: c */
        public final zza m12087c(long j) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzgr) this.f28072b).m12101c(j);
            return this;
        }
    }

    static {
        zzgr zzgrVar = new zzgr();
        zzach = zzgrVar;
        zzejz.m12401a(zzgr.class, zzgrVar);
    }

    /* renamed from: a */
    public static zzgr m12110a(zzeip zzeipVar) throws zzekj {
        return (zzgr) zzejz.m12412a(zzach, zzeipVar);
    }

    /* renamed from: a */
    public static zzgr m12109a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzgr) zzejz.m12411a(zzach, zzeipVar, zzejmVar);
    }

    /* renamed from: r */
    public static zza m12094r() {
        return zzach.m12399b();
    }

    /* renamed from: s */
    public static zzgr m12093s() {
        return zzach;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (qb0.f14791a[i - 1]) {
            case 1:
                return new zzgr();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzach, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဈ��\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzdw", "zzacc", "zzacd", "zzace", "zzacf", "zzacg"});
            case 4:
                return zzach;
            case 5:
                zzelw<zzgr> zzelwVar = zzel;
                zzelw<zzgr> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzgr.class) {
                        try {
                            zzelw<zzgr> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzach);
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
    public final void m12111a(long j) {
        this.zzdw |= 4;
        this.zzace = j;
    }

    /* renamed from: a */
    public final void m12106a(String str) {
        str.getClass();
        this.zzdw |= 1;
        this.zzacc = str;
    }

    /* renamed from: b */
    public final void m12105b(long j) {
        this.zzdw |= 8;
        this.zzacf = j;
    }

    /* renamed from: b */
    public final void m12102b(String str) {
        str.getClass();
        this.zzdw |= 2;
        this.zzacd = str;
    }

    /* renamed from: c */
    public final void m12101c(long j) {
        this.zzdw |= 16;
        this.zzacg = j;
    }

    /* renamed from: m */
    public final String m12099m() {
        return this.zzacc;
    }

    /* renamed from: n */
    public final String m12098n() {
        return this.zzacd;
    }

    /* renamed from: o */
    public final long m12097o() {
        return this.zzace;
    }

    /* renamed from: p */
    public final long m12096p() {
        return this.zzacf;
    }

    /* renamed from: q */
    public final long m12095q() {
        return this.zzacg;
    }
}
