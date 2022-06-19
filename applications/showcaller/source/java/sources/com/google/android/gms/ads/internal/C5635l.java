package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.AbstractC6526gs;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.sk2;
/* renamed from: com.google.android.gms.ads.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/l.class */
public final class C5635l extends WebViewClient {

    /* renamed from: a */
    final /* synthetic */ BinderC5666r f18307a;

    public C5635l(BinderC5666r binderC5666r) {
        this.f18307a = binderC5666r;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        AbstractC6526gs abstractC6526gs;
        AbstractC6526gs abstractC6526gs2;
        AbstractC6526gs abstractC6526gs3;
        AbstractC6526gs abstractC6526gs4;
        abstractC6526gs = this.f18307a.f18402j;
        if (abstractC6526gs != null) {
            try {
                abstractC6526gs2 = this.f18307a.f18402j;
                abstractC6526gs2.mo12204R(sk2.m10997d(1, null, null));
            } catch (RemoteException e) {
                ei0.m15461i("#007 Could not call remote method.", e);
            }
        }
        abstractC6526gs3 = this.f18307a.f18402j;
        if (abstractC6526gs3 != null) {
            try {
                abstractC6526gs4 = this.f18307a.f18402j;
                abstractC6526gs4.mo12205C(0);
            } catch (RemoteException e2) {
                ei0.m15461i("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        AbstractC6526gs abstractC6526gs;
        AbstractC6526gs abstractC6526gs2;
        AbstractC6526gs abstractC6526gs3;
        AbstractC6526gs abstractC6526gs4;
        AbstractC6526gs abstractC6526gs5;
        AbstractC6526gs abstractC6526gs6;
        AbstractC6526gs abstractC6526gs7;
        AbstractC6526gs abstractC6526gs8;
        AbstractC6526gs abstractC6526gs9;
        AbstractC6526gs abstractC6526gs10;
        AbstractC6526gs abstractC6526gs11;
        AbstractC6526gs abstractC6526gs12;
        AbstractC6526gs abstractC6526gs13;
        if (str.startsWith(this.f18307a.m18174H6())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            abstractC6526gs10 = this.f18307a.f18402j;
            if (abstractC6526gs10 != null) {
                try {
                    abstractC6526gs11 = this.f18307a.f18402j;
                    abstractC6526gs11.mo12204R(sk2.m10997d(3, null, null));
                } catch (RemoteException e) {
                    ei0.m15461i("#007 Could not call remote method.", e);
                }
            }
            abstractC6526gs12 = this.f18307a.f18402j;
            if (abstractC6526gs12 != null) {
                try {
                    abstractC6526gs13 = this.f18307a.f18402j;
                    abstractC6526gs13.mo12205C(3);
                } catch (RemoteException e2) {
                    ei0.m15461i("#007 Could not call remote method.", e2);
                }
            }
            this.f18307a.m18176F6(0);
            return true;
        } else if (str.startsWith("gmsg://scriptLoadFailed")) {
            abstractC6526gs6 = this.f18307a.f18402j;
            if (abstractC6526gs6 != null) {
                try {
                    abstractC6526gs7 = this.f18307a.f18402j;
                    abstractC6526gs7.mo12204R(sk2.m10997d(1, null, null));
                } catch (RemoteException e3) {
                    ei0.m15461i("#007 Could not call remote method.", e3);
                }
            }
            abstractC6526gs8 = this.f18307a.f18402j;
            if (abstractC6526gs8 != null) {
                try {
                    abstractC6526gs9 = this.f18307a.f18402j;
                    abstractC6526gs9.mo12205C(0);
                } catch (RemoteException e4) {
                    ei0.m15461i("#007 Could not call remote method.", e4);
                }
            }
            this.f18307a.m18176F6(0);
            return true;
        } else if (str.startsWith("gmsg://adResized")) {
            abstractC6526gs4 = this.f18307a.f18402j;
            if (abstractC6526gs4 != null) {
                try {
                    abstractC6526gs5 = this.f18307a.f18402j;
                    abstractC6526gs5.mo12201d();
                } catch (RemoteException e5) {
                    ei0.m15461i("#007 Could not call remote method.", e5);
                }
            }
            this.f18307a.m18176F6(this.f18307a.m18177E6(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            abstractC6526gs = this.f18307a.f18402j;
            if (abstractC6526gs != null) {
                try {
                    abstractC6526gs2 = this.f18307a.f18402j;
                    abstractC6526gs2.mo12200f();
                    abstractC6526gs3 = this.f18307a.f18402j;
                    abstractC6526gs3.mo12203a();
                } catch (RemoteException e6) {
                    ei0.m15461i("#007 Could not call remote method.", e6);
                }
            }
            BinderC5666r.m18172J6(this.f18307a, BinderC5666r.m18173I6(this.f18307a, str));
            return true;
        }
    }
}
