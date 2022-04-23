package com.taiwanmobile.p055pt.adp.view;

import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
/* renamed from: com.taiwanmobile.pt.adp.view.TWMAdViewListener */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdViewListener.class */
public interface TWMAdViewListener {
    void onDismissScreen(TWMAd tWMAd);

    void onFailedToReceiveAd(TWMAd tWMAd, TWMAdRequest.ErrorCode errorCode);

    void onLeaveApplication(TWMAd tWMAd);

    void onPresentScreen(TWMAd tWMAd);

    void onReceiveAd(TWMAd tWMAd);
}
