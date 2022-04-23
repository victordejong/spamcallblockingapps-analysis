package p131c.p161d.p170b.p224d.p225a.p228c;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzwt;
/* renamed from: c.d.b.d.a.c.d */
/* loaded from: classes-dex2jar.jar:c/d/b/d/a/c/d.class */
public final class C3232d extends WebViewClient {

    /* renamed from: a */
    public final /* synthetic */ zzj f11921a;

    public C3232d(zzj zzjVar) {
        this.f11921a = zzjVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzwt zzwtVar;
        zzwt zzwtVar2;
        zzwtVar = this.f11921a.f22818g;
        if (zzwtVar != null) {
            try {
                zzwtVar2 = this.f11921a.f22818g;
                zzwtVar2.mo11157a(0);
            } catch (RemoteException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzwt zzwtVar;
        zzwt zzwtVar2;
        String D;
        zzwt zzwtVar3;
        zzwt zzwtVar4;
        zzwt zzwtVar5;
        zzwt zzwtVar6;
        zzwt zzwtVar7;
        zzwt zzwtVar8;
        if (str.startsWith(this.f11921a.m17983T1())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            zzwtVar7 = this.f11921a.f22818g;
            if (zzwtVar7 != null) {
                try {
                    zzwtVar8 = this.f11921a.f22818g;
                    zzwtVar8.mo11157a(3);
                } catch (RemoteException e) {
                    zzbbq.m15851d("#007 Could not call remote method.", e);
                }
            }
            this.f11921a.m17974f(0);
            return true;
        } else if (str.startsWith("gmsg://scriptLoadFailed")) {
            zzwtVar5 = this.f11921a.f22818g;
            if (zzwtVar5 != null) {
                try {
                    zzwtVar6 = this.f11921a.f22818g;
                    zzwtVar6.mo11157a(0);
                } catch (RemoteException e2) {
                    zzbbq.m15851d("#007 Could not call remote method.", e2);
                }
            }
            this.f11921a.m17974f(0);
            return true;
        } else if (str.startsWith("gmsg://adResized")) {
            zzwtVar3 = this.f11921a.f22818g;
            if (zzwtVar3 != null) {
                try {
                    zzwtVar4 = this.f11921a.f22818g;
                    zzwtVar4.mo11153x();
                } catch (RemoteException e3) {
                    zzbbq.m15851d("#007 Could not call remote method.", e3);
                }
            }
            this.f11921a.m17974f(this.f11921a.m17987C(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            zzwtVar = this.f11921a.f22818g;
            if (zzwtVar != null) {
                try {
                    zzwtVar2 = this.f11921a.f22818g;
                    zzwtVar2.mo11155k();
                } catch (RemoteException e4) {
                    zzbbq.m15851d("#007 Could not call remote method.", e4);
                }
            }
            D = this.f11921a.m17986D(str);
            this.f11921a.m17985E(D);
            return true;
        }
    }
}
