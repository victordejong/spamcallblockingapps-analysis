package com.freshchat.consumer.sdk.activity;

import android.view.View;
import com.freshchat.consumer.sdk.p061k.C1761w;
/* renamed from: com.freshchat.consumer.sdk.activity.bc */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/bc.class */
public class View$OnFocusChangeListenerC1423bc implements View.OnFocusChangeListener {

    /* renamed from: qL */
    public final /* synthetic */ FAQSearchActivity f3938qL;

    public View$OnFocusChangeListenerC1423bc(FAQSearchActivity fAQSearchActivity) {
        this.f3938qL = fAQSearchActivity;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.f3938qL.f3865rE = z;
        if (((C1761w) this.f3938qL.f3912pe).m39630jK()) {
            FAQSearchActivity fAQSearchActivity = this.f3938qL;
            fAQSearchActivity.mo41093bv(fAQSearchActivity.mo41088hV());
        }
    }
}
