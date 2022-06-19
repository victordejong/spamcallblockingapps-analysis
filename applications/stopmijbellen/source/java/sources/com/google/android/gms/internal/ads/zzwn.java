package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import java.util.Arrays;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwn.class */
public final class zzwn {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] zzc = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] zzd = {64, C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle, 128, 192, 224, 256, 384, 448, AdRequest.MAX_CONTENT_URL_LENGTH, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    public static zzab zza(byte[] bArr, String str, String str2, zzs zzsVar) {
        zzfc zzfcVar;
        int i;
        int i2 = 0;
        if (bArr[0] == Byte.MAX_VALUE) {
            zzfcVar = new zzfc(bArr, bArr.length);
        } else {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            byte b = copyOf[0];
            if (b == -2 || b == -1) {
                for (int i3 = 0; i3 < copyOf.length - 1; i3 += 2) {
                    byte b2 = copyOf[i3];
                    copyOf[i3] = copyOf[i];
                    copyOf[i3 + 1] = b2;
                }
            }
            int length = copyOf.length;
            zzfcVar = new zzfc(copyOf, length);
            if (copyOf[0] == 31) {
                zzfc zzfcVar2 = new zzfc(copyOf, length);
                while (zzfcVar2.zza() >= 16) {
                    zzfcVar2.zzj(2);
                    zzfcVar.zze(zzfcVar2.zzc(14), 14);
                }
            }
            zzfcVar.zzg(copyOf, copyOf.length);
        }
        zzfcVar.zzj(60);
        int i4 = zzb[zzfcVar.zzc(6)];
        int i5 = zzc[zzfcVar.zzc(4)];
        int zzc2 = zzfcVar.zzc(5);
        int i6 = zzc2 >= 29 ? -1 : (zzd[zzc2] * 1000) / 2;
        zzfcVar.zzj(10);
        if (zzfcVar.zzc(2) > 0) {
            i2 = 1;
        }
        zzz zzzVar = new zzz();
        zzzVar.zzH(str);
        zzzVar.zzS("audio/vnd.dts");
        zzzVar.zzv(i6);
        zzzVar.zzw(i4 + i2);
        zzzVar.zzT(i5);
        zzzVar.zzB(null);
        zzzVar.zzK(str2);
        return zzzVar.zzY();
    }
}
