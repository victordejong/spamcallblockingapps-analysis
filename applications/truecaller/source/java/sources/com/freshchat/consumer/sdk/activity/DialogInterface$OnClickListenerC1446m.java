package com.freshchat.consumer.sdk.activity;

import android.content.DialogInterface;
import android.view.View;
import android.widget.EditText;
import android.widget.RatingBar;
import com.freshchat.consumer.sdk.beans.Csat;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.activity.m */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/m.class */
public class DialogInterface$OnClickListenerC1446m implements DialogInterface.OnClickListener {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f3983be;

    /* renamed from: bm */
    public final /* synthetic */ boolean f3984bm;

    /* renamed from: hF */
    public final /* synthetic */ Csat f3985hF;

    /* renamed from: jx */
    public final /* synthetic */ RatingBar f3986jx;

    /* renamed from: jy */
    public final /* synthetic */ EditText f3987jy;

    /* renamed from: kJ */
    public final /* synthetic */ boolean f3988kJ;

    public DialogInterface$OnClickListenerC1446m(ConversationDetailActivity conversationDetailActivity, boolean z, RatingBar ratingBar, EditText editText, Csat csat, boolean z2) {
        this.f3983be = conversationDetailActivity;
        this.f3984bm = z;
        this.f3986jx = ratingBar;
        this.f3987jy = editText;
        this.f3985hF = csat;
        this.f3988kJ = z2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int progress = (!this.f3984bm || !C1471i.m40835f(this.f3986jx)) ? 0 : this.f3986jx.getProgress();
        String str = null;
        if (C1471i.m40835f(this.f3987jy)) {
            str = this.f3987jy.getText().toString();
            C1471i.m40853a(this.f3983be.getContext(), (View) this.f3987jy);
        }
        this.f3983be.m41264a(this.f3985hF, this.f3988kJ, progress, str);
        C1649bg.m40103a(this.f3983be.getContext(), this.f3983be.channelId, this.f3988kJ, progress, str);
        this.f3983be.m41258aY();
    }
}
