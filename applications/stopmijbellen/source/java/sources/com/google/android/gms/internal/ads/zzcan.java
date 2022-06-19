package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.impl.C1666R;
import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcan.class */
public final class zzcan extends zzcaq {
    private final Map<String, String> zza;
    private final Context zzb;

    public zzcan(zzcop zzcopVar, Map<String, String> map) {
        super(zzcopVar, "storePicture");
        this.zza = map;
        this.zzb = zzcopVar.zzk();
    }

    public final void zzb() {
        if (this.zzb == null) {
            zzg("Activity context is not available");
            return;
        }
        zzt.zzp();
        if (!new zzbkt(this.zzb).zzc()) {
            zzg("Feature is not supported by the device.");
            return;
        }
        String str = this.zza.get("iurl");
        if (TextUtils.isEmpty(str)) {
            zzg("Image url cannot be empty.");
        } else if (!URLUtil.isValidUrl(str)) {
            String valueOf = String.valueOf(str);
            zzg(valueOf.length() != 0 ? "Invalid image url: ".concat(valueOf) : new String("Invalid image url: "));
        } else {
            String lastPathSegment = Uri.parse(str).getLastPathSegment();
            zzt.zzp();
            if (TextUtils.isEmpty(lastPathSegment) || !lastPathSegment.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)")) {
                String valueOf2 = String.valueOf(lastPathSegment);
                zzg(valueOf2.length() != 0 ? "Image type not recognized: ".concat(valueOf2) : new String("Image type not recognized: "));
                return;
            }
            Resources zzd = zzt.zzo().zzd();
            zzt.zzp();
            AlertDialog.Builder builder = new AlertDialog.Builder(this.zzb);
            builder.setTitle(zzd != null ? zzd.getString(C1666R.string.f6217s1) : "Save image");
            builder.setMessage(zzd != null ? zzd.getString(C1666R.string.f6218s2) : "Allow Ad to store image in Picture gallery?");
            builder.setPositiveButton(zzd != null ? zzd.getString(C1666R.string.f6219s3) : "Accept", new zzcal(this, str, lastPathSegment));
            builder.setNegativeButton(zzd != null ? zzd.getString(C1666R.string.f6220s4) : "Decline", new zzcam(this));
            builder.create().show();
        }
    }
}
