package com.callapp.contacts.activity.favorites;

import android.content.Intent;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.calllog.stickyBanner.JsonStickyAction;
import com.callapp.contacts.activity.calllog.stickyBanner.JsonStickyData;
import com.callapp.contacts.activity.favorites.DragItemAdapter;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import java.util.List;
import kotlin.jvm.internal.C18524p;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/FavoritesAdapter.class */
public class FavoritesAdapter extends DragItemAdapter<FavoriteMemoryContactItem, BaseFavoriteViewHolder> {

    /* renamed from: c */
    public boolean f23008c = Prefs.f26570gc.get().booleanValue();

    /* renamed from: d */
    private final ScrollEvents f23009d;

    public FavoritesAdapter(List<FavoriteMemoryContactItem> list, StoreItemAssetManager storeItemAssetManager, ScrollEvents scrollEvents) {
        super(list, storeItemAssetManager);
        this.f23009d = scrollEvents;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        BaseFavoriteViewHolder baseFavoriteViewHolder = (BaseFavoriteViewHolder) baseCallAppViewHolder;
        FavoriteMemoryContactItem favoriteMemoryContactItem = (FavoriteMemoryContactItem) baseViewTypeData;
        super.m30306a((DragItemAdapter.ViewHolder) baseFavoriteViewHolder, (BaseFavoriteViewHolder) favoriteMemoryContactItem);
        int viewType = favoriteMemoryContactItem.getViewType();
        if (viewType == 11) {
            ((FavoriteViewHolder) baseFavoriteViewHolder).m30273a(favoriteMemoryContactItem, this.f23009d, this.f23008c);
            if (this.f20246b != null && this.f20246b.f25904b.m28397c()) {
                baseFavoriteViewHolder.setBackgroundColor(ThemeUtils.getColor(2131100145));
            }
        }
        if (viewType == 23) {
            FavoritesPromotionViewHolder favoritesPromotionViewHolder = (FavoritesPromotionViewHolder) baseFavoriteViewHolder;
            if (favoriteMemoryContactItem == null || favoriteMemoryContactItem.getStickyData() == null) {
                return;
            }
            if (!(!favoriteMemoryContactItem.getStickyData().getNeedBilling() || BillingManager.isBillingAvailable())) {
                return;
            }
            final JsonStickyData jsonStickyData = favoriteMemoryContactItem.getStickyData();
            C18524p.m3840d(jsonStickyData, "jsonStickyData");
            favoritesPromotionViewHolder.f23010w.setText(jsonStickyData.getTitle());
            TextView textView = favoritesPromotionViewHolder.f23012y;
            JsonStickyAction action = jsonStickyData.getAction();
            C18524p.m3843b(action, "jsonStickyData.action");
            textView.setText(action.getActionText());
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(favoritesPromotionViewHolder.f23011x, jsonStickyData.getImg(), favoritesPromotionViewHolder.f23011x.getContext());
            glideRequestBuilder.f28251q = true;
            glideRequestBuilder.m27013d();
            GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(favoritesPromotionViewHolder.f23013z, jsonStickyData.getBackground(), favoritesPromotionViewHolder.f23013z.getContext());
            glideRequestBuilder2.f28251q = true;
            glideRequestBuilder2.m27013d();
            favoritesPromotionViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.favorites.FavoritesPromotionViewHolder$onBind$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    JsonStickyAction action2 = JsonStickyData.this.getAction();
                    C18524p.m3843b(action2, "jsonStickyData.action");
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(action2.getCta()));
                    CallAppApplication callAppApplication = CallAppApplication.get();
                    C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
                    intent.setPackage(callAppApplication.getPackageName());
                    AnalyticsManager.get().m28450a(Constants.IN_APP_PROMOTION, "ClickFavouritePromotion");
                    Activities.m27656b(CallAppApplication.get(), intent);
                }
            });
            View itemView = favoritesPromotionViewHolder.itemView;
            C18524p.m3843b(itemView, "itemView");
            FavoritesPromotionViewHolder.m30270a(itemView);
        }
    }

    @Override // com.callapp.contacts.activity.favorites.DragItemAdapter
    public long getUniqueItemId(int i) {
        Data itemAt = getItemAt(i);
        if (itemAt != 0) {
            return ((FavoriteMemoryContactItem) itemAt).contactId;
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 11) {
            return new FavoriteViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559161, viewGroup, false));
        }
        if (i == 12) {
            return new AddFavoriteViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559130, viewGroup, false));
        }
        if (i != 23) {
            return null;
        }
        return new FavoritesPromotionViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559171, viewGroup, false));
    }
}
