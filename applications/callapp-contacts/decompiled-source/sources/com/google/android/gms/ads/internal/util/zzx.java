package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.ads;
import com.google.android.gms.internal.ads.adt;
import com.google.android.gms.internal.ads.aev;
import com.google.android.gms.internal.ads.ehk;
import java.io.InputStream;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzx.class */
public class zzx extends zzy {
    @Override // com.google.android.gms.ads.internal.util.zzr
    public final WebResourceResponse zza(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final ads zza(adt adtVar, ehk ehkVar, boolean z) {
        return new aev(adtVar, ehkVar, z);
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final CookieManager zzbi(Context context) {
        if (zzzx()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzd.zzc("Failed to obtain CookieManager.", th);
            zzr.zzkz().a(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final int zzzy() {
        return 16974374;
    }
}
