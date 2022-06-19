package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.zzazk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzo.class */
public final class zzo extends WebViewClient {
    private final /* synthetic */ zzl zzbpv;

    public zzo(zzl zzlVar) {
        this.zzbpv = zzlVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        if (zzl.zza(this.zzbpv) != null) {
            try {
                zzl.zza(this.zzbpv).onAdFailedToLoad(0);
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith(this.zzbpv.zzkm())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            if (zzl.zza(this.zzbpv) != null) {
                try {
                    zzl.zza(this.zzbpv).onAdFailedToLoad(3);
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
            this.zzbpv.zzbq(0);
            return true;
        } else if (str.startsWith("gmsg://scriptLoadFailed")) {
            if (zzl.zza(this.zzbpv) != null) {
                try {
                    zzl.zza(this.zzbpv).onAdFailedToLoad(0);
                } catch (RemoteException e2) {
                    zzazk.zze("#007 Could not call remote method.", e2);
                }
            }
            this.zzbpv.zzbq(0);
            return true;
        } else if (str.startsWith("gmsg://adResized")) {
            if (zzl.zza(this.zzbpv) != null) {
                try {
                    zzl.zza(this.zzbpv).onAdLoaded();
                } catch (RemoteException e3) {
                    zzazk.zze("#007 Could not call remote method.", e3);
                }
            }
            this.zzbpv.zzbq(this.zzbpv.zzbm(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            if (zzl.zza(this.zzbpv) != null) {
                try {
                    zzl.zza(this.zzbpv).onAdLeftApplication();
                } catch (RemoteException e4) {
                    zzazk.zze("#007 Could not call remote method.", e4);
                }
            }
            zzl.zzb(this.zzbpv, zzl.zza(this.zzbpv, str));
            return true;
        }
    }
}
