package com.taiwanmobile.p055pt.adp.view;
/* renamed from: com.taiwanmobile.pt.adp.view.TWMAd */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAd.class */
public interface TWMAd {
    @Deprecated
    boolean isReady();

    void loadAd(TWMAdRequest tWMAdRequest);

    void setAdListener(TWMAdViewListener tWMAdViewListener);

    void stopLoading();
}
