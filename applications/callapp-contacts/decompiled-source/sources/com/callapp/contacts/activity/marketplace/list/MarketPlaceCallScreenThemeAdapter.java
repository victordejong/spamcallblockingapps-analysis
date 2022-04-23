package com.callapp.contacts.activity.marketplace.list;

import android.view.View;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.ItemCallScreenThemeViewHolder;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter.class */
public class MarketPlaceCallScreenThemeAdapter extends MarketPlaceAdapter<JSONStoreCallScreenThemeItem, ItemCallScreenThemeViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    private final int f13280b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f13281c;

    /* renamed from: d  reason: collision with root package name */
    private final j f13282d;

    public MarketPlaceCallScreenThemeAdapter(j jVar, List<JSONStoreCallScreenThemeItem> list, MarketPlaceAdapter.MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes, int i, boolean z) {
        super(list, marketItemClickEvent, catalogAttributes);
        this.f13280b = i;
        this.f13281c = z;
        this.f13282d = jVar;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected final /* synthetic */ ItemCallScreenThemeViewHolder a(View view) {
        return new ItemCallScreenThemeViewHolder(view, this.f13273a, this.f13282d);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected final /* synthetic */ void a(ItemCallScreenThemeViewHolder itemCallScreenThemeViewHolder, DefaultInterfaceImplUtils.ClickListener clickListener, JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem) {
        ItemCallScreenThemeViewHolder itemCallScreenThemeViewHolder2 = itemCallScreenThemeViewHolder;
        JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem2 = jSONStoreCallScreenThemeItem;
        jSONStoreCallScreenThemeItem2.setUrl(this.f13281c ? jSONStoreCallScreenThemeItem2.getThemeStoreListPreviewUrl() : jSONStoreCallScreenThemeItem2.getThemeStorePreviewUrl());
        itemCallScreenThemeViewHolder2.a(jSONStoreCallScreenThemeItem2, clickListener);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected int getItemLayoutId() {
        return this.f13280b;
    }
}
