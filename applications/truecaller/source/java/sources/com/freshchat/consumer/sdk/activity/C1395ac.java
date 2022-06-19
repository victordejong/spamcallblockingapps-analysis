package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.os.Bundle;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.Freshchat;
import com.freshchat.consumer.sdk.beans.Article;
import com.freshchat.consumer.sdk.p045a.C1305a;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p054g.C1541b;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1869w.p1870a.AbstractC27043a;
import p1727n3.p1869w.p1871b.C27051b;
/* renamed from: com.freshchat.consumer.sdk.activity.ac */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ac.class */
public class C1395ac implements AbstractC27043a.AbstractC27044a<List<Article>> {

    /* renamed from: ae */
    public final /* synthetic */ ArticleListActivity f3898ae;

    public C1395ac(ArticleListActivity articleListActivity) {
        this.f3898ae = articleListActivity;
    }

    /* renamed from: a */
    public void onLoadFinished(C27051b<List<Article>> c27051b, List<Article> list) {
        boolean z;
        List list2;
        List list3;
        z = this.f3898ae.f3700T;
        if (z && !((C1541b) c27051b).m40576gE()) {
            int m39900b = C1716k.m39900b(list);
            if (m39900b == 0) {
                this.f3898ae.finish();
                C1471i.m40855a(this.f3898ae.getContext(), C1298R.string.freshchat_faqs_reload_and_redirect);
                Freshchat.showFAQs(this.f3898ae.getContext(), this.f3898ae.f3712g);
                return;
            } else if (m39900b == 1 && list.get(0) != null) {
                this.f3898ae.finish();
                this.f3898ae.m41395a(Long.parseLong(list.get(0).getId()));
                return;
            }
        }
        list2 = this.f3898ae.f3703W;
        list2.clear();
        list3 = this.f3898ae.f3703W;
        list3.addAll(list);
        this.f3898ae.m41363x();
        this.f3898ae.m41384bL();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.freshchat.consumer.sdk.activity.ArticleListActivity, android.app.Activity] */
    /* JADX WARN: Type inference failed for: r2v11, types: [com.freshchat.consumer.sdk.activity.ArticleListActivity, android.app.Activity] */
    /* JADX WARN: Type inference failed for: r2v14, types: [com.freshchat.consumer.sdk.activity.ArticleListActivity, android.app.Activity] */
    /* JADX WARN: Type inference failed for: r2v17, types: [com.freshchat.consumer.sdk.activity.ArticleListActivity, android.app.Activity] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.freshchat.consumer.sdk.activity.ArticleListActivity, android.app.Activity] */
    /* JADX WARN: Type inference failed for: r2v8, types: [com.freshchat.consumer.sdk.activity.ArticleListActivity, android.app.Activity] */
    @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
    public C27051b<List<Article>> onCreateLoader(int i, Bundle bundle) {
        List list;
        List list2;
        List list3;
        List list4;
        boolean z;
        List list5;
        List list6;
        List list7;
        if (bundle != null) {
            if (bundle.containsKey("search_key") && C1626as.m40233a(bundle.getString("search_key"))) {
                String string = bundle.getString("search_key");
                this.f3898ae.f3689A = "article_search";
                if (bundle.containsKey("category_ids")) {
                    ArrayList<String> stringArrayList = bundle.getStringArrayList("category_ids");
                    Context applicationContext = this.f3898ae.getApplicationContext();
                    list7 = this.f3898ae.f3704X;
                    return new C1541b(applicationContext, list7, null, stringArrayList, string, true);
                }
                z = this.f3898ae.f3700T;
                if (!z || !bundle.containsKey("FAQ_TAGS")) {
                    Context applicationContext2 = this.f3898ae.getApplicationContext();
                    list5 = this.f3898ae.f3704X;
                    return new C1541b(applicationContext2, string, true, list5, true);
                }
                ArrayList<String> stringArrayList2 = bundle.getStringArrayList("FAQ_TAGS");
                Context applicationContext3 = this.f3898ae.getApplicationContext();
                list6 = this.f3898ae.f3704X;
                return new C1541b(applicationContext3, list6, stringArrayList2, null, string, true);
            } else if (bundle.containsKey("category_ids")) {
                ArrayList<String> stringArrayList3 = bundle.getStringArrayList("category_ids");
                Context applicationContext4 = this.f3898ae.getApplicationContext();
                list4 = this.f3898ae.f3704X;
                return new C1541b(applicationContext4, list4, null, stringArrayList3, "", false);
            } else if (bundle.containsKey("FAQ_TAGS")) {
                this.f3898ae.m41361z();
                this.f3898ae.f3711eM = bundle.getStringArrayList("FAQ_TAGS");
                Context applicationContext5 = this.f3898ae.getApplicationContext();
                list2 = this.f3898ae.f3704X;
                list3 = this.f3898ae.f3711eM;
                return new C1541b(applicationContext5, list2, list3, null, "", false);
            }
        }
        Context applicationContext6 = this.f3898ae.getApplicationContext();
        list = this.f3898ae.f3704X;
        return new C1541b(applicationContext6, list);
    }

    @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
    public void onLoaderReset(C27051b<List<Article>> c27051b) {
        List list;
        C1305a c1305a;
        list = this.f3898ae.f3703W;
        list.clear();
        c1305a = this.f3898ae.f3692L;
        c1305a.notifyDataSetChanged();
    }
}
