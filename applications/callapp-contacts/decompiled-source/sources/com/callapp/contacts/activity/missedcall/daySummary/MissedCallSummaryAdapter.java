package com.callapp.contacts.activity.missedcall.daySummary;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseCallAppAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryItemHolder;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter.class */
public class MissedCallSummaryAdapter extends BaseCallAppAdapter implements MissedCallSummaryItemHolder.OnProfilePictureListener {

    /* renamed from: c  reason: collision with root package name */
    private List<MissedCallSummaryItem> f13477c;

    /* renamed from: d  reason: collision with root package name */
    private onItemClick f13478d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter$onItemClick.class */
    public interface onItemClick {
        void a(MissedCallSummaryItem missedCallSummaryItem);
    }

    public MissedCallSummaryAdapter(StoreItemAssetManager storeItemAssetManager, List<MissedCallSummaryItem> list, onItemClick onitemclick) {
        super(storeItemAssetManager);
        this.f13477c = list;
        this.f13478d = onitemclick;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        if (baseViewTypeData != null && baseViewTypeData.getViewType() == 18) {
            MissedCallSummaryItemHolder missedCallSummaryItemHolder = (MissedCallSummaryItemHolder) baseCallAppViewHolder;
            MissedCallSummaryItem missedCallSummaryItem = (MissedCallSummaryItem) baseViewTypeData;
            ProfilePictureView profilePictureView = missedCallSummaryItemHolder.s;
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(missedCallSummaryItem.getProfileImageView());
            glideRequestBuilder.l = true;
            profilePictureView.a(glideRequestBuilder);
            missedCallSummaryItemHolder.v.setText(missedCallSummaryItem.getName());
            missedCallSummaryItemHolder.t.setText(String.valueOf(missedCallSummaryItem.getNumberOfMissedCall()));
            if (missedCallSummaryItem.isNeedToShowBorder()) {
                missedCallSummaryItemHolder.s.a(true, true);
                missedCallSummaryItemHolder.s.setAlpha(1.0f);
                missedCallSummaryItemHolder.v.setTextColor(ThemeUtils.getColor(2131099918));
                missedCallSummaryItemHolder.u.setColorFilter(ThemeUtils.getColor(2131099675));
                if (ThemeUtils.isThemeLight()) {
                    missedCallSummaryItemHolder.v.setTextColor(ThemeUtils.getColor(2131099918));
                } else {
                    missedCallSummaryItemHolder.v.setTextColor(ThemeUtils.getColor(2131100228));
                }
            } else {
                missedCallSummaryItemHolder.s.a(false, false);
                missedCallSummaryItemHolder.s.setAlpha(0.6f);
                if (ThemeUtils.isThemeLight()) {
                    missedCallSummaryItemHolder.v.setTextColor(ThemeUtils.getColor(2131099917));
                } else {
                    missedCallSummaryItemHolder.v.setTextColor(ThemeUtils.getColor(2131099919));
                }
                missedCallSummaryItemHolder.u.setColorFilter(ThemeUtils.getColor(2131099992));
            }
            String j = StringUtils.j(missedCallSummaryItem.getName());
            if (StringUtils.a((CharSequence) j)) {
                missedCallSummaryItemHolder.s.setText("?");
            } else {
                missedCallSummaryItemHolder.s.setText(StringUtils.r(j));
            }
            missedCallSummaryItemHolder.setOnClickListener(missedCallSummaryItem);
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryItemHolder.OnProfilePictureListener
    public final void a(MissedCallSummaryItem missedCallSummaryItem) {
        for (MissedCallSummaryItem missedCallSummaryItem2 : this.f13477c) {
            if (missedCallSummaryItem2.getPhoneAsRaw().equals(missedCallSummaryItem.getPhoneAsRaw())) {
                missedCallSummaryItem2.setNeedToShowBorder(true);
            } else {
                missedCallSummaryItem2.setNeedToShowBorder(false);
            }
        }
        onItemClick onitemclick = this.f13478d;
        if (onitemclick != null) {
            onitemclick.a(missedCallSummaryItem);
        }
        notifyDataSetChanged();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public BaseViewTypeData getItemAt(int i) {
        return this.f13477c.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f13477c.size();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.a
    public int getItemViewType(int i) {
        return 18;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 18) {
            return new MissedCallSummaryItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559169, viewGroup, false), this);
        }
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public void setData(Object obj) {
        this.f13477c = (List) obj;
        notifyDataSetChanged();
    }
}
