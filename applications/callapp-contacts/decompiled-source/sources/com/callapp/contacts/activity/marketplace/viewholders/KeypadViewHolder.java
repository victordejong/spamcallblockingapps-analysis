package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/KeypadViewHolder.class */
public class KeypadViewHolder extends StoreItemLoadingViewHolder {
    private ImageView v;

    public KeypadViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, j jVar) {
        super(view, catalogAttributes, jVar);
        this.v = (ImageView) view.findViewById(2131363792);
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    protected final JSONStoreItem a(String str) {
        return a(str, this.t.getAvilableKeypads());
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    protected final boolean a(JSONStoreItem jSONStoreItem) {
        return StringUtils.b(Prefs.dO.get(), jSONStoreItem.getSku());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    public final boolean b(JSONStoreItem jSONStoreItem) {
        if (super.b(jSONStoreItem)) {
            return !jSONStoreItem.isCustomizable() || Prefs.cP.get().booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    public void setAdditionalDataView(JSONStoreItem jSONStoreItem) {
        super.setAdditionalDataView(jSONStoreItem);
        this.v.setVisibility(0);
        ImageView imageView = this.v;
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView, 2131232409, imageView.getContext());
        glideRequestBuilder.q = true;
        glideRequestBuilder.d();
    }
}
