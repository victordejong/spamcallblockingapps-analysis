package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.C6854pm;
import com.google.android.gms.internal.ads.ap0;
import com.google.android.gms.internal.ads.do0;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.wn0;
import java.io.InputStream;
import java.util.Map;
@TargetApi(21)
/* renamed from: com.google.android.gms.ads.internal.util.h2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/h2.class */
public class C5699h2 extends C5695g2 {
    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: k */
    public final CookieManager mo18016k(Context context) {
        if (C5684e.m18041s()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            ei0.m15466d("Failed to obtain CookieManager.", th);
            C5667s.m18156h().m12235k(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: l */
    public final do0 mo18015l(wn0 wn0Var, C6854pm c6854pm, boolean z) {
        return new ap0(wn0Var, c6854pm, z);
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: m */
    public final int mo18014m() {
        return 16974374;
    }

    @Override // com.google.android.gms.ads.internal.util.C5684e
    /* renamed from: n */
    public final WebResourceResponse mo18013n(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }
}
