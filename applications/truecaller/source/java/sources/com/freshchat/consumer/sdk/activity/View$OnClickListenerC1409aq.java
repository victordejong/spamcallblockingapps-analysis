package com.freshchat.consumer.sdk.activity;

import android.view.View;
import com.freshchat.consumer.sdk.p061k.C1759u;
/* renamed from: com.freshchat.consumer.sdk.activity.aq */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/aq.class */
public class View$OnClickListenerC1409aq implements View.OnClickListener {

    /* renamed from: pI */
    public final /* synthetic */ FAQDetailsActivity f3923pI;

    public View$OnClickListenerC1409aq(FAQDetailsActivity fAQDetailsActivity) {
        this.f3923pI = fAQDetailsActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (((C1759u) this.f3923pI.f3912pe).m39656jD()) {
            this.f3923pI.finish();
        } else {
            ((C1759u) this.f3923pI.f3912pe).m39706jg();
        }
    }
}
