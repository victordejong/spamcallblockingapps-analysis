package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.internal.ads.eki;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/zzo.class */
public final class zzo extends WebViewClient {
    private final /* synthetic */ zzl zzbqf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(zzl zzlVar) {
        this.zzbqf = zzlVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        eki ekiVar;
        eki ekiVar2;
        ekiVar = this.zzbqf.zzbqc;
        if (ekiVar != null) {
            try {
                ekiVar2 = this.zzbqf.zzbqc;
                ekiVar2.a(0);
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        eki ekiVar;
        eki ekiVar2;
        String zzbn;
        eki ekiVar3;
        eki ekiVar4;
        eki ekiVar5;
        eki ekiVar6;
        eki ekiVar7;
        eki ekiVar8;
        if (str.startsWith(this.zzbqf.zzkq())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            ekiVar7 = this.zzbqf.zzbqc;
            if (ekiVar7 != null) {
                try {
                    ekiVar8 = this.zzbqf.zzbqc;
                    ekiVar8.a(3);
                } catch (RemoteException e) {
                    zzd.zze("#007 Could not call remote method.", e);
                }
            }
            this.zzbqf.zzbt(0);
            return true;
        } else if (str.startsWith("gmsg://scriptLoadFailed")) {
            ekiVar5 = this.zzbqf.zzbqc;
            if (ekiVar5 != null) {
                try {
                    ekiVar6 = this.zzbqf.zzbqc;
                    ekiVar6.a(0);
                } catch (RemoteException e2) {
                    zzd.zze("#007 Could not call remote method.", e2);
                }
            }
            this.zzbqf.zzbt(0);
            return true;
        } else if (str.startsWith("gmsg://adResized")) {
            ekiVar3 = this.zzbqf.zzbqc;
            if (ekiVar3 != null) {
                try {
                    ekiVar4 = this.zzbqf.zzbqc;
                    ekiVar4.c();
                } catch (RemoteException e3) {
                    zzd.zze("#007 Could not call remote method.", e3);
                }
            }
            this.zzbqf.zzbt(this.zzbqf.zzbm(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            ekiVar = this.zzbqf.zzbqc;
            if (ekiVar != null) {
                try {
                    ekiVar2 = this.zzbqf.zzbqc;
                    ekiVar2.b();
                } catch (RemoteException e4) {
                    zzd.zze("#007 Could not call remote method.", e4);
                }
            }
            zzbn = this.zzbqf.zzbn(str);
            this.zzbqf.zzbo(zzbn);
            return true;
        }
    }
}
