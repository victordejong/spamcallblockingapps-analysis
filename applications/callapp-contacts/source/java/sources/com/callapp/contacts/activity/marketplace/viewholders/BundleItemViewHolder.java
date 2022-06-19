package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\u0018��2\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0014J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014¨\u0006\u0010"}, m4298d2 = {"Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;", "Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;", "v", "Landroid/view/View;", "catalogAttributes", "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "(Landroid/view/View;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/Lifecycle;)V", "checkIfInUse", "", "storeItem", "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;", "getStoreItem", "sku", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder.class */
public final class BundleItemViewHolder extends StoreItemLoadingViewHolder {
    public BundleItemViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, AbstractC1253j abstractC1253j) {
        super(view, catalogAttributes, abstractC1253j);
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: a */
    protected final JSONStoreItem mo29834a(String sku) {
        C18524p.m3840d(sku, "sku");
        CatalogManager.CatalogAttributes catalogAttributes = this.f23828t;
        C18524p.m3843b(catalogAttributes, "catalogAttributes");
        JSONStoreItem a = m29844a(sku, catalogAttributes.getAvilableBundles());
        C18524p.m3843b(a, "getStoreItem(sku, catalo…tributes.avilableBundles)");
        return a;
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: a */
    protected final boolean mo29835a(JSONStoreItem storeItem) {
        C18524p.m3840d(storeItem, "storeItem");
        return StringUtils.m26042b(Prefs.f26396dN.get(), storeItem.getSku());
    }
}
