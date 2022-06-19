package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.C2341q;
import java.io.File;
import java.util.Collections;
import java.util.Map;
@TargetApi(11)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adx.class */
public class adx extends acs {
    public adx(act actVar, dwi dwiVar, boolean z) {
        super(actVar, dwiVar, z);
    }

    /* renamed from: a */
    public final WebResourceResponse m13559a(WebView webView, String str, Map<String, String> map) {
        String str2;
        WebResourceResponse m6965c;
        if (!(webView instanceof act)) {
            C3556uu.m6745e("Tried to intercept request from a WebView that wasn't an AdWebView.");
            m6965c = null;
        } else {
            act actVar = (act) webView;
            if (this.f7836b != null) {
                this.f7836b.mo7179a(str, map, 1);
            }
            if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
                Map<String, String> map2 = map;
                if (map == null) {
                    map2 = Collections.emptyMap();
                }
                m6965c = super.m13616a(str, map2);
            } else {
                if (actVar.mo13426v() != null) {
                    actVar.mo13426v().mo13502m();
                }
                if (actVar.mo13428t().m13549e()) {
                    str2 = (String) dyx.m8158e().m7876a(edi.f16319E);
                } else if (actVar.mo13497A()) {
                    str2 = (String) dyx.m8158e().m7876a(edi.f16318D);
                } else {
                    str2 = (String) dyx.m8158e().m7876a(edi.f16317C);
                }
                C2341q.m14744c();
                m6965c = C3567ve.m6965c(actVar.getContext(), actVar.mo13438j().f17636a, str2);
            }
        }
        return m6965c;
    }
}
