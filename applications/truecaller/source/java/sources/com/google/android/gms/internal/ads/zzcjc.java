package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzbf;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzbi;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcjc.class */
public final class zzcjc {
    private final Context zza;
    private final String zzb;
    private final zzcgz zzc;
    private final zzbjx zzd;
    private final zzbka zze;
    private final zzbi zzf;
    private final long[] zzg;
    private final String[] zzh;
    private boolean zzm;
    private zzcii zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzi = false;
    private boolean zzj = false;
    private boolean zzk = false;
    private boolean zzl = false;
    private long zzq = -1;

    public zzcjc(Context context, zzcgz zzcgzVar, String str, zzbka zzbkaVar, zzbjx zzbjxVar) {
        zzbg zzbgVar = new zzbg();
        zzbgVar.zzd("min_1", Double.MIN_VALUE, 1.0d);
        zzbgVar.zzd("1_5", 1.0d, 5.0d);
        zzbgVar.zzd("5_10", 5.0d, 10.0d);
        zzbgVar.zzd("10_20", 10.0d, 20.0d);
        zzbgVar.zzd("20_30", 20.0d, 30.0d);
        zzbgVar.zzd("30_max", 30.0d, Double.MAX_VALUE);
        this.zzf = zzbgVar.zze();
        this.zza = context;
        this.zzc = zzcgzVar;
        this.zzb = str;
        this.zze = zzbkaVar;
        this.zzd = zzbjxVar;
        String str2 = (String) zzbet.zzc().zzc(zzbjl.zzv);
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
                zzcgt.zzj("Unable to parse frame hash target time number.", e);
                this.zzg[i] = -1;
            }
        }
    }

    public final void zza(zzcii zzciiVar) {
        zzbjs.zza(this.zze, this.zzd, "vpc2");
        this.zzi = true;
        this.zze.zzd("vpn", zzciiVar.zzd());
        this.zzn = zzciiVar;
    }

    public final void zzb() {
        if (!this.zzi || this.zzj) {
            return;
        }
        zzbjs.zza(this.zze, this.zzd, "vfr2");
        this.zzj = true;
    }

    public final void zzc() {
        if (!zzbll.zza.zze().booleanValue() || this.zzo) {
            return;
        }
        Bundle m8654X0 = C22128a.m8654X0("type", "native-player-metrics");
        m8654X0.putString("request", this.zzb);
        m8654X0.putString("player", this.zzn.zzd());
        for (zzbf zzbfVar : this.zzf.zzb()) {
            String valueOf = String.valueOf(zzbfVar.zza);
            m8654X0.putString(valueOf.length() != 0 ? "fps_c_".concat(valueOf) : new String("fps_c_"), Integer.toString(zzbfVar.zze));
            String valueOf2 = String.valueOf(zzbfVar.zza);
            m8654X0.putString(valueOf2.length() != 0 ? "fps_p_".concat(valueOf2) : new String("fps_p_"), Double.toString(zzbfVar.zzd));
        }
        int i = 0;
        while (true) {
            long[] jArr = this.zzg;
            if (i >= jArr.length) {
                zzt.zzc().zzn(this.zza, this.zzc.zza, "gmob-apps", m8654X0, true);
                this.zzo = true;
                return;
            }
            String str = this.zzh[i];
            if (str != null) {
                m8654X0.putString("fh_".concat(Long.valueOf(jArr[i]).toString()), str);
            }
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49 */
    /* JADX WARN: Type inference failed for: r0v50 */
    public final void zzd(zzcii zzciiVar) {
        if (this.zzk && !this.zzl) {
            if (zze.zzc() && !this.zzl) {
                zze.zza("VideoMetricsMixin first frame");
            }
            zzbjs.zza(this.zze, this.zzd, "vff2");
            this.zzl = true;
        }
        long mo38788b = zzt.zzj().mo38788b();
        if (this.zzm && this.zzp && this.zzq != -1) {
            this.zzf.zza(TimeUnit.SECONDS.toNanos(1L) / (mo38788b - this.zzq));
        }
        this.zzp = this.zzm;
        this.zzq = mo38788b;
        long longValue = ((Long) zzbet.zzc().zzc(zzbjl.zzw)).longValue();
        long zzk = zzciiVar.zzk();
        int i = 0;
        while (true) {
            String[] strArr = this.zzh;
            if (i < strArr.length) {
                if (strArr[i] == null && longValue > Math.abs(zzk - this.zzg[i])) {
                    String[] strArr2 = this.zzh;
                    Bitmap bitmap = zzciiVar.getBitmap(8, 8);
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

    public final void zze() {
        this.zzm = true;
        if (!this.zzj || this.zzk) {
            return;
        }
        zzbjs.zza(this.zze, this.zzd, "vfp2");
        this.zzk = true;
    }

    public final void zzf() {
        this.zzm = false;
    }
}
