package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efg.class */
public final class efg implements ValueCallback<String> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ efd f27775a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public efg(efd efdVar) {
        this.f27775a = efdVar;
    }

    @Override // android.webkit.ValueCallback
    public final /* synthetic */ void onReceiveValue(String str) {
        String str2 = str;
        efb efbVar = this.f27775a.f27770d;
        eev eevVar = this.f27775a.f27767a;
        WebView webView = this.f27775a.f27768b;
        boolean z = this.f27775a.f27769c;
        synchronized (eevVar.f27747a) {
            eevVar.f27750d--;
        }
        try {
            if (!TextUtils.isEmpty(str2)) {
                String optString = new JSONObject(str2).optString("text");
                if (efbVar.m || TextUtils.isEmpty(webView.getTitle())) {
                    eevVar.a(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append(StringUtils.LF);
                    sb.append(optString);
                    eevVar.a(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (eevVar.a()) {
                efbVar.f27766d.b(eevVar);
            }
        } catch (JSONException e) {
            zzd.zzdz("Json string may be malformed.");
        } catch (Throwable th) {
            zzd.zzb("Failed to get webview content.", th);
            zzr.zzkz().a(th, "ContentFetchTask.processWebViewContent");
        }
    }
}
