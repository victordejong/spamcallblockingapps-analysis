package com.callapp.contacts.activity.marketplace.list;

import android.view.View;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemKeypad;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.KeypadViewHolder;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceKeypadAdapter.class */
public class MarketPlaceKeypadAdapter extends MarketPlaceAdapter<JSONStoreItemKeypad, KeypadViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    private final j f13284b;

    public MarketPlaceKeypadAdapter(List<JSONStoreItemKeypad> list, MarketPlaceAdapter.MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes, j jVar) {
        super(list, marketItemClickEvent, catalogAttributes);
        this.f13284b = jVar;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected final /* synthetic */ KeypadViewHolder a(View view) {
        return new KeypadViewHolder(view, this.f13273a, this.f13284b);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected final /* bridge */ /* synthetic */ void a(KeypadViewHolder keypadViewHolder, DefaultInterfaceImplUtils.ClickListener clickListener, JSONStoreItemKeypad jSONStoreItemKeypad) {
        keypadViewHolder.a(jSONStoreItemKeypad, clickListener);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected int getItemLayoutId() {
        return 2131558772;
    }
}
