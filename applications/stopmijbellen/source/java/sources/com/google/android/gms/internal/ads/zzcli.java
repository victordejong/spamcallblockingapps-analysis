package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.util.zzbj;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcli.class */
public final class zzcli {
    private final Context zza;
    private final String zzb;
    private final zzcjf zzc;
    private final zzblv zzd;
    private final zzbly zze;
    private final zzbj zzf;
    private final long[] zzg;
    private final String[] zzh;
    private boolean zzm;
    private zzcko zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzi = false;
    private boolean zzj = false;
    private boolean zzk = false;
    private boolean zzl = false;
    private long zzq = -1;

    public zzcli(Context context, zzcjf zzcjfVar, String str, zzbly zzblyVar, zzblv zzblvVar) {
        zzbh zzbhVar = new zzbh();
        zzbhVar.zza("min_1", Double.MIN_VALUE, 1.0d);
        zzbhVar.zza("1_5", 1.0d, 5.0d);
        zzbhVar.zza("5_10", 5.0d, 10.0d);
        zzbhVar.zza("10_20", 10.0d, 20.0d);
        zzbhVar.zza("20_30", 20.0d, 30.0d);
        zzbhVar.zza("30_max", 30.0d, Double.MAX_VALUE);
        this.zzf = zzbhVar.zzb();
        this.zza = context;
        this.zzc = zzcjfVar;
        this.zzb = str;
        this.zze = zzblyVar;
        this.zzd = zzblvVar;
        String str2 = (String) zzbgq.zzc().zzb(zzblj.zzv);
        if (str2 == null) {
            this.zzh = new String[0];
            this.zzg = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        int length = split.length;
        this.zzh = new String[length];
        this.zzg = new long[length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.zzg[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzciz.zzk("Unable to parse frame hash target time number.", e);
                this.zzg[i] = -1;
            }
        }
    }

    public final void zza(zzcko zzckoVar) {
        zzblq.zza(this.zze, this.zzd, "vpc2");
        this.zzi = true;
        this.zze.zzd("vpn", zzckoVar.zzj());
        this.zzn = zzckoVar;
    }

    public final void zzb() {
        if (!this.zzi || this.zzj) {
            return;
        }
        zzblq.zza(this.zze, this.zzd, "vfr2");
        this.zzj = true;
    }

    public final void zzc() {
        this.zzm = true;
        if (!this.zzj || this.zzk) {
            return;
        }
        zzblq.zza(this.zze, this.zzd, "vfp2");
        this.zzk = true;
    }

    public final void zzd() {
        if (!zzbnk.zza.zze().booleanValue() || this.zzo) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.zzb);
        bundle.putString("player", this.zzn.zzj());
        for (zzbg zzbgVar : this.zzf.zza()) {
            String valueOf = String.valueOf(zzbgVar.zza);
            bundle.putString(valueOf.length() != 0 ? "fps_c_".concat(valueOf) : new String("fps_c_"), Integer.toString(zzbgVar.zze));
            String valueOf2 = String.valueOf(zzbgVar.zza);
            bundle.putString(valueOf2.length() != 0 ? "fps_p_".concat(valueOf2) : new String("fps_p_"), Double.toString(zzbgVar.zzd));
        }
        int i = 0;
        while (true) {
            long[] jArr = this.zzg;
            if (i >= jArr.length) {
                zzt.zzp().zzn(this.zza, this.zzc.zza, "gmob-apps", bundle, true);
                this.zzo = true;
                return;
            }
            String str = this.zzh[i];
            if (str != null) {
                bundle.putString("fh_".concat(Long.valueOf(jArr[i]).toString()), str);
            }
            i++;
        }
    }

    public final void zze() {
        this.zzm = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r0v50 */
    public final void zzf(zzcko zzckoVar) {
        if (this.zzk && !this.zzl) {
            if (zze.zzc() && !this.zzl) {
                zze.zza("VideoMetricsMixin first frame");
            }
            zzblq.zza(this.zze, this.zzd, "vff2");
            this.zzl = true;
        }
        long nanoTime = zzt.zzA().nanoTime();
        if (this.zzm && this.zzp && this.zzq != -1) {
            this.zzf.zzb(TimeUnit.SECONDS.toNanos(1L) / (nanoTime - this.zzq));
        }
        this.zzp = this.zzm;
        this.zzq = nanoTime;
        long longValue = ((Long) zzbgq.zzc().zzb(zzblj.zzw)).longValue();
        long zza = zzckoVar.zza();
        int i = 0;
        while (true) {
            String[] strArr = this.zzh;
            if (i < strArr.length) {
                if (strArr[i] == null && longValue > Math.abs(zza - this.zzg[i])) {
                    String[] strArr2 = this.zzh;
                    Bitmap bitmap = zzckoVar.getBitmap(8, 8);
                    char c = '?';
                    char c2 = 0;
                    for (int i2 = 0; i2 < 8; i2++) {
                        int i3 = 0;
                        while (i3 < 8) {
                            int pixel = bitmap.getPixel(i3, i2);
                            c2 |= (Color.green(pixel) + (Color.red(pixel) + Color.blue(pixel)) > 128 ? 1 : 0) << c;
                            i3++;
                            c--;
                        }
                    }
                    strArr2[i] = String.format("%016X", Long.valueOf(c2));
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }
}
