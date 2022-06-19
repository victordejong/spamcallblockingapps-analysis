package com.freshchat.consumer.sdk.activity;

import android.view.View;
import android.widget.Toast;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p061k.C1759u;
import com.freshchat.consumer.sdk.service.p068e.C1890am;
/* renamed from: com.freshchat.consumer.sdk.activity.ar */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ar.class */
public class View$OnClickListenerC1410ar implements View.OnClickListener {

    /* renamed from: pI */
    public final /* synthetic */ FAQDetailsActivity f3924pI;

    public View$OnClickListenerC1410ar(FAQDetailsActivity fAQDetailsActivity) {
        this.f3924pI = fAQDetailsActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!C1618al.m40261aS(this.f3924pI.getContext())) {
            Toast.makeText(this.f3924pI.getContext(), C1298R.string.freshchat_error_message_not_connected_to_internet, 1).show();
            return;
        }
        C1890am.EnumC1891a enumC1891a = view.getId() == C1298R.C1300id.freshchat_upvote ? C1890am.EnumC1891a.THUMBS_UP : C1890am.EnumC1891a.THUMBS_DOWN;
        ((C1759u) this.f3924pI.f3912pe).m39666a(enumC1891a);
        if (enumC1891a == C1890am.EnumC1891a.THUMBS_UP) {
            this.f3924pI.m41151n();
        } else {
            this.f3924pI.m41154iF();
        }
    }
}
