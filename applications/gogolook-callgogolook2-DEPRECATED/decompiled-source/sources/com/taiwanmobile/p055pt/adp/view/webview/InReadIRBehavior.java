package com.taiwanmobile.p055pt.adp.view.webview;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.InReadIRBehavior */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/InReadIRBehavior.class */
public abstract class InReadIRBehavior implements IRBehavior {
    @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
    public int checkFloatAdPosition() {
        return 0;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
    public abstract void closeWebView(String str);

    @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
    public void disableCloseButton() {
    }

    public abstract void passElementOffset(double d, double d2, double d3, double d4);
}
