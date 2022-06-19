package com.freshchat.consumer.sdk.activity;

import android.widget.TextView;
/* renamed from: com.freshchat.consumer.sdk.activity.l */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/l.class */
public class RunnableC1445l implements Runnable {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f3981be;

    /* renamed from: jw */
    public final /* synthetic */ String f3982jw;

    public RunnableC1445l(ConversationDetailActivity conversationDetailActivity, String str) {
        this.f3981be = conversationDetailActivity;
        this.f3982jw = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        TextView textView;
        TextView textView2;
        TextView textView3;
        textView = this.f3981be.f3760aI;
        if (textView != null) {
            textView2 = this.f3981be.f3760aI;
            if (textView2.getVisibility() != 0) {
                return;
            }
            textView3 = this.f3981be.f3760aI;
            textView3.setText(this.f3982jw);
        }
    }
}
