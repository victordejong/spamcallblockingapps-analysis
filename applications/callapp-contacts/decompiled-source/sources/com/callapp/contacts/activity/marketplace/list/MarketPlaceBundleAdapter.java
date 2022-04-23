package com.callapp.contacts.activity.marketplace.list;

import android.view.View;
import androidx.lifecycle.j;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreItemBundle;
import com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter;
import com.callapp.contacts.activity.marketplace.viewholders.BundleItemViewHolder;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B3\u0012\u0010\u0010\u0004\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010\r\u001a\u00020\u000eH\u0014J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0014J&\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceBundleAdapter;", "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;", "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;", "Lcom/callapp/contacts/activity/marketplace/viewholders/BundleItemViewHolder;", "skins", "", "marketItemClickEvent", "Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;", "catalogAttributes", "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/Lifecycle;)V", "getItemLayoutId", "", "onCreateViewHolderAdapter", "view", "Landroid/view/View;", "startLoadingData", "", "holder", "dataLoadedClickListener", "Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;", "storeItem", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/list/MarketPlaceBundleAdapter.class */
public final class MarketPlaceBundleAdapter extends MarketPlaceAdapter<JSONStoreItemBundle, BundleItemViewHolder> {

    /* renamed from: b  reason: collision with root package name */
    private final j f13279b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MarketPlaceBundleAdapter(List<? extends JSONStoreItemBundle> list, MarketPlaceAdapter.MarketItemClickEvent marketItemClickEvent, CatalogManager.CatalogAttributes catalogAttributes, j lifecycle) {
        super(list, marketItemClickEvent, catalogAttributes);
        p.d(lifecycle, "lifecycle");
        this.f13279b = lifecycle;
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    public final /* synthetic */ BundleItemViewHolder a(View view) {
        return new BundleItemViewHolder(view, this.f13273a, this.f13279b);
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    public final /* synthetic */ void a(BundleItemViewHolder bundleItemViewHolder, DefaultInterfaceImplUtils.ClickListener clickListener, JSONStoreItemBundle jSONStoreItemBundle) {
        BundleItemViewHolder bundleItemViewHolder2 = bundleItemViewHolder;
        p.a(bundleItemViewHolder2);
        JSONStoreItemBundle jSONStoreItemBundle2 = jSONStoreItemBundle;
        bundleItemViewHolder2.r.setBackgroundColor(jSONStoreItemBundle2.getColor());
        bundleItemViewHolder2.a(clickListener, jSONStoreItemBundle2.getSku(), jSONStoreItemBundle2.getUrl(), jSONStoreItemBundle2.getColor());
    }

    @Override // com.callapp.contacts.activity.marketplace.list.MarketPlaceAdapter
    protected final int getItemLayoutId() {
        return 2131558770;
    }
}
