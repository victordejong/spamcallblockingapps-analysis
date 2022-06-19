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
public class aew extends C12170ads {
    public aew(adt adtVar, ehk ehkVar, boolean z) {
        super(adtVar, ehkVar, z);
    }

    /* renamed from: a */
    public final WebResourceResponse m18801a(WebView webView, String str, Map<String, String> map) {
        String str2;
        if (!(webView instanceof adt)) {
            zzd.zzez("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        adt adtVar = (adt) webView;
        if (this.f40000e != null) {
            this.f40000e.mo14060a(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = Collections.emptyMap();
            }
            return super.m18844a(str, map2);
        }
        if (adtVar.mo13808B() != null) {
            adtVar.mo13808B().mo18779l();
        }
        if (adtVar.mo13724z().m18772d()) {
            str2 = (String) ekb.m14831e().m18571a(C12187aq.f42618H);
        } else if (adtVar.mo13803G()) {
            str2 = (String) ekb.m14831e().m18571a(C12187aq.f42617G);
        } else {
            str2 = (String) ekb.m14831e().m18571a(C12187aq.f42616F);
        }
        zzr.zzkv();
        return zzj.zzd(adtVar.getContext(), adtVar.mo13739k().zzbrz, str2);
    }
}
