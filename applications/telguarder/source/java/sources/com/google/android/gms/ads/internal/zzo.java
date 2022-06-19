package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.zzwx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzo.class */
public final class zzo extends WebViewClient {
    private final /* synthetic */ zzl zzbpv;

    public zzo(zzl zzlVar) {
        this.zzbpv = zzlVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzwx zzwxVar;
        zzwx zzwxVar2;
        zzwxVar = this.zzbpv.zzbps;
        if (zzwxVar != null) {
            try {
                zzwxVar2 = this.zzbpv.zzbps;
                zzwxVar2.onAdFailedToLoad(0);
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzwx zzwxVar;
        zzwx zzwxVar2;
        String zzbn;
        zzwx zzwxVar3;
        zzwx zzwxVar4;
        zzwx zzwxVar5;
        zzwx zzwxVar6;
        zzwx zzwxVar7;
        zzwx zzwxVar8;
        if (str.startsWith(this.zzbpv.zzkm())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            zzwxVar7 = this.zzbpv.zzbps;
            if (zzwxVar7 != null) {
                try {
                    zzwxVar8 = this.zzbpv.zzbps;
                    zzwxVar8.onAdFailedToLoad(3);
                } catch (RemoteException e) {
                    zzd.zze("#007 Could not call remote method.", e);
                }
            }
            this.zzbpv.zzbq(0);
            return true;
        } else if (str.startsWith("gmsg://scriptLoadFailed")) {
            zzwxVar5 = this.zzbpv.zzbps;
            if (zzwxVar5 != null) {
                try {
                    zzwxVar6 = this.zzbpv.zzbps;
                    zzwxVar6.onAdFailedToLoad(0);
                } catch (RemoteException e2) {
                    zzd.zze("#007 Could not call remote method.", e2);
                }
            }
            this.zzbpv.zzbq(0);
            return true;
        } else if (str.startsWith("gmsg://adResized")) {
            zzwxVar3 = this.zzbpv.zzbps;
            if (zzwxVar3 != null) {
                try {
                    zzwxVar4 = this.zzbpv.zzbps;
                    zzwxVar4.onAdLoaded();
                } catch (RemoteException e3) {
                    zzd.zze("#007 Could not call remote method.", e3);
                }
            }
            this.zzbpv.zzbq(this.zzbpv.zzbm(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            zzwxVar = this.zzbpv.zzbps;
            if (zzwxVar != null) {
                try {
                    zzwxVar2 = this.zzbpv.zzbps;
                    zzwxVar2.onAdLeftApplication();
                } catch (RemoteException e4) {
                    zzd.zze("#007 Could not call remote method.", e4);
                }
            }
            zzbn = this.zzbpv.zzbn(str);
            this.zzbpv.zzbo(zzbn);
            return true;
        }
    }
}
