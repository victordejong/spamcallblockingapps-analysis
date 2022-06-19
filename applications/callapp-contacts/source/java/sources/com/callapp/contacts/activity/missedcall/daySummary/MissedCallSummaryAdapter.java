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

    /* renamed from: c */
    private List<MissedCallSummaryItem> f23952c;

    /* renamed from: d */
    private onItemClick f23953d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter$onItemClick.class */
    public interface onItemClick {
        /* renamed from: a */
        void mo29778a(MissedCallSummaryItem missedCallSummaryItem);
    }

    public MissedCallSummaryAdapter(StoreItemAssetManager storeItemAssetManager, List<MissedCallSummaryItem> list, onItemClick onitemclick) {
        super(storeItemAssetManager);
        this.f23952c = list;
        this.f23953d = onitemclick;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        if (baseViewTypeData == null || baseViewTypeData.getViewType() != 18) {
            return;
        }
        MissedCallSummaryItemHolder missedCallSummaryItemHolder = (MissedCallSummaryItemHolder) baseCallAppViewHolder;
        MissedCallSummaryItem missedCallSummaryItem = (MissedCallSummaryItem) baseViewTypeData;
        ProfilePictureView profilePictureView = missedCallSummaryItemHolder.f23954s;
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(missedCallSummaryItem.getProfileImageView());
        glideRequestBuilder.f28246l = true;
        profilePictureView.m26684a(glideRequestBuilder);
        missedCallSummaryItemHolder.f23957v.setText(missedCallSummaryItem.getName());
        missedCallSummaryItemHolder.f23955t.setText(String.valueOf(missedCallSummaryItem.getNumberOfMissedCall()));
        if (missedCallSummaryItem.isNeedToShowBorder()) {
            missedCallSummaryItemHolder.f23954s.m26682a(true, true);
            missedCallSummaryItemHolder.f23954s.setAlpha(1.0f);
            missedCallSummaryItemHolder.f23957v.setTextColor(ThemeUtils.getColor(2131099918));
            missedCallSummaryItemHolder.f23956u.setColorFilter(ThemeUtils.getColor(2131099675));
            if (ThemeUtils.isThemeLight()) {
                missedCallSummaryItemHolder.f23957v.setTextColor(ThemeUtils.getColor(2131099918));
            } else {
                missedCallSummaryItemHolder.f23957v.setTextColor(ThemeUtils.getColor(2131100228));
            }
        } else {
            missedCallSummaryItemHolder.f23954s.m26682a(false, false);
            missedCallSummaryItemHolder.f23954s.setAlpha(0.6f);
            if (ThemeUtils.isThemeLight()) {
                missedCallSummaryItemHolder.f23957v.setTextColor(ThemeUtils.getColor(2131099917));
            } else {
                missedCallSummaryItemHolder.f23957v.setTextColor(ThemeUtils.getColor(2131099919));
            }
            missedCallSummaryItemHolder.f23956u.setColorFilter(ThemeUtils.getColor(2131099992));
        }
        String m26020j = StringUtils.m26020j(missedCallSummaryItem.getName());
        if (StringUtils.m26059a((CharSequence) m26020j)) {
            missedCallSummaryItemHolder.f23954s.setText("?");
        } else {
            missedCallSummaryItemHolder.f23954s.setText(StringUtils.m26010r(m26020j));
        }
        missedCallSummaryItemHolder.setOnClickListener(missedCallSummaryItem);
    }

    @Override // com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryItemHolder.OnProfilePictureListener
    /* renamed from: a */
    public final void mo29776a(MissedCallSummaryItem missedCallSummaryItem) {
        for (MissedCallSummaryItem missedCallSummaryItem2 : this.f23952c) {
            if (missedCallSummaryItem2.getPhoneAsRaw().equals(missedCallSummaryItem.getPhoneAsRaw())) {
                missedCallSummaryItem2.setNeedToShowBorder(true);
            } else {
                missedCallSummaryItem2.setNeedToShowBorder(false);
            }
        }
        onItemClick onitemclick = this.f23953d;
        if (onitemclick != null) {
            onitemclick.mo29778a(missedCallSummaryItem);
        }
        notifyDataSetChanged();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public BaseViewTypeData getItemAt(int i) {
        return this.f23952c.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f23952c.size();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemViewType(int i) {
        return 18;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 18) {
            return new MissedCallSummaryItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559169, viewGroup, false), this);
        }
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public void setData(Object obj) {
        this.f23952c = (List) obj;
        notifyDataSetChanged();
    }
}
