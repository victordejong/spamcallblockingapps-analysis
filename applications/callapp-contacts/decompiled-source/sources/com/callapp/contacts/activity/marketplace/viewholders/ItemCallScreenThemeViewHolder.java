package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/ItemCallScreenThemeViewHolder.class */
public class ItemCallScreenThemeViewHolder extends StoreItemLoadingViewHolder {
    public ItemCallScreenThemeViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, j jVar) {
        super(view, catalogAttributes, jVar);
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    protected final JSONStoreItem a(String str) {
        return a(str, this.t.getAvailableCallScreenThemes());
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    protected final boolean a(JSONStoreItem jSONStoreItem) {
        return StringUtils.a(Prefs.du.get(), jSONStoreItem.getSku());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    public final boolean b(JSONStoreItem jSONStoreItem) {
        if (super.b(jSONStoreItem) && (Prefs.cM.get().intValue() > 0 || Prefs.cP.get().booleanValue())) {
            return true;
        }
        if (Prefs.cT.get().intValue() <= 0 || jSONStoreItem.isCustomizable()) {
            return Prefs.cU.get().intValue() > 0 && jSONStoreItem.isCustomizable();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    public void setAdditionalDataView(JSONStoreItem jSONStoreItem) {
        super.setAdditionalDataView(jSONStoreItem);
    }
}
