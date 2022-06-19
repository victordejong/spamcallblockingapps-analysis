package com.google.android.gms.ads.nonagon.signalgeneration;

import android.webkit.WebView;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzcgt;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzai.class */
public final class zzai extends QueryInfoGenerationCallback {
    public final /* synthetic */ String zza;
    public final /* synthetic */ TaggingLibraryJsInterface zzb;

    public zzai(TaggingLibraryJsInterface taggingLibraryJsInterface, String str) {
        this.zzb = taggingLibraryJsInterface;
        this.zza = str;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        WebView webView;
        String valueOf = String.valueOf(str);
        zzcgt.zzi(valueOf.length() != 0 ? "Failed to generate query info for the tagging library, error: ".concat(valueOf) : new String("Failed to generate query info for the tagging library, error: "));
        String format = String.format("window.postMessage({'paw_id': '%1$s', 'error': '%2$s'}, '*');", this.zza, str);
        webView = this.zzb.zzb;
        webView.evaluateJavascript(format, null);
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        String str;
        WebView webView;
        String query = queryInfo.getQuery();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("paw_id", this.zza);
            jSONObject.put("signal", query);
            str = String.format("window.postMessage(%1$s, '*');", jSONObject);
        } catch (JSONException e) {
            str = String.format("window.postMessage({'paw_id': '%1$s', 'signal': '%2$s'}, '*');", this.zza, queryInfo.getQuery());
        }
        webView = this.zzb.zzb;
        webView.evaluateJavascript(str, null);
    }
}
