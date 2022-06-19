package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import com.google.android.gms.ads.internal.C2341q;
import java.io.InputStream;
import java.util.Map;
@TargetApi(21)
/* renamed from: com.google.android.gms.internal.ads.vp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vp.class */
public class C3578vp extends C3579vq {
    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public final WebResourceResponse mo6928a(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: a */
    public final acs mo6929a(act actVar, dwi dwiVar, boolean z) {
        return new adw(actVar, dwiVar, z);
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: c */
    public final CookieManager mo6927c(Context context) {
        CookieManager cookieManager = null;
        if (!m6938c()) {
            try {
                cookieManager = CookieManager.getInstance();
            } catch (Throwable th) {
                C3556uu.m6748c("Failed to obtain CookieManager.", th);
                C2341q.m14740g().m7095a(th, "ApiLevelUtil.getCookieManager");
            }
        }
        return cookieManager;
    }

    @Override // com.google.android.gms.internal.ads.C3572vj
    /* renamed from: d */
    public final int mo6926d() {
        return 16974374;
    }
}
