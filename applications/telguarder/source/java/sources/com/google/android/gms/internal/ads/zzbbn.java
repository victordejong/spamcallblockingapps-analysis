package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.internal.util.zzau;
import com.google.android.gms.ads.internal.util.zzav;
import com.google.android.gms.ads.internal.util.zzaw;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbbn.class */
public final class zzbbn {
    private final Context context;
    private final zzazn zzdtx;
    private final String zzdun;
    private final zzacc zzejx;
    private boolean zzekb;
    private final zzaca zzemp;
    private final long[] zzemr;
    private final String[] zzems;
    private zzbav zzemx;
    private boolean zzemy;
    private boolean zzemz;
    private final zzau zzemq = new zzav().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzzo();
    private boolean zzemt = false;
    private boolean zzemu = false;
    private boolean zzemv = false;
    private boolean zzemw = false;
    private long zzena = -1;

    public zzbbn(Context context, zzazn zzaznVar, String str, zzacc zzaccVar, zzaca zzacaVar) {
        this.context = context;
        this.zzdtx = zzaznVar;
        this.zzdun = str;
        this.zzejx = zzaccVar;
        this.zzemp = zzacaVar;
        String str2 = (String) zzwr.zzqr().zzd(zzabp.zzcnd);
        if (str2 == null) {
            this.zzems = new String[0];
            this.zzemr = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.zzems = new String[split.length];
        this.zzemr = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.zzemr[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzd.zzd("Unable to parse frame hash target time number.", e);
                this.zzemr[i] = -1;
            }
        }
    }

    public final void onStop() {
        if (!zzadu.zzdez.get().booleanValue() || this.zzemy) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString(ShareConstants.WEB_DIALOG_RESULT_PARAM_REQUEST_ID, this.zzdun);
        bundle.putString("player", this.zzemx.zzaad());
        for (zzaw zzawVar : this.zzemq.zzzn()) {
            String valueOf = String.valueOf(zzawVar.name);
            bundle.putString(valueOf.length() != 0 ? "fps_c_".concat(valueOf) : new String("fps_c_"), Integer.toString(zzawVar.count));
            String valueOf2 = String.valueOf(zzawVar.name);
            bundle.putString(valueOf2.length() != 0 ? "fps_p_".concat(valueOf2) : new String("fps_p_"), Double.toString(zzawVar.zzega));
        }
        int i = 0;
        while (true) {
            long[] jArr = this.zzemr;
            if (i >= jArr.length) {
                zzr.zzkr().zza(this.context, this.zzdtx.zzbrp, "gmob-apps", bundle, true);
                this.zzemy = true;
                return;
            }
            String str = this.zzems[i];
            if (str != null) {
                String valueOf3 = String.valueOf(Long.valueOf(jArr[i]));
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf3).length() + 3);
                sb.append("fh_");
                sb.append(valueOf3);
                bundle.putString(sb.toString(), str);
            }
            i++;
        }
    }

    public final void zzaaz() {
        this.zzekb = true;
        if (!this.zzemu || this.zzemv) {
            return;
        }
        zzabx.zza(this.zzejx, this.zzemp, "vfp2");
        this.zzemv = true;
    }

    public final void zzaba() {
        this.zzekb = false;
    }

    public final void zzb(zzbav zzbavVar) {
        zzabx.zza(this.zzejx, this.zzemp, "vpc2");
        this.zzemt = true;
        zzacc zzaccVar = this.zzejx;
        if (zzaccVar != null) {
            zzaccVar.zzg("vpn", zzbavVar.zzaad());
        }
        this.zzemx = zzbavVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v47 */
    public final void zzc(zzbav zzbavVar) {
        if (this.zzemv && !this.zzemw) {
            if (zzd.zzyg() && !this.zzemw) {
                zzd.zzeb("VideoMetricsMixin first frame");
            }
            zzabx.zza(this.zzejx, this.zzemp, "vff2");
            this.zzemw = true;
        }
        long nanoTime = zzr.zzky().nanoTime();
        if (this.zzekb && this.zzemz && this.zzena != -1) {
            this.zzemq.zza(TimeUnit.SECONDS.toNanos(1L) / (nanoTime - this.zzena));
        }
        this.zzemz = this.zzekb;
        this.zzena = nanoTime;
        long longValue = ((Long) zzwr.zzqr().zzd(zzabp.zzcne)).longValue();
        long currentPosition = zzbavVar.getCurrentPosition();
        int i = 0;
        while (true) {
            String[] strArr = this.zzems;
            if (i < strArr.length) {
                if (strArr[i] == null && longValue > Math.abs(currentPosition - this.zzemr[i])) {
                    String[] strArr2 = this.zzems;
                    Bitmap bitmap = zzbavVar.getBitmap(8, 8);
                    char c = '?';
                    char c2 = 0;
                    for (int i2 = 0; i2 < 8; i2++) {
                        int i3 = 0;
                        while (i3 < 8) {
                            int pixel = bitmap.getPixel(i3, i2);
                            c2 |= ((Color.blue(pixel) + Color.red(pixel)) + Color.green(pixel) > 128 ? 1 : 0) << c;
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

    public final void zzfb() {
        if (!this.zzemt || this.zzemu) {
            return;
        }
        zzabx.zza(this.zzejx, this.zzemp, "vfr2");
        this.zzemu = true;
    }
}
