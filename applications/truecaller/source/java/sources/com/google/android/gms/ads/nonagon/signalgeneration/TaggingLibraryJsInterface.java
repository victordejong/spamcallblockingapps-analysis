package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.os.Bundle;
import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzaas;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzcgt;
import com.mopub.common.Constants;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/TaggingLibraryJsInterface.class */
public final class TaggingLibraryJsInterface {
    private final Context zza;
    private final WebView zzb;
    private final zzaas zzc;

    public TaggingLibraryJsInterface(WebView webView, zzaas zzaasVar) {
        this.zzb = webView;
        this.zza = webView.getContext();
        this.zzc = zzaasVar;
    }

    @JavascriptInterface
    @KeepForSdk
    public String getClickSignals(String str) {
        zzbjl.zza(this.zza);
        try {
            return this.zzc.zzb().zzm(this.zza, str, this.zzb);
        } catch (RuntimeException e) {
            zzcgt.zzg("Exception getting click signals. ", e);
            zzt.zzg().zzk(e, "TaggingLibraryJsInterface.getClickSignals");
            return "";
        }
    }

    @JavascriptInterface
    @KeepForSdk
    public String getQueryInfo() {
        zzt.zzc();
        String uuid = UUID.randomUUID().toString();
        Bundle m8654X0 = C22128a.m8654X0("query_info_type", "requester_type_6");
        Context context = this.zza;
        AdFormat adFormat = AdFormat.BANNER;
        AdRequest.Builder builder = new AdRequest.Builder();
        builder.addNetworkExtrasBundle(AdMobAdapter.class, m8654X0);
        QueryInfo.generate(context, adFormat, builder.build(), new zzai(this, uuid));
        return uuid;
    }

    @JavascriptInterface
    @KeepForSdk
    public String getViewSignals() {
        zzbjl.zza(this.zza);
        try {
            return this.zzc.zzb().zzo(this.zza, this.zzb, null);
        } catch (RuntimeException e) {
            zzcgt.zzg("Exception getting view signals. ", e);
            zzt.zzg().zzk(e, "TaggingLibraryJsInterface.getViewSignals");
            return "";
        }
    }

    @JavascriptInterface
    @KeepForSdk
    public void reportTouchEvent(String str) {
        zzbjl.zza(this.zza);
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i = jSONObject.getInt("x");
            int i2 = jSONObject.getInt("y");
            int i3 = jSONObject.getInt(Constants.VAST_DURATION_MS);
            float f = (float) jSONObject.getDouble("force");
            int i4 = jSONObject.getInt("type");
            this.zzc.zzd(MotionEvent.obtain(0L, i3, i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? -1 : 3 : 2 : 1 : 0, i, i2, f, 1.0f, 0, 1.0f, 1.0f, 0, 0));
        } catch (RuntimeException | JSONException e) {
            zzcgt.zzg("Failed to parse the touch string. ", e);
            zzt.zzg().zzk(e, "TaggingLibraryJsInterface.reportTouchEvent");
        }
    }
}
