package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.m40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzede.class */
public final class zzede extends zzejz<zzede, zza> implements zzell {
    public static volatile zzelw<zzede> zzel;
    public static final zzede zzhxa;
    public int zzhwq;
    public zzedi zzhwy;
    public zzeet zzhwz;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzede$zza.class */
    public static final class zza extends zzejz.zzb<zzede, zza> implements zzell {
        public zza() {
            super(zzede.zzhxa);
        }

        public /* synthetic */ zza(m40 m40Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12852a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzede) this.f28072b).m12858b(i);
            return this;
        }

        /* renamed from: a */
        public final zza m12851a(zzedi zzediVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzede) this.f28072b).m12861a(zzediVar);
            return this;
        }

        /* renamed from: a */
        public final zza m12850a(zzeet zzeetVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzede) this.f28072b).m12860a(zzeetVar);
            return this;
        }
    }

    static {
        zzede zzedeVar = new zzede();
        zzhxa = zzedeVar;
        zzejz.m12401a(zzede.class, zzedeVar);
    }

    /* renamed from: a */
    public static zzede m12859a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzede) zzejz.m12411a(zzhxa, zzeipVar, zzejmVar);
    }

    /* renamed from: p */
    public static zza m12854p() {
        return zzhxa.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (m40.f14016a[i - 1]) {
            case 1:
                return new zzede();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxa, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\t", new Object[]{"zzhwq", "zzhwy", "zzhwz"});
            case 4:
                return zzhxa;
            case 5:
                zzelw<zzede> zzelwVar = zzel;
                zzelw<zzede> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzede.class) {
                        try {
                            zzelw<zzede> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxa);
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
    public final void m12861a(zzedi zzediVar) {
        zzediVar.getClass();
        this.zzhwy = zzediVar;
    }

    /* renamed from: a */
    public final void m12860a(zzeet zzeetVar) {
        zzeetVar.getClass();
        this.zzhwz = zzeetVar;
    }

    /* renamed from: b */
    public final void m12858b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: m */
    public final int m12857m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzedi m12856n() {
        zzedi zzediVar = this.zzhwy;
        zzedi zzediVar2 = zzediVar;
        if (zzediVar == null) {
            zzediVar2 = zzedi.m12834q();
        }
        return zzediVar2;
    }

    /* renamed from: o */
    public final zzeet m12855o() {
        zzeet zzeetVar = this.zzhwz;
        zzeet zzeetVar2 = zzeetVar;
        if (zzeetVar == null) {
            zzeetVar2 = zzeet.m12710q();
        }
        return zzeetVar2;
    }
}
