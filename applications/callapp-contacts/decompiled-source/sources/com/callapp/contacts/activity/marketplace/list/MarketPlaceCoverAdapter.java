package com.callapp.contacts.activity.marketplace.list;

import android.view.View;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemCover;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.CoverItemViewHolder;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceCoverAdapter.class */
public class MarketPlaceCoverAdapter extends MarketPlaceAdapter<JSONStoreItemCover, CoverItemViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    private final j f13283b;

    public MarketPlaceCoverAdapter(List<JSONStoreItemCover> list, MarketPlaceAdapter.MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes, j jVar) {
        super(list, marketItemClickEvent, catalogAttributes);
        this.f13283b = jVar;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected final /* synthetic */ CoverItemViewHolder a(View view) {
        return new CoverItemViewHolder(view, this.f13273a, this.f13283b);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected final /* bridge */ /* synthetic */ void a(CoverItemViewHolder coverItemViewHolder, DefaultInterfaceImplUtils.ClickListener clickListener, JSONStoreItemCover jSONStoreItemCover) {
        coverItemViewHolder.a(jSONStoreItemCover, clickListener);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected int getItemLayoutId() {
        return 2131558772;
    }
}
