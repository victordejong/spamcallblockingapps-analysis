package com.callapp.contacts.activity.marketplace;

import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme;
import com.callapp.contacts.activity.marketplace.viewholders.ThemeItemViewHolder;
import com.callapp.contacts.util.Activities;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/ThemeStoreItemsListActivity.class */
public class ThemeStoreItemsListActivity extends StoreItemsListActivity<JSONStoreItemTheme, ThemeItemViewHolder> {
    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    /* renamed from: a */
    protected final List<JSONStoreItemTheme> mo30004a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getAvilableThemes();
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected int getStoreItemType() {
        return 2;
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected String getStoreTitle() {
        return Activities.getString(2131887138);
    }
}
