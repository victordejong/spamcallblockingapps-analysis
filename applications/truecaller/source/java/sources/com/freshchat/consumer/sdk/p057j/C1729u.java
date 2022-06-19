package com.freshchat.consumer.sdk.p057j;

import android.os.Bundle;
import com.freshchat.consumer.sdk.FaqOptions;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.j.u */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/u.class */
public class C1729u {
    /* renamed from: a */
    public static Bundle m39813a(FaqOptions faqOptions) {
        Bundle bundle = new Bundle();
        if (faqOptions != null) {
            bundle.putBoolean("SHOW_FAQ_CATEGORY_AS_GRID", faqOptions.shouldShowFaqCategoriesAsGrid());
            bundle.putBoolean("SHOW_CONTACT_US_ON_FAQ_SCREENS", faqOptions.shouldShowContactUsOnFaqScreens());
            bundle.putBoolean("SHOW_CONTACT_US_ON_SEARCH_AND_DOWN_VOTE", faqOptions.shouldShowContactUsOnFaqNotHelpful());
            bundle.putBoolean("SHOW_CONTACT_US_ON_APP_BAR", faqOptions.shouldShowContactUsOnAppBar());
            ArrayList<String> arrayList = new ArrayList<>(faqOptions.getTags());
            if (arrayList.size() > 0) {
                bundle.putStringArrayList("FAQ_TAG_LIST", arrayList);
            }
            if (!C1626as.isEmpty(faqOptions.getFilteredViewTitle())) {
                bundle.putString("FAQ_TAG_VIEW_TITLE", faqOptions.getFilteredViewTitle());
            }
            if (faqOptions.getFilterType() != null) {
                bundle.putString("FAQ_TAG_TYPE", faqOptions.getFilterType().toString());
            }
            ArrayList<String> arrayList2 = new ArrayList<>(faqOptions.getContactUsTags());
            if (arrayList2.size() > 0) {
                bundle.putStringArrayList("FAQ_CONTACT_US_FILTER_TAGS_LIST", arrayList2);
            }
            if (!C1626as.isEmpty(faqOptions.getContactUsViewTitle())) {
                bundle.putString("FAQ_CONTACT_US_FILTER_TITLE", faqOptions.getContactUsViewTitle());
            }
        }
        return bundle;
    }

    /* renamed from: d */
    public static FaqOptions m39812d(Bundle bundle) {
        FaqOptions faqOptions = new FaqOptions();
        if (bundle != null) {
            faqOptions.showFaqCategoriesAsGrid(bundle.getBoolean("SHOW_FAQ_CATEGORY_AS_GRID", faqOptions.shouldShowFaqCategoriesAsGrid()));
            faqOptions.showContactUsOnFaqScreens(bundle.getBoolean("SHOW_CONTACT_US_ON_FAQ_SCREENS", faqOptions.shouldShowContactUsOnFaqScreens()));
            faqOptions.showContactUsOnFaqNotHelpful(bundle.getBoolean("SHOW_CONTACT_US_ON_SEARCH_AND_DOWN_VOTE", faqOptions.shouldShowContactUsOnFaqNotHelpful()));
            faqOptions.showContactUsOnAppBar(bundle.getBoolean("SHOW_CONTACT_US_ON_APP_BAR", faqOptions.shouldShowContactUsOnAppBar()));
            if (bundle.containsKey("FAQ_TAG_LIST")) {
                faqOptions.filterByTags(bundle.getStringArrayList("FAQ_TAG_LIST"), bundle.getString("FAQ_TAG_VIEW_TITLE"), FaqOptions.FilterType.valueOf(bundle.getString("FAQ_TAG_TYPE")));
            }
            if (bundle.containsKey("FAQ_CONTACT_US_FILTER_TAGS_LIST")) {
                faqOptions.filterContactUsByTags(bundle.getStringArrayList("FAQ_CONTACT_US_FILTER_TAGS_LIST"), bundle.getString("FAQ_CONTACT_US_FILTER_TITLE"));
            }
        }
        return faqOptions;
    }
}
