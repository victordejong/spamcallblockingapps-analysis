package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzado.class */
public final class zzado implements zzafc {
    private final List<zzab> zza;

    public zzado() {
        this(0);
    }

    public zzado(int i) {
        this.zza = zzfss.zzo();
    }

    private final zzaes zzb(zzafb zzafbVar) {
        return new zzaes(zzd(zzafbVar));
    }

    private final zzafg zzc(zzafb zzafbVar) {
        return new zzafg(zzd(zzafbVar));
    }

    private final List<zzab> zzd(zzafb zzafbVar) {
        int i;
        String str;
        List<byte[]> list;
        zzfd zzfdVar = new zzfd(zzafbVar.zzd);
        ArrayList arrayList = this.zza;
        while (zzfdVar.zza() > 0) {
            int zzk = zzfdVar.zzk();
            int zzk2 = zzfdVar.zzk();
            int zzc = zzfdVar.zzc();
            if (zzk == 134) {
                ArrayList arrayList2 = new ArrayList();
                int zzk3 = zzfdVar.zzk();
                int i2 = 0;
                while (true) {
                    arrayList = arrayList2;
                    if (i2 < (zzk3 & 31)) {
                        String zzx = zzfdVar.zzx(3, zzfpt.zzc);
                        int zzk4 = zzfdVar.zzk();
                        int i3 = zzk4 & 128;
                        if (i3 != 0) {
                            i = zzk4 & 63;
                            str = "application/cea-708";
                        } else {
                            str = "application/cea-608";
                            i = 1;
                        }
                        byte zzk5 = (byte) zzfdVar.zzk();
                        zzfdVar.zzG(1);
                        if (i3 != 0) {
                            int i4 = zzea.zza;
                            list = Collections.singletonList((zzk5 & 64) != 0 ? new byte[]{(byte) 1} : new byte[]{(byte) 0});
                        } else {
                            list = null;
                        }
                        List<byte[]> list2 = list;
                        zzz zzzVar = new zzz();
                        zzzVar.zzS(str);
                        zzzVar.zzK(zzx);
                        zzzVar.zzu(i);
                        zzzVar.zzI(list2);
                        arrayList2.add(zzzVar.zzY());
                        i2++;
                    }
                }
            }
            zzfdVar.zzF(zzc + zzk2);
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzafc
    public final zzafe zza(int i, zzafb zzafbVar) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new zzaei(new zzaef(zzafbVar.zzb));
            }
            if (i == 21) {
                return new zzaei(new zzaed());
            }
            if (i == 27) {
                return new zzaei(new zzaea(zzb(zzafbVar), false, false));
            }
            if (i == 36) {
                return new zzaei(new zzaec(zzb(zzafbVar)));
            }
            if (i == 89) {
                return new zzaei(new zzadq(zzafbVar.zzc));
            }
            if (i == 138) {
                return new zzaei(new zzadp(zzafbVar.zzb));
            }
            if (i == 172) {
                return new zzaei(new zzadk(zzafbVar.zzb));
            }
            if (i == 257) {
                return new zzaer(new zzaeh("application/vnd.dvb.ait"));
            }
            if (i != 128) {
                if (i != 129) {
                    if (i == 134) {
                        return new zzaer(new zzaeh("application/x-scte35"));
                    }
                    if (i != 135) {
                        switch (i) {
                            case 15:
                                return new zzaei(new zzadn(false, zzafbVar.zzb));
                            case 16:
                                return new zzaei(new zzadw(zzc(zzafbVar)));
                            case 17:
                                return new zzaei(new zzaee(zzafbVar.zzb));
                            default:
                                return null;
                        }
                    }
                }
                return new zzaei(new zzadh(zzafbVar.zzb));
            }
        }
        return new zzaei(new zzadt(zzc(zzafbVar)));
    }
}
