package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.impl.C2037R;
import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbym.class */
public final class zzbym extends zzbyp {
    private final Map<String, String> zza;
    private final Context zzb;

    public zzbym(zzcml zzcmlVar, Map<String, String> map) {
        super(zzcmlVar, "storePicture");
        this.zza = map;
        this.zzb = zzcmlVar.zzj();
    }

    public final void zzb() {
        if (this.zzb == null) {
            zzf("Activity context is not available");
            return;
        }
        zzt.zzc();
        if (!new zzbiv(this.zzb).zza()) {
            zzf("Feature is not supported by the device.");
            return;
        }
        String str = this.zza.get("iurl");
        if (TextUtils.isEmpty(str)) {
            zzf("Image url cannot be empty.");
        } else if (!URLUtil.isValidUrl(str)) {
            String valueOf = String.valueOf(str);
            zzf(valueOf.length() != 0 ? "Invalid image url: ".concat(valueOf) : new String("Invalid image url: "));
        } else {
            String lastPathSegment = Uri.parse(str).getLastPathSegment();
            zzt.zzc();
            if (TextUtils.isEmpty(lastPathSegment) || !lastPathSegment.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)")) {
                String valueOf2 = String.valueOf(lastPathSegment);
                zzf(valueOf2.length() != 0 ? "Image type not recognized: ".concat(valueOf2) : new String("Image type not recognized: "));
                return;
            }
            Resources zzj = zzt.zzg().zzj();
            zzt.zzc();
            AlertDialog.Builder builder = new AlertDialog.Builder(this.zzb);
            builder.setTitle(zzj != null ? zzj.getString(C2037R.string.f5305s1) : "Save image");
            builder.setMessage(zzj != null ? zzj.getString(C2037R.string.f5306s2) : "Allow Ad to store image in Picture gallery?");
            builder.setPositiveButton(zzj != null ? zzj.getString(C2037R.string.f5307s3) : "Accept", new zzbyk(this, str, lastPathSegment));
            builder.setNegativeButton(zzj != null ? zzj.getString(C2037R.string.f5308s4) : "Decline", new zzbyl(this));
            builder.create().show();
        }
    }
}
