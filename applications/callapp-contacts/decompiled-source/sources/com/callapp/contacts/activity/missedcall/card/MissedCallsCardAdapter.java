package com.callapp.contacts.activity.missedcall.card;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder;
import com.callapp.contacts.activity.missedcall.card.MissedCallCardItemPromotionHolder;
import com.callapp.contacts.activity.missedcall.card.MissedCallPromotionManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter.class */
public class MissedCallsCardAdapter extends BaseCallAppAdapter implements MissedCallCardItemHolder.OnDeleteClickListener, MissedCallCardItemPromotionHolder.OnCloseClickListener {

    /* renamed from: c  reason: collision with root package name */
    List<BaseAdapterItemData> f13475c;

    /* renamed from: d  reason: collision with root package name */
    private ContactItemViewEvents f13476d;
    private boolean e;
    private UserCloseAllPromotions f;
    private UserCloseAllCards g;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllCards.class */
    public interface UserCloseAllCards {
        void m();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllPromotions.class */
    public interface UserCloseAllPromotions {
        void l();
    }

    public MissedCallsCardAdapter(StoreItemAssetManager storeItemAssetManager, List<BaseAdapterItemData> list, ContactItemViewEvents contactItemViewEvents, UserCloseAllPromotions userCloseAllPromotions, UserCloseAllCards userCloseAllCards) {
        super(storeItemAssetManager);
        this.f13475c = list;
        this.f13476d = contactItemViewEvents;
        this.f = userCloseAllPromotions;
        this.g = userCloseAllCards;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        if (baseViewTypeData != null) {
            int viewType = baseViewTypeData.getViewType();
            if (viewType == 18) {
                ((MissedCallCardItemHolder) baseCallAppViewHolder).a((MissedCallCardDataItem) baseViewTypeData, this.f13476d);
                if (this.f11076b != null && this.f11076b.f14980b.c()) {
                    baseCallAppViewHolder.setBackgroundColor(ThemeUtils.getColor(2131100145));
                }
            }
            if (viewType == 20) {
                MissedCallCardItemPromotionHolder missedCallCardItemPromotionHolder = (MissedCallCardItemPromotionHolder) baseCallAppViewHolder;
                MissedCallCardPromotionDataItem missedCallCardPromotionDataItem = (MissedCallCardPromotionDataItem) baseViewTypeData;
                boolean z = this.e;
                missedCallCardItemPromotionHolder.s.setText(missedCallCardPromotionDataItem.getMainTitle());
                missedCallCardItemPromotionHolder.t.setText(missedCallCardPromotionDataItem.getSubTitle());
                if (missedCallCardPromotionDataItem.getId().equals(MissedCallPromotionManager.MissedCallPromotionType.CONFIG.getName())) {
                    GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(missedCallCardItemPromotionHolder.u, missedCallCardPromotionDataItem.getImgFromUrl(), missedCallCardItemPromotionHolder.v);
                    glideRequestBuilder.q = true;
                    glideRequestBuilder.d();
                } else {
                    missedCallCardItemPromotionHolder.u.setImageResource(missedCallCardPromotionDataItem.getImage());
                }
                missedCallCardItemPromotionHolder.w.setVisibility(z ? 0 : 8);
                missedCallCardItemPromotionHolder.setListener(missedCallCardPromotionDataItem);
            }
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.OnDeleteClickListener
    public final void a(MissedCallCardItemHolder missedCallCardItemHolder, CallReminderFrequentData.FrequentType frequentType, int i) {
        List<BaseAdapterItemData> list;
        UserCloseAllCards userCloseAllCards;
        int adapterPosition = missedCallCardItemHolder.getAdapterPosition();
        if (adapterPosition >= 0 && (list = this.f13475c) != null && adapterPosition < list.size()) {
            BaseAdapterItemData baseAdapterItemData = this.f13475c.get(adapterPosition);
            this.f13475c.remove(adapterPosition);
            MissedCallManager.a(baseAdapterItemData.getPhone(), frequentType, i, 0L);
            notifyDataSetChanged();
            if (this.f13475c.size() == 1 && (userCloseAllCards = this.g) != null) {
                userCloseAllCards.m();
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public BaseViewTypeData getItemAt(int i) {
        return this.f13475c.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f13475c.size();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.a
    public int getItemViewType(int i) {
        return this.f13475c.get(i).getViewType();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 18) {
            return new MissedCallCardItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559167, viewGroup, false), this);
        }
        if (i == 20) {
            return new MissedCallCardItemPromotionHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559168, viewGroup, false), viewGroup.getContext(), this);
        }
        return null;
    }

    @Override // com.callapp.contacts.activity.missedcall.card.MissedCallCardItemPromotionHolder.OnCloseClickListener
    public final void r_() {
        Iterator<BaseAdapterItemData> it2 = this.f13475c.iterator();
        while (it2.hasNext()) {
            if (it2.next().getViewType() == 20) {
                it2.remove();
            }
        }
        notifyDataSetChanged();
        UserCloseAllPromotions userCloseAllPromotions = this.f;
        if (userCloseAllPromotions != null) {
            userCloseAllPromotions.l();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public void setData(Object obj) {
        this.f13475c = (List) obj;
        notifyDataSetChanged();
    }

    public void setOnlyPromotions(boolean z) {
        this.e = z;
    }
}
