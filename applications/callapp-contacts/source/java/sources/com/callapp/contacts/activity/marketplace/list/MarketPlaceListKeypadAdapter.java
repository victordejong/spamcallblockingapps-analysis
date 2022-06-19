package com.callapp.contacts.activity.marketplace.list;

import android.view.View;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemKeypad;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.KeypadViewHolder;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceListKeypadAdapter.class */
public class MarketPlaceListKeypadAdapter extends MarketPlaceAdapter<JSONStoreItemKeypad, KeypadViewHolder> {

    /* renamed from: b */
    private final int f23619b;

    /* renamed from: c */
    private final AbstractC1253j f23620c;

    public MarketPlaceListKeypadAdapter(List<JSONStoreItemKeypad> list, MarketPlaceAdapter.MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes, int i, AbstractC1253j abstractC1253j) {
        super(list, marketItemClickEvent, catalogAttributes);
        this.f23619b = i;
        this.f23620c = abstractC1253j;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    /* renamed from: a */
    protected final /* synthetic */ KeypadViewHolder mo29939a(View view) {
        return new KeypadViewHolder(view, this.f23607a, this.f23620c);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ void mo29938a(KeypadViewHolder keypadViewHolder, DefaultInterfaceImplUtils.ClickListener clickListener, JSONStoreItemKeypad jSONStoreItemKeypad) {
        keypadViewHolder.m29851a(jSONStoreItemKeypad, clickListener);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected int getItemLayoutId() {
        return this.f23619b;
    }
}
