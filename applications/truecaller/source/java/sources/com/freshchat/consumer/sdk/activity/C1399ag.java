package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import androidx.appcompat.widget.SearchView;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1716k;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.activity.ag */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ag.class */
public class C1399ag implements SearchView.AbstractC0071l {

    /* renamed from: ae */
    public final /* synthetic */ ArticleListActivity f3902ae;

    public C1399ag(ArticleListActivity articleListActivity) {
        this.f3902ae = articleListActivity;
    }

    @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
    public boolean onQueryTextChange(String str) {
        String str2;
        String str3;
        String str4;
        String str5;
        List list;
        str2 = this.f3902ae.f3691K;
        if (C1626as.m40233a(str2)) {
            str4 = this.f3902ae.f3691K;
            if (str4.length() != 1 && C1626as.isEmpty(str)) {
                Context context = this.f3902ae.getContext();
                str5 = this.f3902ae.f3691K;
                list = this.f3902ae.f3703W;
                C1649bg.m40095a(context, str5, C1716k.m39900b(list), false);
            }
        }
        if (this.f3902ae.m41101dH()) {
            this.f3902ae.onUserInteraction();
        }
        this.f3902ae.f3691K = str;
        ArticleListActivity articleListActivity = this.f3902ae;
        str3 = articleListActivity.f3691K;
        articleListActivity.m41380d(str3);
        return true;
    }

    @Override // androidx.appcompat.widget.SearchView.AbstractC0071l
    public boolean onQueryTextSubmit(String str) {
        this.f3902ae.m41380d(str);
        return true;
    }
}
