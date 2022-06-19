package com.callapp.contacts.activity.marketplace;

import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover;
import com.callapp.contacts.activity.marketplace.viewholders.CoverItemViewHolder;
import com.callapp.contacts.util.Activities;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/CoverStoreItemsListActivity.class */
public class CoverStoreItemsListActivity extends StoreItemsListActivity<JSONStoreItemCover, CoverItemViewHolder> {
    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    /* renamed from: a */
    protected final List<JSONStoreItemCover> mo30004a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getAvilableCovers();
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected int getStoreItemType() {
        return 1;
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected String getStoreTitle() {
        return Activities.getString(2131887132);
    }
}
