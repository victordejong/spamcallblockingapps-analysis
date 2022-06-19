package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.io.File;
import java.util.Collections;
import java.util.Map;
@TargetApi(11)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zo0.class */
public class zo0 extends do0 {
    public zo0(wn0 wn0Var, C6854pm c6854pm, boolean z) {
        super(wn0Var, c6854pm, z);
    }

    /* renamed from: P0 */
    public final WebResourceResponse m8311P0(WebView webView, String str, Map<String, String> map) {
        String str2;
        if (!(webView instanceof wn0)) {
            ei0.m15464f("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        wn0 wn0Var = (wn0) webView;
        hf0 hf0Var = this.f21731y;
        if (hf0Var != null) {
            hf0Var.mo14675c(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = Collections.emptyMap();
            }
            return super.m15733a(str, map2);
        }
        if (wn0Var.mo7914c0() != null) {
            wn0Var.mo7914c0().mo14078t();
        }
        if (wn0Var.mo7894o().m13128g()) {
            str2 = (String) C7192yr.m8714c().m14263c(C6679kw.f25507J);
        } else if (wn0Var.mo7932T()) {
            str2 = (String) C7192yr.m8714c().m14263c(C6679kw.f25499I);
        } else {
            str2 = (String) C7192yr.m8714c().m14263c(C6679kw.f25491H);
        }
        C5667s.m18160d();
        return C5679c2.m18079b(wn0Var.getContext(), wn0Var.zzt().f33854d, str2);
    }
}
