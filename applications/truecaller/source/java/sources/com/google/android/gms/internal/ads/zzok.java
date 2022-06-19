package com.google.android.gms.internal.ads;

import io.agora.rtc.Constants;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzok.class */
public final class zzok {
    public final List<byte[]> zza;
    public final int zzb;
    public final String zzc;

    private zzok(List<byte[]> list, int i, String str) {
        this.zza = list;
        this.zzb = i;
        this.zzc = str;
    }

    public static zzok zza(zzamf zzamfVar) throws zzaha {
        try {
            zzamfVar.zzk(21);
            int zzn = zzamfVar.zzn();
            int zzn2 = zzamfVar.zzn();
            int zzg = zzamfVar.zzg();
            int i = 0;
            for (int i2 = 0; i2 < zzn2; i2++) {
                zzamfVar.zzk(1);
                int zzo = zzamfVar.zzo();
                for (int i3 = 0; i3 < zzo; i3++) {
                    int zzo2 = zzamfVar.zzo();
                    i += zzo2 + 4;
                    zzamfVar.zzk(zzo2);
                }
            }
            zzamfVar.zzh(zzg);
            byte[] bArr = new byte[i];
            int i4 = 0;
            String str = null;
            for (int i5 = 0; i5 < zzn2; i5++) {
                int zzn3 = zzamfVar.zzn();
                int zzo3 = zzamfVar.zzo();
                int i6 = 0;
                while (true) {
                    int i7 = i6;
                    if (i7 < zzo3) {
                        int zzo4 = zzamfVar.zzo();
                        System.arraycopy(zzalw.zza, 0, bArr, i4, 4);
                        int i8 = i4 + 4;
                        System.arraycopy(zzamfVar.zzi(), zzamfVar.zzg(), bArr, i8, zzo4);
                        String str2 = str;
                        int i9 = i7;
                        if ((zzn3 & Constants.ERR_WATERMARKR_INFO) == 33) {
                            str2 = str;
                            i9 = i7;
                            if (i7 == 0) {
                                str2 = zzakv.zzb(new zzamg(bArr, i8, i8 + zzo4));
                                i9 = 0;
                            }
                        }
                        int i10 = i8 + zzo4;
                        zzamfVar.zzk(zzo4);
                        int i11 = i9 + 1;
                        str = str2;
                        i4 = i10;
                        i6 = i11;
                    }
                }
            }
            return new zzok(i == 0 ? null : Collections.singletonList(bArr), (zzn & 3) + 1, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaha.zzb("Error parsing HEVC config", e);
        }
    }
}
