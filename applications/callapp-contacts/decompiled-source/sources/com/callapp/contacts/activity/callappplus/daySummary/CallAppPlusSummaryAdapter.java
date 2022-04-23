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

    /* renamed from: c  reason: collision with root package name */
    private List<CallAppPlusSummaryItem> f11354c;

    /* renamed from: d  reason: collision with root package name */
    private onItemClick f11355d;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter$onItemClick.class */
    public interface onItemClick {
        void a(CallAppPlusSummaryItem callAppPlusSummaryItem);
    }

    public CallAppPlusSummaryAdapter(StoreItemAssetManager storeItemAssetManager, List<CallAppPlusSummaryItem> list, onItemClick onitemclick) {
        super(storeItemAssetManager);
        this.f11354c = list;
        this.f11355d = onitemclick;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        if (baseViewTypeData != null && baseViewTypeData.getViewType() == 22) {
            ((CallAppPlusSummaryItemHolder) baseCallAppViewHolder).a((CallAppPlusSummaryItem) baseViewTypeData);
        }
    }

    @Override // com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryItemHolder.OnProfilePictureListener
    public final void a(CallAppPlusSummaryItem callAppPlusSummaryItem) {
        for (CallAppPlusSummaryItem callAppPlusSummaryItem2 : this.f11354c) {
            if (callAppPlusSummaryItem2.getPhoneAsRaw().equals(callAppPlusSummaryItem.getPhoneAsRaw())) {
                callAppPlusSummaryItem2.setNeedToShowBorder(true);
            } else {
                callAppPlusSummaryItem2.setNeedToShowBorder(false);
            }
        }
        onItemClick onitemclick = this.f11355d;
        if (onitemclick != null) {
            onitemclick.a(callAppPlusSummaryItem);
        }
        notifyDataSetChanged();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public BaseViewTypeData getItemAt(int i) {
        return this.f11354c.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return this.f11354c.size();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.a
    public int getItemViewType(int i) {
        return 22;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 22) {
            return new CallAppPlusSummaryItemHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559154, viewGroup, false), this);
        }
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public void setData(Object obj) {
        this.f11354c = (List) obj;
        notifyDataSetChanged();
    }
}
