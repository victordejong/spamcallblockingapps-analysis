package com.callapp.contacts.activity.marketplace.list;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItem;
import com.callapp.contacts.activity.marketplace.viewholders.StoreItemLoadingViewHolder;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter.class */
public abstract class MarketPlaceAdapter<Data extends JSONStoreItem, ViewHolder extends StoreItemLoadingViewHolder> extends RecyclerView.AbstractC2626a<ViewHolder> {

    /* renamed from: a */
    protected final CatalogManager.CatalogAttributes f23607a;

    /* renamed from: b */
    private List<Data> f23608b;

    /* renamed from: c */
    private MarketItemClickEvent f23609c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent.class */
    public interface MarketItemClickEvent {
        /* renamed from: a */
        <Data extends JSONStoreItem> void mo29940a(Data data, View... viewArr);
    }

    public MarketPlaceAdapter(List<Data> list, MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes) {
        this.f23608b = list;
        this.f23609c = marketItemClickEvent;
        this.f23607a = catalogAttributes;
    }

    /* renamed from: a */
    protected abstract ViewHolder mo29939a(View view);

    /* renamed from: a */
    protected abstract void mo29938a(ViewHolder viewholder, DefaultInterfaceImplUtils.ClickListener clickListener, Data data);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f23608b.size();
    }

    protected abstract int getItemLayoutId();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ void onBindViewHolder(RecyclerView.AbstractC2657v abstractC2657v, int i) {
        final StoreItemLoadingViewHolder storeItemLoadingViewHolder = (StoreItemLoadingViewHolder) abstractC2657v;
        final Data data = this.f23608b.get(i);
        this.f23608b.get(i);
        storeItemLoadingViewHolder.getDataLayout().setAlpha(BitmapDescriptorFactory.HUE_RED);
        storeItemLoadingViewHolder.getTitle().setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131100140));
        storeItemLoadingViewHolder.getContainer().setCardBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099686));
        mo29938a(storeItemLoadingViewHolder, new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                AnalyticsManager analyticsManager = AnalyticsManager.get();
                analyticsManager.m28449a(Constants.STORE, "Store item clicked", "Item sku: " + data.getSku());
                MarketPlaceAdapter.this.f23609c.mo29940a(data, storeItemLoadingViewHolder.getImageView(), storeItemLoadingViewHolder.getPromotionContainer());
            }
        }, this.f23608b.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        return mo29939a(LayoutInflater.from(viewGroup.getContext()).inflate(getItemLayoutId(), viewGroup, false));
    }

    public void setItemClickedListener(MarketItemClickEvent marketItemClickEvent) {
        this.f23609c = marketItemClickEvent;
    }
}
