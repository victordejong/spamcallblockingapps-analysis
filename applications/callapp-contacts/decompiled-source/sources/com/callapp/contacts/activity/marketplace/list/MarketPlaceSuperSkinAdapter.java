package com.callapp.contacts.activity.marketplace.list;

import android.view.View;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemSuperSkin;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.SuperSkinViewHolder;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceSuperSkinAdapter.class */
public class MarketPlaceSuperSkinAdapter extends MarketPlaceAdapter<JSONStoreItemSuperSkin, SuperSkinViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    private final j f13287b;

    public MarketPlaceSuperSkinAdapter(List<JSONStoreItemSuperSkin> list, MarketPlaceAdapter.MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes, j jVar) {
        super(list, marketItemClickEvent, catalogAttributes);
        this.f13287b = jVar;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected final /* synthetic */ SuperSkinViewHolder a(View view) {
        return new SuperSkinViewHolder(view, this.f13273a, this.f13287b);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected final /* bridge */ /* synthetic */ void a(SuperSkinViewHolder superSkinViewHolder, DefaultInterfaceImplUtils.ClickListener clickListener, JSONStoreItemSuperSkin jSONStoreItemSuperSkin) {
        superSkinViewHolder.a(jSONStoreItemSuperSkin, clickListener);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected int getItemLayoutId() {
        return 2131558774;
    }
}
