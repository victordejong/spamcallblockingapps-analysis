package com.freshchat.consumer.sdk.activity;

import android.widget.Button;
import android.widget.RatingBar;
import n3.b.a.g;
/* renamed from: com.freshchat.consumer.sdk.activity.o */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/o.class */
public class C1448o implements RatingBar.OnRatingBarChangeListener {

    /* renamed from: be */
    public final /* synthetic */ ConversationDetailActivity f3992be;

    /* renamed from: bm */
    public final /* synthetic */ boolean f3993bm;

    public C1448o(ConversationDetailActivity conversationDetailActivity, boolean z) {
        this.f3992be = conversationDetailActivity;
        this.f3993bm = z;
    }

    @Override // android.widget.RatingBar.OnRatingBarChangeListener
    public void onRatingChanged(RatingBar ratingBar, float f, boolean z) {
        g gVar;
        gVar = this.f3992be.f3770aU;
        Button d = gVar.d(-1);
        boolean z2 = f > 0.0f;
        if (d == null || !this.f3993bm) {
            return;
        }
        d.setEnabled(z2);
    }
}
