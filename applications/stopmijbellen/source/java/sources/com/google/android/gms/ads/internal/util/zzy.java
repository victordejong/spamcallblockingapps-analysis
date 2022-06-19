package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbay;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcop;
import com.google.android.gms.internal.ads.zzcow;
import com.google.android.gms.internal.ads.zzcpt;
import java.io.InputStream;
import java.util.Map;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzy.class */
public class zzy extends zzx {
    @Override // com.google.android.gms.ads.internal.util.zzae
    public final int zzk() {
        return 16974374;
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final CookieManager zzl(Context context) {
        if (zzae.zzu()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzciz.zzh("Failed to obtain CookieManager.", th);
            zzt.zzo().zzs(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final WebResourceResponse zzm(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final zzcow zzn(zzcop zzcopVar, zzbay zzbayVar, boolean z) {
        return new zzcpt(zzcopVar, zzbayVar, z);
    }
}
