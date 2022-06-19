package com.callapp.contacts.activity.callappplus.daySummary;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseCallAppAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryItemHolder;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter.class */
public class CallAppPlusSummaryAdapter extends BaseCallAppAdapter implements CallAppPlusSummaryItemHolder.OnProfilePictureListener {

    /* renamed from: c */
    private List<CallAppPlusSummaryItem> f20661c;

    /* renamed from: d */
    private onItemClick f20662d;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter$onItemClick.class */
    public interface onItemClick {
        /* renamed from: a */
        void mo31375a(CallAppPlusSummaryItem callAppPlusSummaryItem);
    }

    public CallAppPlusSummaryAdapter(StoreItemAssetManager storeItemAssetManager, List<CallAppPlusSummaryItem> list, onItemClick onitemclick) {
        super(storeItemAssetManager);
        this.f20661c = list;
        this.f20662d = onitemclick;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        if (baseViewTypeData == null || baseViewTypeData.getViewType() != 22) {
            return;
        }
        ((CallAppPlusSummaryItemHolder) baseCallAppViewHolder).m31374a((CallAppPlusSummaryItem) baseViewTypeData);
    }

    @Override // com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryItemHolder.OnProfilePictureListener
    /* renamed from: a */
    public final void mo31372a(CallAppPlusSummaryItem callAppPlusSummaryItem) {
        for (CallAppPlusSummaryItem callAppPlusSummaryItem2 : this.f20661c) {
            if (callAppPlusSummaryItem2.getPhoneAsRaw().equals(callAppPlusSummaryItem.getPhoneAsRaw())) {
                callAppPlusSummaryItem2.setNeedToShowBorder(true);
            } else {
                callAppPlusSummaryItem2.setNeedToShowBorder(false);
            }
        }
        onItemClick onitemclick = this.f20662d;
        if (onitemclick != null) {
            onitemclick.mo31375a(callAppPlusSummaryItem);
        }
        notifyDataSetChanged();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public BaseViewTypeData getItemAt(int i) {
        return this.f20661c.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return this.f20661c.size();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemViewType(int i) {
        return 22;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 22) {
            return new CallAppPlusSummaryItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559154, viewGroup, false), this);
        }
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public void setData(Object obj) {
        this.f20661c = (List) obj;
        notifyDataSetChanged();
    }
}
