package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.t50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefq.class */
public final class zzefq extends zzejz<zzefq, zza> implements zzell {
    public static volatile zzelw<zzefq> zzel;
    public static final zzefq zzias;
    public String zziar = "";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefq$zza.class */
    public static final class zza extends zzejz.zzb<zzefq, zza> implements zzell {
        public zza() {
            super(zzefq.zzias);
        }

        public /* synthetic */ zza(t50 t50Var) {
            this();
        }
    }

    static {
        zzefq zzefqVar = new zzefq();
        zzias = zzefqVar;
        zzejz.m12401a(zzefq.class, zzefqVar);
    }

    /* renamed from: a */
    public static zzefq m12627a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzefq) zzejz.m12411a(zzias, zzeipVar, zzejmVar);
    }

    /* renamed from: n */
    public static zzefq m12625n() {
        return zzias;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (t50.f15347a[i - 1]) {
            case 1:
                return new zzefq();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzias, "��\u0001����\u0001\u0001\u0001������\u0001Ȉ", new Object[]{"zziar"});
            case 4:
                return zzias;
            case 5:
                zzelw<zzefq> zzelwVar = zzel;
                zzelw<zzefq> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzefq.class) {
                        try {
                            zzelw<zzefq> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzias);
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
    public final String m12626m() {
        return this.zziar;
    }
}
