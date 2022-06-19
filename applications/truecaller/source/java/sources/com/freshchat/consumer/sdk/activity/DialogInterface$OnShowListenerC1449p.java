package com.freshchat.consumer.sdk.activity;

import android.content.DialogInterface;
import android.widget.Button;
import n3.b.a.g;
/* renamed from: com.freshchat.consumer.sdk.activity.p */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/p.class */
public class DialogInterface$OnShowListenerC1449p implements DialogInterface.OnShowListener {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f3994be;

    /* renamed from: bm */
    public final /* synthetic */ boolean f3995bm;

    public DialogInterface$OnShowListenerC1449p(ConversationDetailActivity conversationDetailActivity, boolean z) {
        this.f3994be = conversationDetailActivity;
        this.f3995bm = z;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Button d = ((g) dialogInterface).d(-1);
        if (d == null || !this.f3995bm) {
            return;
        }
        d.setEnabled(false);
    }
}
