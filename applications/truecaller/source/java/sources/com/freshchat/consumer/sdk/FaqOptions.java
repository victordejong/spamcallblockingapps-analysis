package com.freshchat.consumer.sdk;

import com.freshchat.consumer.sdk.p057j.AbstractC1734z;
import com.freshchat.consumer.sdk.p057j.C1716k;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/FaqOptions.class */
public class FaqOptions implements AbstractC1734z {
    private int accessoryViewLayoutResId;
    private String contactusFilterTitle;
    private FilterType filterType;
    private String filteredViewTitle;
    private boolean showFaqCategoriesAsGrid = true;
    private boolean showContactUsOnFaqScreens = true;
    private boolean showContactUsOnAppBar = false;
    private boolean showContactUsOnFaqNotHelpful = true;
    private Collection<String> tags = new ArrayList();
    private Collection<String> contactusFilterTags = new ArrayList();

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/FaqOptions$FilterType.class */
    public enum FilterType {
        ARTICLE(0),
        CATEGORY(1);
        
        private final int type;

        FilterType(int i) {
            this.type = i;
        }
    }

    public FaqOptions filterByTags(Collection<String> collection, String str) {
        return filterByTags(collection, str, FilterType.ARTICLE);
    }

    public FaqOptions filterByTags(Collection<String> collection, String str, FilterType filterType) {
        this.tags.clear();
        if (C1716k.m39902a(collection)) {
            this.tags.addAll(C1716k.m39898c(collection));
            this.filteredViewTitle = str;
            if (filterType != null) {
                this.filterType = filterType;
            } else {
                this.filterType = FilterType.ARTICLE;
            }
        }
        return this;
    }

    public FaqOptions filterContactUsByTags(Collection<String> collection, String str) {
        if (C1716k.m39902a(collection)) {
            this.contactusFilterTags.addAll(C1716k.m39898c(collection));
            this.contactusFilterTitle = str;
        }
        return this;
    }

    public Collection<String> getContactUsTags() {
        ArrayList arrayList = new ArrayList();
        if (C1716k.m39902a(this.contactusFilterTags)) {
            arrayList.addAll(this.contactusFilterTags);
        }
        return arrayList;
    }

    public String getContactUsViewTitle() {
        return this.contactusFilterTitle;
    }

    public FilterType getFilterType() {
        return this.filterType;
    }

    public String getFilteredViewTitle() {
        return this.filteredViewTitle;
    }

    public Collection<String> getTags() {
        ArrayList arrayList = new ArrayList();
        if (C1716k.m39902a(this.tags)) {
            arrayList.addAll(this.tags);
        }
        return arrayList;
    }

    public boolean shouldShowContactUsOnAppBar() {
        return this.showContactUsOnAppBar;
    }

    public boolean shouldShowContactUsOnFaqNotHelpful() {
        return this.showContactUsOnFaqNotHelpful;
    }

    public boolean shouldShowContactUsOnFaqScreens() {
        return this.showContactUsOnFaqScreens;
    }

    public boolean shouldShowFaqCategoriesAsGrid() {
        return this.showFaqCategoriesAsGrid;
    }

    public FaqOptions showContactUsOnAppBar(boolean z) {
        this.showContactUsOnAppBar = z;
        return this;
    }

    public FaqOptions showContactUsOnFaqNotHelpful(boolean z) {
        this.showContactUsOnFaqNotHelpful = z;
        return this;
    }

    public FaqOptions showContactUsOnFaqScreens(boolean z) {
        this.showContactUsOnFaqScreens = z;
        return this;
    }

    public FaqOptions showFaqCategoriesAsGrid(boolean z) {
        this.showFaqCategoriesAsGrid = z;
        return this;
    }
}
