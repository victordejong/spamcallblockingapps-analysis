package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.File;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aew.class */
public class aew extends ads {
    public aew(adt adtVar, ehk ehkVar, boolean z) {
        super(adtVar, ehkVar, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final WebResourceResponse a(WebView webView, String str, Map<String, String> map) {
        String str2;
        if (!(webView instanceof adt)) {
            zzd.zzez("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        adt adtVar = (adt) webView;
        if (this.e != null) {
            this.e.a(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = Collections.emptyMap();
            }
            return super.a(str, map2);
        }
        if (adtVar.B() != null) {
            adtVar.B().l();
        }
        if (adtVar.z().d()) {
            str2 = (String) ekb.e().a(aq.H);
        } else if (adtVar.G()) {
            str2 = (String) ekb.e().a(aq.G);
        } else {
            str2 = (String) ekb.e().a(aq.F);
        }
        zzr.zzkv();
        return zzj.zzd(adtVar.getContext(), adtVar.k().zzbrz, str2);
    }
}
