package com.callapp.contacts.activity.marketplace.list;

import android.view.View;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkin;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.SuperSkinViewHolder;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceSuperSkinAdapter.class */
public class MarketPlaceSuperSkinAdapter extends MarketPlaceAdapter<JSONStoreItemSuperSkin, SuperSkinViewHolder> {

    /* renamed from: b */
    private final AbstractC1253j f23621b;

    public MarketPlaceSuperSkinAdapter(List<JSONStoreItemSuperSkin> list, MarketPlaceAdapter.MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes, AbstractC1253j abstractC1253j) {
        super(list, marketItemClickEvent, catalogAttributes);
        this.f23621b = abstractC1253j;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    /* renamed from: a */
    protected final /* synthetic */ SuperSkinViewHolder mo29939a(View view) {
        return new SuperSkinViewHolder(view, this.f23607a, this.f23621b);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ void mo29938a(SuperSkinViewHolder superSkinViewHolder, DefaultInterfaceImplUtils.ClickListener clickListener, JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
        superSkinViewHolder.m29851a(jSONStoreItemSuperSkin, clickListener);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected int getItemLayoutId() {
        return 2131558774;
    }
}
