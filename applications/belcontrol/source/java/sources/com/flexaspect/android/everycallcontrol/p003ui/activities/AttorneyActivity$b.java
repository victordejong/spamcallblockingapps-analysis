package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.graphics.Bitmap;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.AttorneyActivity$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$b.class */
public class AttorneyActivity$b extends WebViewClient {

    /* renamed from: a */
    public final /* synthetic */ AttorneyActivity f2720a;

    public AttorneyActivity$b(AttorneyActivity attorneyActivity) {
        this.f2720a = attorneyActivity;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        AttorneyActivity.A(this.f2720a).setVisibility(8);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        AttorneyActivity.A(this.f2720a).setVisibility(0);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }
}
