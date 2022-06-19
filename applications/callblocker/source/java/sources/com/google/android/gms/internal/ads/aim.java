package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.C2341q;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aim.class */
public final class aim implements aii {

    /* renamed from: a */
    private final Context f9743a;

    public aim(Context context) {
        this.f9743a = context;
    }

    @Override // com.google.android.gms.internal.ads.aii
    /* renamed from: a */
    public final void mo13094a(Map<String, String> map) {
        CookieManager mo6927c;
        String str = map.get("cookie");
        if (TextUtils.isEmpty(str) || (mo6927c = C2341q.m14742e().mo6927c(this.f9743a)) == null) {
            return;
        }
        mo6927c.setCookie("googleads.g.doubleclick.net", str);
    }
}
