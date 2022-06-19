package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsy.class */
public final class zzsy implements zzum {
    private final List<zzafv> zza;

    public zzsy() {
        this(0);
    }

    public zzsy(int i) {
        this.zza = zzfoj.zzi();
    }

    private final zzuc zzb(zzul zzulVar) {
        return new zzuc(zzd(zzulVar));
    }

    private final zzuq zzc(zzul zzulVar) {
        return new zzuq(zzd(zzulVar));
    }

    private final List<zzafv> zzd(zzul zzulVar) {
        int i;
        String str;
        List<byte[]> list;
        zzamf zzamfVar = new zzamf(zzulVar.zzd);
        ArrayList arrayList = this.zza;
        while (zzamfVar.zzd() > 0) {
            int zzn = zzamfVar.zzn();
            int zzn2 = zzamfVar.zzn();
            int zzg = zzamfVar.zzg();
            if (zzn == 134) {
                ArrayList arrayList2 = new ArrayList();
                int zzn3 = zzamfVar.zzn();
                int i2 = 0;
                while (true) {
                    arrayList = arrayList2;
                    if (i2 < (zzn3 & 31)) {
                        String zzE = zzamfVar.zzE(3, zzfll.zzc);
                        int zzn4 = zzamfVar.zzn();
                        int i3 = zzn4 & 128;
                        if (i3 != 0) {
                            i = zzn4 & 63;
                            str = "application/cea-708";
                        } else {
                            str = "application/cea-608";
                            i = 1;
                        }
                        byte zzn5 = (byte) zzamfVar.zzn();
                        zzamfVar.zzk(1);
                        if (i3 != 0) {
                            int i4 = zzakv.zza;
                            list = Collections.singletonList((zzn5 & 64) != 0 ? new byte[]{(byte) 1} : new byte[]{(byte) 0});
                        } else {
                            list = null;
                        }
                        List<byte[]> list2 = list;
                        zzaft zzaftVar = new zzaft();
                        zzaftVar.zzN(str);
                        zzaftVar.zzG(zzE);
                        zzaftVar.zzaf(i);
                        zzaftVar.zzP(list2);
                        arrayList2.add(zzaftVar.zzah());
                        i2++;
                    }
                }
            }
            zzamfVar.zzh(zzg + zzn2);
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzum
    public final zzuo zza(int i, zzul zzulVar) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new zzts(new zztp(zzulVar.zzb));
            }
            if (i == 21) {
                return new zzts(new zztn());
            }
            if (i == 27) {
                return new zzts(new zztk(zzb(zzulVar), false, false));
            }
            if (i == 36) {
                return new zzts(new zztm(zzb(zzulVar)));
            }
            if (i == 89) {
                return new zzts(new zzta(zzulVar.zzc));
            }
            if (i != 129) {
                if (i == 138) {
                    return new zzts(new zzsz(zzulVar.zzb));
                }
                if (i == 172) {
                    return new zzts(new zzsu(zzulVar.zzb));
                }
                if (i == 257) {
                    return new zzub(new zztr("application/vnd.dvb.ait"));
                }
                if (i == 134) {
                    return new zzub(new zztr("application/x-scte35"));
                }
                if (i != 135) {
                    switch (i) {
                        case 15:
                            return new zzts(new zzsx(false, zzulVar.zzb));
                        case 16:
                            return new zzts(new zztg(zzc(zzulVar)));
                        case 17:
                            return new zzts(new zzto(zzulVar.zzb));
                        default:
                            return null;
                    }
                }
            }
            return new zzts(new zzsr(zzulVar.zzb));
        }
        return new zzts(new zztd(zzc(zzulVar)));
    }
}
