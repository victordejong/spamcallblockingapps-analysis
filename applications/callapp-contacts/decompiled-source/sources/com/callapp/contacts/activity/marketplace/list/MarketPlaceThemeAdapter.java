package com.callapp.contacts.activity.marketplace.list;

import android.view.View;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemTheme;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.ThemeItemViewHolder;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceThemeAdapter.class */
public class MarketPlaceThemeAdapter extends MarketPlaceAdapter<JSONStoreItemTheme, ThemeItemViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    private final j f13288b;

    public MarketPlaceThemeAdapter(List<JSONStoreItemTheme> list, MarketPlaceAdapter.MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes, j jVar) {
        super(list, marketItemClickEvent, catalogAttributes);
        this.f13288b = jVar;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected final /* synthetic */ ThemeItemViewHolder a(View view) {
        return new ThemeItemViewHolder(view, this.f13273a, this.f13288b);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected final /* synthetic */ void a(ThemeItemViewHolder themeItemViewHolder, DefaultInterfaceImplUtils.ClickListener clickListener, JSONStoreItemTheme jSONStoreItemTheme) {
        ThemeItemViewHolder themeItemViewHolder2 = themeItemViewHolder;
        JSONStoreItemTheme jSONStoreItemTheme2 = jSONStoreItemTheme;
        themeItemViewHolder2.r.setBackgroundColor(jSONStoreItemTheme2.getColor());
        themeItemViewHolder2.a(clickListener, jSONStoreItemTheme2.getSku(), jSONStoreItemTheme2.getUrl());
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected int getItemLayoutId() {
        return 2131558775;
    }
}
