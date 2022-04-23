package com.callapp.contacts.activity.marketplace;

import android.content.Context;
import android.content.Intent;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkin;
import com.callapp.contacts.activity.marketplace.viewholders.SuperSkinViewHolder;
import com.callapp.contacts.util.Activities;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/SuperSkinStoreItemsListActivity.class */
public class SuperSkinStoreItemsListActivity extends StoreItemsListActivity<JSONStoreItemSuperSkin, SuperSkinViewHolder> {
    public static void a(Context context) {
        Activities.b(context, new Intent(CallAppApplication.get(), SuperSkinStoreItemsListActivity.class));
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected final List<JSONStoreItemSuperSkin> a(CatalogManager.CatalogAttributes catalogAttributes) {
        return catalogAttributes.getAvailableSuperSkins();
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected int getStoreItemType() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.marketplace.StoreItemsListActivity
    protected String getStoreTitle() {
        return Activities.getString(2131887137);
    }
}
