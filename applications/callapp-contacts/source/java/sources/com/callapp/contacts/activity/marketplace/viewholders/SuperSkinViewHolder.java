package com.callapp.contacts.activity.marketplace.viewholders;

import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkin;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/viewholders/SuperSkinViewHolder.class */
public class SuperSkinViewHolder extends StoreItemLoadingViewHolder {

    /* renamed from: v */
    private ImageView f23841v;

    public SuperSkinViewHolder(View view, CatalogManager.CatalogAttributes catalogAttributes, AbstractC1253j abstractC1253j) {
        super(view, catalogAttributes, abstractC1253j);
        this.f23841v = (ImageView) view.findViewById(2131364037);
    }

    /* renamed from: b */
    public /* synthetic */ void m29837b(final String str) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.viewholders._$$Lambda$SuperSkinViewHolder$xbmDd2_7EVqt24C7rYr8PhYctno
            @Override // java.lang.Runnable
            public final void run() {
                SuperSkinViewHolder.this.m29836c(str);
            }
        });
    }

    /* renamed from: c */
    public /* synthetic */ void m29836c(String str) {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(this.f23841v, str, getContainer().getContext());
        glideRequestBuilder.f28251q = true;
        glideRequestBuilder.m27013d();
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: a */
    protected final JSONStoreItem mo29834a(String str) {
        return m29844a(str, this.f23828t.getAllSuperSkins());
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: a */
    protected final boolean mo29835a(JSONStoreItem jSONStoreItem) {
        return StringUtils.m26042b(Prefs.f26396dN.get(), jSONStoreItem.getSku());
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    /* renamed from: b */
    public final boolean mo29838b(JSONStoreItem jSONStoreItem) {
        if (super.mo29838b(jSONStoreItem)) {
            return Prefs.f26342cM.get().intValue() > 0 || Prefs.f26345cP.get().booleanValue();
        }
        return false;
    }

    @Override // com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder
    public void setAdditionalDataView(JSONStoreItem jSONStoreItem) {
        super.setAdditionalDataView(jSONStoreItem);
        final String str = ((JSONStoreItemSuperSkin) jSONStoreItem).getWizardImageUrls()[0];
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.marketplace.viewholders._$$Lambda$SuperSkinViewHolder$5HlNqjvbEduUb_k320ychywmX6g
            @Override // java.lang.Runnable
            public final void run() {
                SuperSkinViewHolder.this.m29837b(str);
            }
        });
    }
}
