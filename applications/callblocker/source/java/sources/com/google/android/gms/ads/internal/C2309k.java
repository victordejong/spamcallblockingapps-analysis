package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.C3556uu;
import com.google.android.gms.internal.ads.dza;
/* renamed from: com.google.android.gms.ads.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/k.class */
public final class C2309k extends WebViewClient {

    /* renamed from: a */
    private final /* synthetic */ BinderC2310l f6656a;

    public C2309k(BinderC2310l binderC2310l) {
        this.f6656a = binderC2310l;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        dza dzaVar;
        dza dzaVar2;
        dzaVar = this.f6656a.f6663g;
        if (dzaVar != null) {
            try {
                dzaVar2 = this.f6656a.f6663g;
                dzaVar2.mo8138a(0);
            } catch (RemoteException e) {
                C3556uu.m6744e("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        dza dzaVar;
        dza dzaVar2;
        String m14782d;
        dza dzaVar3;
        dza dzaVar4;
        dza dzaVar5;
        dza dzaVar6;
        dza dzaVar7;
        dza dzaVar8;
        boolean z = false;
        if (!str.startsWith(this.f6656a.m14777t())) {
            if (str.startsWith("gmsg://noAdLoaded")) {
                dzaVar7 = this.f6656a.f6663g;
                if (dzaVar7 != null) {
                    try {
                        dzaVar8 = this.f6656a.f6663g;
                        dzaVar8.mo8138a(3);
                    } catch (RemoteException e) {
                        C3556uu.m6744e("#007 Could not call remote method.", e);
                    }
                }
                this.f6656a.m14791a(0);
                z = true;
            } else if (str.startsWith("gmsg://scriptLoadFailed")) {
                dzaVar5 = this.f6656a.f6663g;
                if (dzaVar5 != null) {
                    try {
                        dzaVar6 = this.f6656a.f6663g;
                        dzaVar6.mo8138a(0);
                    } catch (RemoteException e2) {
                        C3556uu.m6744e("#007 Could not call remote method.", e2);
                    }
                }
                this.f6656a.m14791a(0);
                z = true;
            } else if (str.startsWith("gmsg://adResized")) {
                dzaVar3 = this.f6656a.f6663g;
                if (dzaVar3 != null) {
                    try {
                        dzaVar4 = this.f6656a.f6663g;
                        dzaVar4.mo8136c();
                    } catch (RemoteException e3) {
                        C3556uu.m6744e("#007 Could not call remote method.", e3);
                    }
                }
                this.f6656a.m14791a(this.f6656a.m14784c(str));
                z = true;
            } else if (str.startsWith("gmsg://")) {
                z = true;
            } else {
                dzaVar = this.f6656a.f6663g;
                if (dzaVar != null) {
                    try {
                        dzaVar2 = this.f6656a.f6663g;
                        dzaVar2.mo8137b();
                    } catch (RemoteException e4) {
                        C3556uu.m6744e("#007 Could not call remote method.", e4);
                    }
                }
                m14782d = this.f6656a.m14782d(str);
                this.f6656a.m14780e(m14782d);
                z = true;
            }
        }
        return z;
    }
}
