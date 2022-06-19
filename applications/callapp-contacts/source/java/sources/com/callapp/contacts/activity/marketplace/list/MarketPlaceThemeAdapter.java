package com.callapp.contacts.activity.marketplace.list;

import android.view.View;
import androidx.lifecycle.AbstractC1253j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.ThemeItemViewHolder;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceThemeAdapter.class */
public class MarketPlaceThemeAdapter extends MarketPlaceAdapter<JSONStoreItemTheme, ThemeItemViewHolder> {

    /* renamed from: b */
    private final AbstractC1253j f23622b;

    public MarketPlaceThemeAdapter(List<JSONStoreItemTheme> list, MarketPlaceAdapter.MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes, AbstractC1253j abstractC1253j) {
        super(list, marketItemClickEvent, catalogAttributes);
        this.f23622b = abstractC1253j;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    /* renamed from: a */
    protected final /* synthetic */ ThemeItemViewHolder mo29939a(View view) {
        return new ThemeItemViewHolder(view, this.f23607a, this.f23622b);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    /* renamed from: a */
    protected final /* synthetic */ void mo29938a(ThemeItemViewHolder themeItemViewHolder, DefaultInterfaceImplUtils.ClickListener clickListener, JSONStoreItemTheme jSONStoreItemTheme) {
        ThemeItemViewHolder themeItemViewHolder2 = themeItemViewHolder;
        JSONStoreItemTheme jSONStoreItemTheme2 = jSONStoreItemTheme;
        themeItemViewHolder2.f23826r.setBackgroundColor(jSONStoreItemTheme2.getColor());
        themeItemViewHolder2.m29847a(clickListener, jSONStoreItemTheme2.getSku(), jSONStoreItemTheme2.getUrl());
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected int getItemLayoutId() {
        return 2131558775;
    }
}
