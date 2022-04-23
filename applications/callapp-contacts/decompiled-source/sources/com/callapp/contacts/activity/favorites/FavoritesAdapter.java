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
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/favorites/FavoritesAdapter.class */
public class FavoritesAdapter extends DragItemAdapter<FavoriteMemoryContactItem, BaseFavoriteViewHolder> {

    /* renamed from: c  reason: collision with root package name */
    public boolean f12862c = Prefs.gc.get().booleanValue();

    /* renamed from: d  reason: collision with root package name */
    private final ScrollEvents f12863d;

    public FavoritesAdapter(List<FavoriteMemoryContactItem> list, StoreItemAssetManager storeItemAssetManager, ScrollEvents scrollEvents) {
        super(list, storeItemAssetManager);
        this.f12863d = scrollEvents;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        BaseFavoriteViewHolder baseFavoriteViewHolder = (BaseFavoriteViewHolder) baseCallAppViewHolder;
        FavoriteMemoryContactItem favoriteMemoryContactItem = (FavoriteMemoryContactItem) baseViewTypeData;
        super.a((DragItemAdapter.ViewHolder) baseFavoriteViewHolder, (BaseFavoriteViewHolder) favoriteMemoryContactItem);
        int viewType = favoriteMemoryContactItem.getViewType();
        if (viewType == 11) {
            ((FavoriteViewHolder) baseFavoriteViewHolder).a(favoriteMemoryContactItem, this.f12863d, this.f12862c);
            if (this.f11076b != null && this.f11076b.f14980b.c()) {
                baseFavoriteViewHolder.setBackgroundColor(ThemeUtils.getColor(2131100145));
            }
        }
        if (viewType == 23) {
            FavoritesPromotionViewHolder favoritesPromotionViewHolder = (FavoritesPromotionViewHolder) baseFavoriteViewHolder;
            if (favoriteMemoryContactItem != null && favoriteMemoryContactItem.getStickyData() != null) {
                if (!favoriteMemoryContactItem.getStickyData().getNeedBilling() || BillingManager.isBillingAvailable()) {
                    final JsonStickyData jsonStickyData = favoriteMemoryContactItem.getStickyData();
                    p.d(jsonStickyData, "jsonStickyData");
                    favoritesPromotionViewHolder.w.setText(jsonStickyData.getTitle());
                    TextView textView = favoritesPromotionViewHolder.y;
                    JsonStickyAction action = jsonStickyData.getAction();
                    p.b(action, "jsonStickyData.action");
                    textView.setText(action.getActionText());
                    GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(favoritesPromotionViewHolder.x, jsonStickyData.getImg(), favoritesPromotionViewHolder.x.getContext());
                    glideRequestBuilder.q = true;
                    glideRequestBuilder.d();
                    GlideUtils.GlideRequestBuilder glideRequestBuilder2 = new GlideUtils.GlideRequestBuilder(favoritesPromotionViewHolder.z, jsonStickyData.getBackground(), favoritesPromotionViewHolder.z.getContext());
                    glideRequestBuilder2.q = true;
                    glideRequestBuilder2.d();
                    favoritesPromotionViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.favorites.FavoritesPromotionViewHolder$onBind$1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            JsonStickyAction action2 = JsonStickyData.this.getAction();
                            p.b(action2, "jsonStickyData.action");
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(action2.getCta()));
                            CallAppApplication callAppApplication = CallAppApplication.get();
                            p.b(callAppApplication, "CallAppApplication.get()");
                            intent.setPackage(callAppApplication.getPackageName());
                            AnalyticsManager.get().a(Constants.IN_APP_PROMOTION, "ClickFavouritePromotion");
                            Activities.b(CallAppApplication.get(), intent);
                        }
                    });
                    View itemView = favoritesPromotionViewHolder.itemView;
                    p.b(itemView, "itemView");
                    FavoritesPromotionViewHolder.a(itemView);
                }
            }
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

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 11) {
            return new FavoriteViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559161, viewGroup, false));
        }
        if (i == 12) {
            return new AddFavoriteViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559130, viewGroup, false));
        }
        if (i == 23) {
            return new FavoritesPromotionViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559171, viewGroup, false));
        }
        return null;
    }
}
