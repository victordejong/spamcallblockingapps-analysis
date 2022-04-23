package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.l40;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedd.class */
public final class zzedd extends zzejz<zzedd, zza> implements zzell {
    public static volatile zzelw<zzedd> zzel;
    public static final zzedd zzhwx;
    public int zzhww;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedd$zza.class */
    public static final class zza extends zzejz.zzb<zzedd, zza> implements zzell {
        public zza() {
            super(zzedd.zzhwx);
        }

        public /* synthetic */ zza(l40 l40Var) {
            this();
        }
    }

    static {
        zzedd zzeddVar = new zzedd();
        zzhwx = zzeddVar;
        zzejz.m12401a(zzedd.class, zzeddVar);
    }

    /* renamed from: n */
    public static zzedd m12866n() {
        return zzhwx;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (l40.f13931a[i - 1]) {
            case 1:
                return new zzedd();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhwx, "��\u0001����\u0001\u0001\u0001������\u0001\u000b", new Object[]{"zzhww"});
            case 4:
                return zzhwx;
            case 5:
                zzelw<zzedd> zzelwVar = zzel;
                zzelw<zzedd> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzedd.class) {
                        try {
                            zzelw<zzedd> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhwx);
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
    public final int m12867m() {
        return this.zzhww;
    }
}
