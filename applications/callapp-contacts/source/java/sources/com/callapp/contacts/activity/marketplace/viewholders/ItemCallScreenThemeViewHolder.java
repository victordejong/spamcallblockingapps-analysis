package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/ItemCallScreenThemeViewHolder.class */
public class ItemCallScreenThemeViewHolder extends StoreItemLoadingViewHolder {
    public ItemCallScreenThemeViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, AbstractC1253j abstractC1253j) {
        super(view, catalogAttributes, abstractC1253j);
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: a */
    protected final JSONStoreItem mo29834a(String str) {
        return m29844a(str, this.f23828t.getAvailableCallScreenThemes());
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: a */
    protected final boolean mo29835a(JSONStoreItem jSONStoreItem) {
        return StringUtils.m26057a(Prefs.f26429du.get(), jSONStoreItem.getSku());
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: b */
    public final boolean mo29838b(JSONStoreItem jSONStoreItem) {
        if (!super.mo29838b(jSONStoreItem) || (Prefs.f26342cM.get().intValue() <= 0 && !Prefs.f26345cP.get().booleanValue())) {
            if (Prefs.f26349cT.get().intValue() > 0 && !jSONStoreItem.isCustomizable()) {
                return true;
            }
            return Prefs.f26350cU.get().intValue() > 0 && jSONStoreItem.isCustomizable();
        }
        return true;
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    public void setAdditionalDataView(JSONStoreItem jSONStoreItem) {
        super.setAdditionalDataView(jSONStoreItem);
    }
}
