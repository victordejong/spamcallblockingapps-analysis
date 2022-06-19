package com.freshchat.consumer.sdk.activity;

import android.view.MenuItem;
import androidx.appcompat.widget.SearchView;
import com.freshchat.consumer.sdk.service.p067d.C1867b;
import com.tenor.android.core.constant.StringConstant;
import p1727n3.p1807k.p1821i.AbstractC26603h;
/* renamed from: com.freshchat.consumer.sdk.activity.ad */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ad.class */
public class C1396ad implements AbstractC26603h {

    /* renamed from: ae */
    public final /* synthetic */ ArticleListActivity f3899ae;

    public C1396ad(ArticleListActivity articleListActivity) {
        this.f3899ae = articleListActivity;
    }

    @Override // p1727n3.p1807k.p1821i.AbstractC26603h
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        boolean z;
        this.f3899ae.f3690J = false;
        this.f3899ae.f3701U = true;
        z = this.f3899ae.f3702V;
        if (z) {
            this.f3899ae.m41100e(StringConstant.SPACE);
            this.f3899ae.finish();
        }
        this.f3899ae.m41364w();
        this.f3899ae.m41362y();
        this.f3899ae.m41388aJ();
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.freshchat.consumer.sdk.activity.ArticleListActivity, android.app.Activity] */
    @Override // p1727n3.p1807k.p1821i.AbstractC26603h
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        boolean z;
        SearchView searchView;
        SearchView searchView2;
        this.f3899ae.f3690J = true;
        z = this.f3899ae.f3701U;
        if (z && (menuItem.getActionView() instanceof SearchView)) {
            this.f3899ae.f3695O = (SearchView) menuItem.getActionView();
            searchView = this.f3899ae.f3695O;
            searchView.m43120B(StringConstant.SPACE, true);
            searchView2 = this.f3899ae.f3695O;
            searchView2.performClick();
        }
        this.f3899ae.m41384bL();
        this.f3899ae.m41362y();
        this.f3899ae.m41388aJ();
        new C1867b(this.f3899ae.getApplicationContext(), C1867b.EnumC1868a.faq_search_launch).m39394g("source", "article_list").m39395dB();
        return true;
    }
}
