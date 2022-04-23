package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.c50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeei.class */
public final class zzeei extends zzejz<zzeei, zza> implements zzell {
    public static volatile zzelw<zzeei> zzel;
    public static final zzeei zzhye;
    public zzeep zzhyb;
    public zzeed zzhyc;
    public int zzhyd;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeei$zza.class */
    public static final class zza extends zzejz.zzb<zzeei, zza> implements zzell {
        public zza() {
            super(zzeei.zzhye);
        }

        public /* synthetic */ zza(c50 c50Var) {
            this();
        }
    }

    static {
        zzeei zzeeiVar = new zzeei();
        zzhye = zzeeiVar;
        zzejz.m12401a(zzeei.class, zzeeiVar);
    }

    /* renamed from: p */
    public static zzeei m12763p() {
        return zzhye;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (c50.f12524a[i - 1]) {
            case 1:
                return new zzeei();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhye, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\t\u0003\f", new Object[]{"zzhyb", "zzhyc", "zzhyd"});
            case 4:
                return zzhye;
            case 5:
                zzelw<zzeei> zzelwVar = zzel;
                zzelw<zzeei> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzeei.class) {
                        try {
                            zzelw<zzeei> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhye);
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
    public final zzeep m12766m() {
        zzeep zzeepVar = this.zzhyb;
        zzeep zzeepVar2 = zzeepVar;
        if (zzeepVar == null) {
            zzeepVar2 = zzeep.m12723p();
        }
        return zzeepVar2;
    }

    /* renamed from: n */
    public final zzeed m12765n() {
        zzeed zzeedVar = this.zzhyc;
        zzeed zzeedVar2 = zzeedVar;
        if (zzeedVar == null) {
            zzeedVar2 = zzeed.m12771n();
        }
        return zzeedVar2;
    }

    /* renamed from: o */
    public final zzeec m12764o() {
        zzeec zzey = zzeec.zzey(this.zzhyd);
        zzeec zzeecVar = zzey;
        if (zzey == null) {
            zzeecVar = zzeec.UNRECOGNIZED;
        }
        return zzeecVar;
    }
}
