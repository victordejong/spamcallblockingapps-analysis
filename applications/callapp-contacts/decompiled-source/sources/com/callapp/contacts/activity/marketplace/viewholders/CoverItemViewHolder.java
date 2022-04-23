package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/CoverItemViewHolder.class */
public class CoverItemViewHolder extends StoreItemLoadingViewHolder {
    public CoverItemViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, j jVar) {
        super(view, catalogAttributes, jVar);
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    protected final JSONStoreItem a(String str) {
        return a(str, this.t.getAvilableCovers());
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    protected final boolean a(JSONStoreItem jSONStoreItem) {
        return StringUtils.b(Prefs.dN.get(), jSONStoreItem.getSku());
    }
}
