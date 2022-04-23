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
public abstract class MarketPlaceAdapter<Data extends JSONStoreItem, ViewHolder extends StoreItemLoadingViewHolder> extends RecyclerView.a<ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    protected final CatalogManager.CatalogAttributes f13273a;

    /* renamed from: b  reason: collision with root package name */
    private List<Data> f13274b;

    /* renamed from: c  reason: collision with root package name */
    private MarketItemClickEvent f13275c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent.class */
    public interface MarketItemClickEvent {
        <Data extends JSONStoreItem> void a(Data data, View... viewArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MarketPlaceAdapter(List<Data> list, MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes) {
        this.f13274b = list;
        this.f13275c = marketItemClickEvent;
        this.f13273a = catalogAttributes;
    }

    protected abstract ViewHolder a(View view);

    protected abstract void a(ViewHolder viewholder, DefaultInterfaceImplUtils.ClickListener clickListener, Data data);

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f13274b.size();
    }

    protected abstract int getItemLayoutId();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ void onBindViewHolder(RecyclerView.v vVar, int i) {
        final StoreItemLoadingViewHolder storeItemLoadingViewHolder = (StoreItemLoadingViewHolder) vVar;
        final Data data = this.f13274b.get(i);
        this.f13274b.get(i);
        storeItemLoadingViewHolder.getDataLayout().setAlpha(BitmapDescriptorFactory.HUE_RED);
        storeItemLoadingViewHolder.getTitle().setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131100140));
        storeItemLoadingViewHolder.getContainer().setCardBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099686));
        a(storeItemLoadingViewHolder, new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                AnalyticsManager analyticsManager = AnalyticsManager.get();
                analyticsManager.a(Constants.STORE, "Store item clicked", "Item sku: " + data.getSku());
                MarketPlaceAdapter.this.f13275c.a(data, storeItemLoadingViewHolder.getImageView(), storeItemLoadingViewHolder.getPromotionContainer());
            }
        }, this.f13274b.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        return a(LayoutInflater.from(viewGroup.getContext()).inflate(getItemLayoutId(), viewGroup, false));
    }

    public void setItemClickedListener(MarketItemClickEvent marketItemClickEvent) {
        this.f13275c = marketItemClickEvent;
    }
}
