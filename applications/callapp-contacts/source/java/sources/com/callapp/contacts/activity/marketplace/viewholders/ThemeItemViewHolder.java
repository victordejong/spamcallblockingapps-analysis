package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/ThemeItemViewHolder.class */
public class ThemeItemViewHolder extends StoreItemLoadingViewHolder {
    public ThemeItemViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, AbstractC1253j abstractC1253j) {
        super(view, catalogAttributes, abstractC1253j);
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: a */
    protected final JSONStoreItem mo29834a(String str) {
        return m29844a(str, this.f23828t.getAvilableThemes());
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: a */
    protected final boolean mo29835a(JSONStoreItem jSONStoreItem) {
        return StringUtils.m26042b(Prefs.f26416dh.get(), jSONStoreItem.getSku());
    }
}
