package com.freshchat.consumer.sdk.p057j;

import android.content.Intent;
import android.view.View;
import com.freshchat.consumer.sdk.activity.BotFaqDetailsActivity;
import com.freshchat.consumer.sdk.beans.fragment.StaticTemplateFragment;
import com.freshchat.consumer.sdk.p045a.C1355w;
/* renamed from: com.freshchat.consumer.sdk.j.db */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/db.class */
public class C1706db implements C1355w.AbstractC1357b {

    /* renamed from: iC */
    public final /* synthetic */ C1615ak f4501iC;

    public C1706db(C1615ak c1615ak) {
        this.f4501iC = c1615ak;
    }

    @Override // com.freshchat.consumer.sdk.p045a.C1355w.AbstractC1357b
    /* renamed from: a */
    public void mo39967a(View view, StaticTemplateFragment staticTemplateFragment, String str) {
        Intent intent = new Intent(this.f4501iC.context, BotFaqDetailsActivity.class);
        intent.putExtra("MESSAGE_ALIAS", str);
        intent.putExtra("EXTRA_TITLE", staticTemplateFragment.getLabel());
        intent.putExtra("REFERENCE_ID", staticTemplateFragment.getReferenceId());
        intent.putExtra("PLACEOLDER_REFERENCE_ID", staticTemplateFragment.getPlaceholderReferenceId());
        this.f4501iC.context.startActivity(intent);
    }
}
