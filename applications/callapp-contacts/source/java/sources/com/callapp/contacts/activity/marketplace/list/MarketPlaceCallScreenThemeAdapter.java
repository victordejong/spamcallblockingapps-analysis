package com.callapp.contacts.activity.marketplace.list;

import android.view.View;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.ItemCallScreenThemeViewHolder;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter.class */
public class MarketPlaceCallScreenThemeAdapter extends MarketPlaceAdapter<JSONStoreCallScreenThemeItem, ItemCallScreenThemeViewHolder> {

    /* renamed from: b */
    private final int f23614b;

    /* renamed from: c */
    private final boolean f23615c;

    /* renamed from: d */
    private final AbstractC1253j f23616d;

    public MarketPlaceCallScreenThemeAdapter(AbstractC1253j abstractC1253j, List<JSONStoreCallScreenThemeItem> list, MarketPlaceAdapter.MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes, int i, boolean z) {
        super(list, marketItemClickEvent, catalogAttributes);
        this.f23614b = i;
        this.f23615c = z;
        this.f23616d = abstractC1253j;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    /* renamed from: a */
    protected final /* synthetic */ ItemCallScreenThemeViewHolder mo29939a(View view) {
        return new ItemCallScreenThemeViewHolder(view, this.f23607a, this.f23616d);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    /* renamed from: a */
    protected final /* synthetic */ void mo29938a(ItemCallScreenThemeViewHolder itemCallScreenThemeViewHolder, DefaultInterfaceImplUtils.ClickListener clickListener, JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
        ItemCallScreenThemeViewHolder itemCallScreenThemeViewHolder2 = itemCallScreenThemeViewHolder;
        JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem2 = jSONStoreCallScreenThemeItem;
        jSONStoreCallScreenThemeItem2.setUrl(this.f23615c ? jSONStoreCallScreenThemeItem2.getThemeStoreListPreviewUrl() : jSONStoreCallScreenThemeItem2.getThemeStorePreviewUrl());
        itemCallScreenThemeViewHolder2.m29851a(jSONStoreCallScreenThemeItem2, clickListener);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected int getItemLayoutId() {
        return this.f23614b;
    }
}
