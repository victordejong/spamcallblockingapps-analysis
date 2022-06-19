package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbee;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zztu;
import java.io.InputStream;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzx.class */
public class zzx extends zzy {
    @Override // com.google.android.gms.ads.internal.util.zzr
    public final WebResourceResponse zza(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final zzbee zza(zzbeb zzbebVar, zztu zztuVar, boolean z) {
        return new zzbfi(zzbebVar, zztuVar, z);
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final CookieManager zzbf(Context context) {
        if (zzze()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzd.zzc("Failed to obtain CookieManager.", th);
            zzr.zzkv().zza(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final int zzzf() {
        return 16974374;
    }
}
