package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.y40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeeb.class */
public final class zzeeb extends zzejz<zzeeb, zza> implements zzell {
    public static volatile zzelw<zzeeb> zzel;
    public static final zzeeb zzhxq;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeeb$zza.class */
    public static final class zza extends zzejz.zzb<zzeeb, zza> implements zzell {
        public zza() {
            super(zzeeb.zzhxq);
        }

        public /* synthetic */ zza(y40 y40Var) {
            this();
        }
    }

    static {
        zzeeb zzeebVar = new zzeeb();
        zzhxq = zzeebVar;
        zzejz.m12401a(zzeeb.class, zzeebVar);
    }

    /* renamed from: a */
    public static zzeeb m12774a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzeeb) zzejz.m12411a(zzhxq, zzeipVar, zzejmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (y40.f16092a[i - 1]) {
            case 1:
                return new zzeeb();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhxq, "����", (Object[]) null);
            case 4:
                return zzhxq;
            case 5:
                zzelw<zzeeb> zzelwVar = zzel;
                zzelw<zzeeb> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzeeb.class) {
                        try {
                            zzelw<zzeeb> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhxq);
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
