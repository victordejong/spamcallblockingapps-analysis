package com.explorestack.iab.vast;

import com.explorestack.iab.utils.AbstractC9588c;
import com.explorestack.iab.vast.activity.VastActivity;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/VastActivityListener.class */
public interface VastActivityListener extends VastErrorListener {
    void onVastClick(VastActivity vastActivity, VastRequest vastRequest, AbstractC9588c abstractC9588c, String str);

    void onVastComplete(VastActivity vastActivity, VastRequest vastRequest);

    void onVastDismiss(VastActivity vastActivity, VastRequest vastRequest, boolean z);

    void onVastShown(VastActivity vastActivity, VastRequest vastRequest);
}
