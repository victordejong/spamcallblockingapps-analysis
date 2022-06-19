package com.freshchat.consumer.sdk.activity;

import android.view.View;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.C1910n;
/* renamed from: com.freshchat.consumer.sdk.activity.x */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/x.class */
public class View$OnClickListenerC1457x implements View.OnClickListener {

    /* renamed from: F */
    public final /* synthetic */ ArticleDetailActivity f4004F;

    public View$OnClickListenerC1457x(ArticleDetailActivity articleDetailActivity) {
        this.f4004F = articleDetailActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        String str2;
        String str3;
        View view2;
        View view3;
        View view4;
        C1910n.EnumC1911a enumC1911a = view.getId() == C1298R.C1300id.freshchat_upvote ? C1910n.EnumC1911a.Upvote : C1910n.EnumC1911a.Downvote;
        str = this.f4004F.f3685v;
        String unused = ArticleDetailActivity.f3667z = str;
        str2 = this.f4004F.categoryId;
        str3 = this.f4004F.f3685v;
        C1870d.m39383c(this.f4004F.getContext(), new C1910n(str2, str3, enumC1911a), new C1458y(this));
        if (view.getId() != C1298R.C1300id.freshchat_downvote || !this.f4004F.f3673g.shouldShowContactUsOnFaqNotHelpful()) {
            this.f4004F.m41401n();
        } else {
            view2 = this.f4004F.f3681o;
            view2.bringToFront();
            view3 = this.f4004F.f3681o;
            view3.setVisibility(0);
            view4 = this.f4004F.f3680n;
            view4.setVisibility(8);
        }
        this.f4004F.m41422a(enumC1911a);
    }
}
