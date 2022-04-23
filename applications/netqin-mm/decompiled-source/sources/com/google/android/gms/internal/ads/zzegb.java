package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.z50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegb.class */
public final class zzegb extends zzejz<zzegb, zza> implements zzell {
    public static volatile zzelw<zzegb> zzel;
    public static final zzegb zzibj;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegb$zza.class */
    public static final class zza extends zzejz.zzb<zzegb, zza> implements zzell {
        public zza() {
            super(zzegb.zzibj);
        }

        public /* synthetic */ zza(z50 z50Var) {
            this();
        }
    }

    static {
        zzegb zzegbVar = new zzegb();
        zzibj = zzegbVar;
        zzejz.m12401a(zzegb.class, zzegbVar);
    }

    /* renamed from: a */
    public static zzegb m12585a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzegb) zzejz.m12411a(zzibj, zzeipVar, zzejmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (z50.f16257a[i - 1]) {
            case 1:
                return new zzegb();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzibj, "����", (Object[]) null);
            case 4:
                return zzibj;
            case 5:
                zzelw<zzegb> zzelwVar = zzel;
                zzelw<zzegb> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzegb.class) {
                        try {
                            zzelw<zzegb> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzibj);
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
}
