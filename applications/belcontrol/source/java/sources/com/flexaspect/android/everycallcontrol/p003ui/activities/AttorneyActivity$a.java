package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.AttorneyActivity$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/AttorneyActivity$a.class */
public class AttorneyActivity$a extends WebChromeClient {

    /* renamed from: a */
    public final /* synthetic */ AttorneyActivity f2719a;

    public AttorneyActivity$a(AttorneyActivity attorneyActivity) {
        this.f2719a = attorneyActivity;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        AttorneyActivity.A(this.f2719a).setProgress(i);
    }
}
