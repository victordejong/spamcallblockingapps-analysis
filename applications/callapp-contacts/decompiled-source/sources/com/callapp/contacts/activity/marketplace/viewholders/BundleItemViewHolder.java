package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0018��2\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0014J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014¨\u0006\u0010"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;", "Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;", "v", "Landroid/view/View;", "catalogAttributes", "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/Lifecycle;)V", "checkIfInUse", "", "storeItem", "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;", "getStoreItem", "sku", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder.class */
public final class BundleItemViewHolder extends StoreItemLoadingViewHolder {
    public BundleItemViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, j jVar) {
        super(view, catalogAttributes, jVar);
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    protected final JSONStoreItem a(String sku) {
        p.d(sku, "sku");
        CatalogManager.CatalogAttributes catalogAttributes = this.t;
        p.b(catalogAttributes, "catalogAttributes");
        JSONStoreItem a2 = a(sku, catalogAttributes.getAvilableBundles());
        p.b(a2, "getStoreItem(sku, catalo…tributes.avilableBundles)");
        return a2;
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    protected final boolean a(JSONStoreItem storeItem) {
        p.d(storeItem, "storeItem");
        return StringUtils.b(Prefs.dN.get(), storeItem.getSku());
    }
}
