package com.aotter.net.trek.ads.view;

import android.content.DialogInterface;
/* renamed from: com.aotter.net.trek.ads.view.g */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/g.class */
public class DialogInterface$OnDismissListenerC1696g implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ InterActiveWebView f1384a;

    public DialogInterface$OnDismissListenerC1696g(InterActiveWebView interActiveWebView) {
        this.f1384a = interActiveWebView;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        InterActiveWebView interActiveWebView;
        InterActiveWebView interActiveWebView2;
        interActiveWebView = this.f1384a.f1272k;
        if (interActiveWebView != null) {
            interActiveWebView2 = this.f1384a.f1272k;
            interActiveWebView2.destroy();
        }
    }
}
