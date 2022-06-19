package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzcml;
import com.google.android.gms.internal.ads.zzcms;
import com.google.android.gms.internal.ads.zzcnq;
import java.io.InputStream;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzx.class */
public class zzx extends zzw {
    @Override // com.google.android.gms.ads.internal.util.zzad
    public final CookieManager zzk(Context context) {
        if (zzad.zzu()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzcgt.zzg("Failed to obtain CookieManager.", th);
            zzt.zzg().zzk(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzad
    public final zzcms zzl(zzcml zzcmlVar, zzazb zzazbVar, boolean z) {
        return new zzcnq(zzcmlVar, zzazbVar, z);
    }

    @Override // com.google.android.gms.ads.internal.util.zzad
    public final int zzm() {
        return 16974374;
    }

    @Override // com.google.android.gms.ads.internal.util.zzad
    public final WebResourceResponse zzn(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }
}
