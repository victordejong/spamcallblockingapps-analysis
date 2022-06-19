package com.google.android.gms.ads.p058h5;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.internal.ads.zzbsk;
import com.google.android.gms.internal.ads.zzbsx;
/* renamed from: com.google.android.gms.ads.h5.H5AdsWebViewClient */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/h5/H5AdsWebViewClient.class */
public final class H5AdsWebViewClient extends zzbsk {
    private final zzbsx zza;

    public H5AdsWebViewClient(@RecentlyNonNull Context context, @RecentlyNonNull WebView webView) {
        this.zza = new zzbsx(context, webView);
    }

    public void clearAdObjects() {
        this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbsk
    @RecentlyNonNull
    public WebViewClient getDelegate() {
        return this.zza;
    }

    @RecentlyNullable
    public WebViewClient getDelegateWebViewClient() {
        return this.zza.getDelegate();
    }

    public void setDelegateWebViewClient(WebViewClient webViewClient) {
        this.zza.zzb(webViewClient);
    }
}
