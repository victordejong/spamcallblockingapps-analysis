package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.nm1;
/* renamed from: com.google.android.gms.ads.internal.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/l.class */
final class C1385l extends WebViewClient {

    /* renamed from: a */
    final /* synthetic */ q f5501a;

    C1385l(q qVar) {
        this.f5501a = qVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        if (q.D6(this.f5501a) != null) {
            try {
                q.D6(this.f5501a).m7063Y(nm1.m6425d(1, null, null));
            } catch (RemoteException e) {
                C1894po.m6177i("#007 Could not call remote method.", e);
            }
        }
        if (q.D6(this.f5501a) != null) {
            try {
                q.D6(this.f5501a).m7064H(0);
            } catch (RemoteException e2) {
                C1894po.m6177i("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith(this.f5501a.C6())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            if (q.D6(this.f5501a) != null) {
                try {
                    q.D6(this.f5501a).m7063Y(nm1.m6425d(3, null, null));
                } catch (RemoteException e) {
                    C1894po.m6177i("#007 Could not call remote method.", e);
                }
            }
            if (q.D6(this.f5501a) != null) {
                try {
                    q.D6(this.f5501a).m7064H(3);
                } catch (RemoteException e2) {
                    C1894po.m6177i("#007 Could not call remote method.", e2);
                }
            }
            this.f5501a.A6(0);
            return true;
        } else if (str.startsWith("gmsg://scriptLoadFailed")) {
            if (q.D6(this.f5501a) != null) {
                try {
                    q.D6(this.f5501a).m7063Y(nm1.m6425d(1, null, null));
                } catch (RemoteException e3) {
                    C1894po.m6177i("#007 Could not call remote method.", e3);
                }
            }
            if (q.D6(this.f5501a) != null) {
                try {
                    q.D6(this.f5501a).m7064H(0);
                } catch (RemoteException e4) {
                    C1894po.m6177i("#007 Could not call remote method.", e4);
                }
            }
            this.f5501a.A6(0);
            return true;
        } else if (str.startsWith("gmsg://adResized")) {
            if (q.D6(this.f5501a) != null) {
                try {
                    q.D6(this.f5501a).m7060d();
                } catch (RemoteException e5) {
                    C1894po.m6177i("#007 Could not call remote method.", e5);
                }
            }
            this.f5501a.A6(this.f5501a.z6(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            if (q.D6(this.f5501a) != null) {
                try {
                    q.D6(this.f5501a).m7062a();
                } catch (RemoteException e6) {
                    C1894po.m6177i("#007 Could not call remote method.", e6);
                }
            }
            q.F6(this.f5501a, q.E6(this.f5501a, str));
            return true;
        }
    }
}
