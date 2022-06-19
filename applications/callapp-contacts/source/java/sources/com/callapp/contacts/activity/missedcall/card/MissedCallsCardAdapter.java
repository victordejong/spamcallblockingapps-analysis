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

    /* renamed from: c */
    List<BaseAdapterItemData> f23947c;

    /* renamed from: d */
    private ContactItemViewEvents f23948d;

    /* renamed from: e */
    private boolean f23949e;

    /* renamed from: f */
    private UserCloseAllPromotions f23950f;

    /* renamed from: g */
    private UserCloseAllCards f23951g;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllCards.class */
    public interface UserCloseAllCards {
        /* renamed from: m */
        void mo29780m();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllPromotions.class */
    public interface UserCloseAllPromotions {
        /* renamed from: l */
        void mo29779l();
    }

    public MissedCallsCardAdapter(StoreItemAssetManager storeItemAssetManager, List<BaseAdapterItemData> list, ContactItemViewEvents contactItemViewEvents, UserCloseAllPromotions userCloseAllPromotions, UserCloseAllCards userCloseAllCards) {
        super(storeItemAssetManager);
        this.f23947c = list;
        this.f23948d = contactItemViewEvents;
        this.f23950f = userCloseAllPromotions;
        this.f23951g = userCloseAllCards;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        if (baseViewTypeData != null) {
            int viewType = baseViewTypeData.getViewType();
            if (viewType == 18) {
                ((MissedCallCardItemHolder) baseCallAppViewHolder).m29805a((MissedCallCardDataItem) baseViewTypeData, this.f23948d);
                if (this.f20246b != null && this.f20246b.f25904b.m28397c()) {
                    baseCallAppViewHolder.setBackgroundColor(ThemeUtils.getColor(2131100145));
                }
            }
            if (viewType != 20) {
                return;
            }
            MissedCallCardItemPromotionHolder missedCallCardItemPromotionHolder = (MissedCallCardItemPromotionHolder) baseCallAppViewHolder;
            MissedCallCardPromotionDataItem missedCallCardPromotionDataItem = (MissedCallCardPromotionDataItem) baseViewTypeData;
            boolean z = this.f23949e;
            missedCallCardItemPromotionHolder.f23908s.setText(missedCallCardPromotionDataItem.getMainTitle());
            missedCallCardItemPromotionHolder.f23909t.setText(missedCallCardPromotionDataItem.getSubTitle());
            if (missedCallCardPromotionDataItem.getId().equals(MissedCallPromotionManager.MissedCallPromotionType.CONFIG.getName())) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(missedCallCardItemPromotionHolder.f23910u, missedCallCardPromotionDataItem.getImgFromUrl(), missedCallCardItemPromotionHolder.f23911v);
                glideRequestBuilder.f28251q = true;
                glideRequestBuilder.m27013d();
            } else {
                missedCallCardItemPromotionHolder.f23910u.setImageResource(missedCallCardPromotionDataItem.getImage());
            }
            missedCallCardItemPromotionHolder.f23912w.setVisibility(z ? 0 : 8);
            missedCallCardItemPromotionHolder.setListener(missedCallCardPromotionDataItem);
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.card.MissedCallCardItemHolder.OnDeleteClickListener
    /* renamed from: a */
    public final void mo29782a(MissedCallCardItemHolder missedCallCardItemHolder, CallReminderFrequentData.FrequentType frequentType, int i) {
        List<BaseAdapterItemData> list;
        UserCloseAllCards userCloseAllCards;
        int adapterPosition = missedCallCardItemHolder.getAdapterPosition();
        if (adapterPosition < 0 || (list = this.f23947c) == null || adapterPosition >= list.size()) {
            return;
        }
        BaseAdapterItemData baseAdapterItemData = this.f23947c.get(adapterPosition);
        this.f23947c.remove(adapterPosition);
        MissedCallManager.m29823a(baseAdapterItemData.getPhone(), frequentType, i, 0L);
        notifyDataSetChanged();
        if (this.f23947c.size() != 1 || (userCloseAllCards = this.f23951g) == null) {
            return;
        }
        userCloseAllCards.mo29780m();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public BaseViewTypeData getItemAt(int i) {
        return this.f23947c.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f23947c.size();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemViewType(int i) {
        return this.f23947c.get(i).getViewType();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 18) {
            return new MissedCallCardItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559167, viewGroup, false), this);
        }
        if (i != 20) {
            return null;
        }
        return new MissedCallCardItemPromotionHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559168, viewGroup, false), viewGroup.getContext(), this);
    }

    @Override // com.callapp.contacts.activity.missedcall.card.MissedCallCardItemPromotionHolder.OnCloseClickListener
    /* renamed from: r_ */
    public final void mo29781r_() {
        Iterator<BaseAdapterItemData> it2 = this.f23947c.iterator();
        while (it2.hasNext()) {
            if (it2.next().getViewType() == 20) {
                it2.remove();
            }
        }
        notifyDataSetChanged();
        UserCloseAllPromotions userCloseAllPromotions = this.f23950f;
        if (userCloseAllPromotions != null) {
            userCloseAllPromotions.mo29779l();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public void setData(Object obj) {
        this.f23947c = (List) obj;
        notifyDataSetChanged();
    }

    public void setOnlyPromotions(boolean z) {
        this.f23949e = z;
    }
}
