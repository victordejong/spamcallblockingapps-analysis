package com.freshchat.consumer.sdk.p057j;

import android.os.Bundle;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.ConversationOptions;
import com.freshchat.consumer.sdk.FaqOptions;
import com.freshchat.consumer.sdk.Freshchat;
import com.freshchat.consumer.sdk.activity.ArticleDetailActivity;
import com.freshchat.consumer.sdk.activity.ArticleListActivity;
import com.freshchat.consumer.sdk.activity.CategoryListActivity;
import com.freshchat.consumer.sdk.activity.FAQCategoriesActivity;
import com.freshchat.consumer.sdk.activity.FAQListActivity;
import com.freshchat.consumer.sdk.activity.FAQSearchActivity;
import com.freshchat.consumer.sdk.activity.InterstitialActivity;
import com.freshchat.consumer.sdk.p047b.C1471i;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.j.v */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/v.class */
public class C1730v extends AbstractC1673c<FaqOptions> {
    /* renamed from: ja */
    private Class m39801ja() {
        Class cls = CategoryListActivity.class;
        if (C1733y.m39775cp(getContext())) {
            cls = FAQCategoriesActivity.class;
        }
        return cls;
    }

    /* renamed from: jb */
    private Class m39800jb() {
        Class cls = ArticleListActivity.class;
        if (C1733y.m39775cp(getContext())) {
            cls = FAQListActivity.class;
        }
        return cls;
    }

    /* renamed from: a */
    public void m39811a(String str, String str2, String[] strArr) {
        m40032a(m39800jb());
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(str);
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("category_ids", arrayList);
        bundle.putString("category_name", str2);
        bundle.putStringArray("INPUT_TAGS", strArr);
        m40031b(bundle);
    }

    /* renamed from: aE */
    public void m39810aE() {
        FaqOptions m40029ec = m40029ec();
        if (m40029ec == null || !C1716k.m39902a(m40029ec.getContactUsTags())) {
            Freshchat.showConversations(getContext());
            return;
        }
        ConversationOptions conversationOptions = new ConversationOptions();
        conversationOptions.filterByTags(m40029ec.getContactUsTags(), m40029ec.getContactUsViewTitle());
        Freshchat.showConversations(getContext(), conversationOptions);
    }

    /* renamed from: b */
    public void m39809b(ArrayList<String> arrayList) {
        m40032a(ArticleListActivity.class);
        Bundle bundle = new Bundle();
        bundle.putBoolean("force_search_open", true);
        if (C1716k.m39902a(arrayList)) {
            bundle.putStringArrayList("category_ids", arrayList);
        }
        m40031b(bundle);
    }

    /* renamed from: e */
    public void m39808e(String[] strArr) {
        m40032a(ArticleListActivity.class);
        Bundle bundle = new Bundle();
        bundle.putBoolean("force_search_open", true);
        if (C1626as.m40225f(strArr)) {
            bundle.putStringArray("INPUT_TAGS", strArr);
        }
        m40031b(bundle);
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1673c
    /* renamed from: ea */
    public void mo39807ea() {
        m39804ev();
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1673c
    /* renamed from: eb */
    public Bundle mo39806eb() {
        Bundle bundle = new Bundle();
        bundle.putAll(C1729u.m39813a(m40029ec()));
        bundle.putString("OPTIONS_TYPE", FaqOptions.class.getSimpleName());
        return bundle;
    }

    /* renamed from: eu */
    public void m39805eu() {
        m40032a(m39801ja());
        FaqOptions m40029ec = m40029ec();
        if (m40029ec != null && C1716k.m39902a(m40029ec.getTags())) {
            m40029ec.filterByTags(null, null, null);
        }
        m40031b((Bundle) null);
    }

    /* renamed from: ev */
    public void m39804ev() {
        m40032a(InterstitialActivity.class);
        m40031b((Bundle) null);
    }

    /* renamed from: iY */
    public void m39803iY() {
        m40032a(FAQCategoriesActivity.class);
        m40031b((Bundle) null);
    }

    /* renamed from: iZ */
    public void m39802iZ() {
        m40032a(FAQSearchActivity.class);
        m40031b((Bundle) null);
    }

    /* renamed from: w */
    public void m39799w(List<String> list) {
        if (C1716k.m39900b(list) != 0) {
            m40032a(CategoryListActivity.class);
            m40031b((Bundle) null);
            return;
        }
        C1471i.m40837e(getContext(), getContext().getString(C1298R.string.freshchat_error_no_matching_faq_categories_found));
        m39805eu();
    }

    /* renamed from: x */
    public void m39798x(List<String> list) {
        int m39900b = C1716k.m39900b(list);
        if (m39900b == 0) {
            C1471i.m40837e(getContext(), getContext().getString(C1298R.string.freshchat_error_no_matching_faqs_found));
            m39805eu();
        } else if (m39900b != 1) {
            m40032a(ArticleListActivity.class);
            m40031b(new Bundle());
        } else {
            m40032a(ArticleDetailActivity.class);
            Bundle bundle = new Bundle();
            bundle.putLong("article_id", Long.parseLong(list.get(0)));
            m40031b(bundle);
        }
    }
}
