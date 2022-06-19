package com.callapp.contacts.activity.whoViewedMyProfile;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.ScrollEvents;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter.class */
public class WhoViewedMyProfileAdapter extends BaseCallAppListAdapter<WhoViewedMyProfileDataItem, BaseCallAppViewHolder> {

    /* renamed from: c */
    private ScrollEvents f24634c;

    public WhoViewedMyProfileAdapter(List<WhoViewedMyProfileDataItem> list, ScrollEvents scrollEvents) {
        super(list);
        this.f24634c = scrollEvents;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        WhoViewedMyProfileDataItem whoViewedMyProfileDataItem = (WhoViewedMyProfileDataItem) baseViewTypeData;
        if (whoViewedMyProfileDataItem.getViewType() == 26) {
            ((WhoViewedMyProfileViewHolder) baseCallAppViewHolder).m29333a(whoViewedMyProfileDataItem);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 26) {
            return new WhoViewedMyProfileViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559176, viewGroup, false), this.f24634c);
        }
        return null;
    }
}
