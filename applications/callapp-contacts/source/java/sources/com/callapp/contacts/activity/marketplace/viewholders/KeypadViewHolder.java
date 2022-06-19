package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/KeypadViewHolder.class */
public class KeypadViewHolder extends StoreItemLoadingViewHolder {

    /* renamed from: v */
    private ImageView f23818v;

    public KeypadViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, AbstractC1253j abstractC1253j) {
        super(view, catalogAttributes, abstractC1253j);
        this.f23818v = (ImageView) view.findViewById(2131363792);
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: a */
    protected final JSONStoreItem mo29834a(String str) {
        return m29844a(str, this.f23828t.getAvilableKeypads());
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: a */
    protected final boolean mo29835a(JSONStoreItem jSONStoreItem) {
        return StringUtils.m26042b(Prefs.f26397dO.get(), jSONStoreItem.getSku());
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: b */
    public final boolean mo29838b(JSONStoreItem jSONStoreItem) {
        if (super.mo29838b(jSONStoreItem)) {
            return !jSONStoreItem.isCustomizable() || Prefs.f26345cP.get().booleanValue();
        }
        return false;
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    public void setAdditionalDataView(JSONStoreItem jSONStoreItem) {
        super.setAdditionalDataView(jSONStoreItem);
        this.f23818v.setVisibility(0);
        ImageView imageView = this.f23818v;
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, 2131232409, imageView.getContext());
        glideRequestBuilder.f28251q = true;
        glideRequestBuilder.m27013d();
    }
}
