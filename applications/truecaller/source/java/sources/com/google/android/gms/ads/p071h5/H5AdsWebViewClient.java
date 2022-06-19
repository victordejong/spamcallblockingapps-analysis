package com.google.android.gms.ads.p071h5;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.internal.ads.zzbqi;
import com.google.android.gms.internal.ads.zzbqv;
/* renamed from: com.google.android.gms.ads.h5.H5AdsWebViewClient */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/h5/H5AdsWebViewClient.class */
public final class H5AdsWebViewClient extends zzbqi {
    private final zzbqv zza;

    public H5AdsWebViewClient(@RecentlyNonNull Context context, @RecentlyNonNull WebView webView) {
        this.zza = new zzbqv(context, webView);
    }

    public void clearAdObjects() {
        this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbqi
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
