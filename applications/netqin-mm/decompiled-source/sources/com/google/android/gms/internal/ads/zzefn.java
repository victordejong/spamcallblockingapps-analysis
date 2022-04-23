package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.s50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefn.class */
public final class zzefn extends zzejz<zzefn, zza> implements zzell {
    public static volatile zzelw<zzefn> zzel;
    public static final zzefn zziaq;
    public int zzhwq;
    public zzefq zziap;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefn$zza.class */
    public static final class zza extends zzejz.zzb<zzefn, zza> implements zzell {
        public zza() {
            super(zzefn.zziaq);
        }

        public /* synthetic */ zza(s50 s50Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12629a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzefn) this.f28072b).m12634b(0);
            return this;
        }

        /* renamed from: a */
        public final zza m12628a(zzefq zzefqVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzefn) this.f28072b).m12636a(zzefqVar);
            return this;
        }
    }

    static {
        zzefn zzefnVar = new zzefn();
        zziaq = zzefnVar;
        zzejz.m12401a(zzefn.class, zzefnVar);
    }

    /* renamed from: a */
    public static zzefn m12635a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzefn) zzejz.m12411a(zziaq, zzeipVar, zzejmVar);
    }

    /* renamed from: o */
    public static zza m12631o() {
        return zziaq.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (s50.f15072a[i - 1]) {
            case 1:
                return new zzefn();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zziaq, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzhwq", "zziap"});
            case 4:
                return zziaq;
            case 5:
                zzelw<zzefn> zzelwVar = zzel;
                zzelw<zzefn> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzefn.class) {
                        try {
                            zzelw<zzefn> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zziaq);
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
    public final void m12636a(zzefq zzefqVar) {
        zzefqVar.getClass();
        this.zziap = zzefqVar;
    }

    /* renamed from: b */
    public final void m12634b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: m */
    public final int m12633m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzefq m12632n() {
        zzefq zzefqVar = this.zziap;
        zzefq zzefqVar2 = zzefqVar;
        if (zzefqVar == null) {
            zzefqVar2 = zzefq.m12625n();
        }
        return zzefqVar2;
    }
}
