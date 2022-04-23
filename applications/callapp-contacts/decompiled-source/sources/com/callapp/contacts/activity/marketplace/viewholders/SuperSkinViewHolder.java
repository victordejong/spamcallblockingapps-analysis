package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkin;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder.class */
public class SuperSkinViewHolder extends StoreItemLoadingViewHolder {
    private ImageView v;

    public SuperSkinViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, j jVar) {
        super(view, catalogAttributes, jVar);
        this.v = (ImageView) view.findViewById(2131364037);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(final String str) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.viewholders._$$Lambda$SuperSkinViewHolder$xbmDd2_7EVqt24C7rYr8PhYctno
            @Override // java.lang.Runnable
            public final void run() {
                SuperSkinViewHolder.this.c(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str) {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.v, str, getContainer().getContext());
        glideRequestBuilder.q = true;
        glideRequestBuilder.d();
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    protected final JSONStoreItem a(String str) {
        return a(str, this.t.getAllSuperSkins());
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    protected final boolean a(JSONStoreItem jSONStoreItem) {
        return StringUtils.b(Prefs.dN.get(), jSONStoreItem.getSku());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    public final boolean b(JSONStoreItem jSONStoreItem) {
        if (super.b(jSONStoreItem)) {
            return Prefs.cM.get().intValue() > 0 || Prefs.cP.get().booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    public void setAdditionalDataView(JSONStoreItem jSONStoreItem) {
        super.setAdditionalDataView(jSONStoreItem);
        final String str = ((JSONStoreItemSuperSkin) jSONStoreItem).getWizardImageUrls()[0];
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.viewholders._$$Lambda$SuperSkinViewHolder$5HlNqjvbEduUb_k320ychywmX6g
            @Override // java.lang.Runnable
            public final void run() {
                SuperSkinViewHolder.this.b(str);
            }
        });
    }
}
