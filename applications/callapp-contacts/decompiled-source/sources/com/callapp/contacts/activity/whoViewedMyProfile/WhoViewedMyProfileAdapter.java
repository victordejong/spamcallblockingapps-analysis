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

    /* renamed from: c  reason: collision with root package name */
    private ScrollEvents f14013c;

    public WhoViewedMyProfileAdapter(List<WhoViewedMyProfileDataItem> list, ScrollEvents scrollEvents) {
        super(list);
        this.f14013c = scrollEvents;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        WhoViewedMyProfileDataItem whoViewedMyProfileDataItem = (WhoViewedMyProfileDataItem) baseViewTypeData;
        if (whoViewedMyProfileDataItem.getViewType() == 26) {
            ((WhoViewedMyProfileViewHolder) baseCallAppViewHolder).a(whoViewedMyProfileDataItem);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 26) {
            return new WhoViewedMyProfileViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559176, viewGroup, false), this.f14013c);
        }
        return null;
    }
}
