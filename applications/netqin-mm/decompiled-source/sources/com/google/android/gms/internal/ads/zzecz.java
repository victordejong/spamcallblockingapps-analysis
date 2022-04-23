package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.j40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecz.class */
public final class zzecz extends zzejz<zzecz, zza> implements zzell {
    public static volatile zzelw<zzecz> zzel;
    public static final zzecz zzhwt;
    public int zzhwq;
    public zzeip zzhwr = zzeip.zzier;
    public zzedd zzhws;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecz$zza.class */
    public static final class zza extends zzejz.zzb<zzecz, zza> implements zzell {
        public zza() {
            super(zzecz.zzhwt);
        }

        public /* synthetic */ zza(j40 j40Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12877a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzecz) this.f28072b).m12883b(0);
            return this;
        }

        /* renamed from: a */
        public final zza m12876a(zzedd zzeddVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzecz) this.f28072b).m12886a(zzeddVar);
            return this;
        }

        /* renamed from: a */
        public final zza m12875a(zzeip zzeipVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzecz) this.f28072b).m12885a(zzeipVar);
            return this;
        }
    }

    static {
        zzecz zzeczVar = new zzecz();
        zzhwt = zzeczVar;
        zzejz.m12401a(zzecz.class, zzeczVar);
    }

    /* renamed from: a */
    public static zzecz m12884a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzecz) zzejz.m12411a(zzhwt, zzeipVar, zzejmVar);
    }

    /* renamed from: p */
    public static zza m12879p() {
        return zzhwt.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (j40.f13583a[i - 1]) {
            case 1:
                return new zzecz();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhwt, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\n\u0003\t", new Object[]{"zzhwq", "zzhwr", "zzhws"});
            case 4:
                return zzhwt;
            case 5:
                zzelw<zzecz> zzelwVar = zzel;
                zzelw<zzecz> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzecz.class) {
                        try {
                            zzelw<zzecz> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhwt);
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
    public final void m12886a(zzedd zzeddVar) {
        zzeddVar.getClass();
        this.zzhws = zzeddVar;
    }

    /* renamed from: a */
    public final void m12885a(zzeip zzeipVar) {
        zzeipVar.getClass();
        this.zzhwr = zzeipVar;
    }

    /* renamed from: b */
    public final void m12883b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: m */
    public final int m12882m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzeip m12881n() {
        return this.zzhwr;
    }

    /* renamed from: o */
    public final zzedd m12880o() {
        zzedd zzeddVar = this.zzhws;
        zzedd zzeddVar2 = zzeddVar;
        if (zzeddVar == null) {
            zzeddVar2 = zzedd.m12866n();
        }
        return zzeddVar2;
    }
}
