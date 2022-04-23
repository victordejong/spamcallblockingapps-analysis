package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.zzp;
import java.io.File;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhn.class */
public class zzbhn extends zzbgi {
    public zzbhn(zzbgj zzbgjVar, zzts zztsVar, boolean z) {
        super(zzbgjVar, zztsVar, z);
    }

    /* renamed from: a */
    public final WebResourceResponse m15525a(WebView webView, String str, Map<String, String> map) {
        String str2;
        if (!(webView instanceof zzbgj)) {
            zzbbq.m15852d("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzbgj zzbgjVar = (zzbgj) webView;
        zzawl zzawlVar = this.f24972s;
        if (zzawlVar != null) {
            zzawlVar.mo16263a(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = Collections.emptyMap();
            }
            return super.m15627a(str, map2);
        }
        if (zzbgjVar.mo15543z() != null) {
            zzbgjVar.mo15543z().mo15477d();
        }
        if (zzbgjVar.mo15517c().m15510b()) {
            str2 = (String) zzwm.m11166e().m16921a(zzabb.f23673F);
        } else if (zzbgjVar.mo15526e()) {
            str2 = (String) zzwm.m11166e().m16921a(zzabb.f23668E);
        } else {
            str2 = (String) zzwm.m11166e().m16921a(zzabb.f23663D);
        }
        zzp.m17969c();
        return zzayu.m16101c(zzbgjVar.getContext(), zzbgjVar.mo15516a().f24759a, str2);
    }
}
