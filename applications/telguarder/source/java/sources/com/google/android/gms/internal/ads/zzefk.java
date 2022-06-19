package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefk.class */
public final class zzefk extends zzelb<zzefk, zza> implements zzemq {
    private static volatile zzemx<zzefk> zzek;
    private static final zzefk zzifp;
    private zzefr zzifm;
    private zzeff zzifn;
    private int zzifo;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzefk$zza.class */
    public static final class zza extends zzelb.zzb<zzefk, zza> implements zzemq {
        private zza() {
            super(zzefk.zzifp);
        }

        /* synthetic */ zza(zzefl zzeflVar) {
            this();
        }
    }

    static {
        zzefk zzefkVar = new zzefk();
        zzifp = zzefkVar;
        zzelb.zza(zzefk.class, zzefkVar);
    }

    private zzefk() {
    }

    public static zzefk zzbcz() {
        return zzifp;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzefl.zzel[i - 1]) {
            case 1:
                return new zzefk();
            case 2:
                return new zza(null);
            case 3:
                return zza(zzifp, "��\u0003����\u0001\u0003\u0003������\u0001\t\u0002\t\u0003\f", new Object[]{"zzifm", "zzifn", "zzifo"});
            case 4:
                return zzifp;
            case 5:
                zzemx<zzefk> zzemxVar = zzek;
                zzemx<zzefk> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzefk.class) {
                        try {
                            zzemx<zzefk> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zzifp);
                                zzek = zzemxVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return zzemxVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final zzefr zzbcw() {
        zzefr zzefrVar = this.zzifm;
        zzefr zzefrVar2 = zzefrVar;
        if (zzefrVar == null) {
            zzefrVar2 = zzefr.zzbdm();
        }
        return zzefrVar2;
    }

    public final zzeff zzbcx() {
        zzeff zzeffVar = this.zzifn;
        zzeff zzeffVar2 = zzeffVar;
        if (zzeffVar == null) {
            zzeffVar2 = zzeff.zzbcs();
        }
        return zzeffVar2;
    }

    public final zzefe zzbcy() {
        zzefe zzfd = zzefe.zzfd(this.zzifo);
        zzefe zzefeVar = zzfd;
        if (zzfd == null) {
            zzefeVar = zzefe.UNRECOGNIZED;
        }
        return zzefeVar;
    }
}
