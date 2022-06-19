package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.impl.C1211R;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaql.class */
public final class zzaql extends zzaqq {
    private final Context context;
    private final Map<String, String> zzdbf;

    public zzaql(zzbeb zzbebVar, Map<String, String> map) {
        super(zzbebVar, "storePicture");
        this.zzdbf = map;
        this.context = zzbebVar.zzabe();
    }

    public final void execute() {
        if (this.context == null) {
            zzds("Activity context is not available");
            return;
        }
        zzr.zzkr();
        if (!zzj.zzao(this.context).zzrz()) {
            zzds("Feature is not supported by the device.");
            return;
        }
        String str = this.zzdbf.get("iurl");
        if (TextUtils.isEmpty(str)) {
            zzds("Image url cannot be empty.");
        } else if (!URLUtil.isValidUrl(str)) {
            String valueOf = String.valueOf(str);
            zzds(valueOf.length() != 0 ? "Invalid image url: ".concat(valueOf) : new String("Invalid image url: "));
        } else {
            String lastPathSegment = Uri.parse(str).getLastPathSegment();
            zzr.zzkr();
            if (!zzj.zzeh(lastPathSegment)) {
                String valueOf2 = String.valueOf(lastPathSegment);
                zzds(valueOf2.length() != 0 ? "Image type not recognized: ".concat(valueOf2) : new String("Image type not recognized: "));
                return;
            }
            Resources resources = zzr.zzkv().getResources();
            zzr.zzkr();
            AlertDialog.Builder zzan = zzj.zzan(this.context);
            zzan.setTitle(resources != null ? resources.getString(C1211R.string.f112s1) : "Save image");
            zzan.setMessage(resources != null ? resources.getString(C1211R.string.f113s2) : "Allow Ad to store image in Picture gallery?");
            zzan.setPositiveButton(resources != null ? resources.getString(C1211R.string.f114s3) : "Accept", new zzaqk(this, str, lastPathSegment));
            zzan.setNegativeButton(resources != null ? resources.getString(C1211R.string.f115s4) : "Decline", new zzaqn(this));
            zzan.create().show();
        }
    }
}
