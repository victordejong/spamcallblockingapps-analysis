package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efg.class */
public final class efg implements ValueCallback<String> {

    /* renamed from: a */
    private final /* synthetic */ efd f48955a;

    public efg(efd efdVar) {
        this.f48955a = efdVar;
    }

    @Override // android.webkit.ValueCallback
    public final /* synthetic */ void onReceiveValue(String str) {
        String str2 = str;
        efb efbVar = this.f48955a.f48949d;
        eev eevVar = this.f48955a.f48946a;
        WebView webView = this.f48955a.f48947b;
        boolean z = this.f48955a.f48948c;
        synchronized (eevVar.f48894a) {
            eevVar.f48897d--;
        }
        try {
            if (!TextUtils.isEmpty(str2)) {
                String optString = new JSONObject(str2).optString("text");
                if (efbVar.f48941m || TextUtils.isEmpty(webView.getTitle())) {
                    eevVar.m15118a(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append(StringUtils.f67179LF);
                    sb.append(optString);
                    eevVar.m15118a(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (!eevVar.m15120a()) {
                return;
            }
            efbVar.f48932d.m15108b(eevVar);
        } catch (JSONException e) {
            zzd.zzdz("Json string may be malformed.");
        } catch (Throwable th) {
            zzd.zzb("Failed to get webview content.", th);
            zzr.zzkz().m13979a(th, "ContentFetchTask.processWebViewContent");
        }
    }
}
