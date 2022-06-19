package com.callapp.contacts.activity.marketplace.list;

import android.view.View;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.CoverItemViewHolder;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceCoverAdapter.class */
public class MarketPlaceCoverAdapter extends MarketPlaceAdapter<JSONStoreItemCover, CoverItemViewHolder> {

    /* renamed from: b */
    private final AbstractC1253j f23617b;

    public MarketPlaceCoverAdapter(List<JSONStoreItemCover> list, MarketPlaceAdapter.MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes, AbstractC1253j abstractC1253j) {
        super(list, marketItemClickEvent, catalogAttributes);
        this.f23617b = abstractC1253j;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    /* renamed from: a */
    protected final /* synthetic */ CoverItemViewHolder mo29939a(View view) {
        return new CoverItemViewHolder(view, this.f23607a, this.f23617b);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ void mo29938a(CoverItemViewHolder coverItemViewHolder, DefaultInterfaceImplUtils.ClickListener clickListener, JSONStoreItemCover jSONStoreItemCover) {
        coverItemViewHolder.m29851a(jSONStoreItemCover, clickListener);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected int getItemLayoutId() {
        return 2131558772;
    }
}
