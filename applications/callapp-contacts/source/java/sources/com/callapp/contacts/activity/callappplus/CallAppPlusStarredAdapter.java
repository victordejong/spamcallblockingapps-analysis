package com.callapp.contacts.activity.callappplus;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.callappplus.ContactPlusViewHolder;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusStarredAdapter.class */
public class CallAppPlusStarredAdapter extends BaseCallAppListAdapter<CallAppPlusData, ContactPlusViewHolder> implements ContactPlusViewHolder.IconsClickEvents {

    /* renamed from: c */
    private final ScrollEvents f20553c;

    public CallAppPlusStarredAdapter(List<CallAppPlusData> list, ScrollEvents scrollEvents) {
        super(list);
        this.f20553c = scrollEvents;
    }

    /* renamed from: a */
    public static /* synthetic */ void m31410a(CallAppPlusData callAppPlusData) {
        AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS, "remove from favorites");
        ContactPlusUtils.m28344a(callAppPlusData);
        EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.IDENTIFIED_CONTACTS_DATA_CHANGED, false);
    }

    @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.IconsClickEvents
    /* renamed from: a */
    public final void mo31384a(Context context, CallAppPlusData callAppPlusData) {
        Activities.m27656b(context, ContactUtils.m28328a(ContactUtils.m28327a(callAppPlusData.getPhone()), true));
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        ((ContactPlusViewHolder) baseCallAppViewHolder).m31392a((CallAppPlusData) baseViewTypeData, this.f20553c, this, getContextMenuType(), getContextMenuAnalyticsTag());
    }

    @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.IconsClickEvents
    /* renamed from: a */
    public final void mo31383a(final CallAppPlusData callAppPlusData, boolean z) {
        callAppPlusData.setStarred(z);
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$CallAppPlusStarredAdapter$zSkaznmn4hFg7rkv5QkmMmq_Ab8
            @Override // java.lang.Runnable
            public final void run() {
                CallAppPlusStarredAdapter.m31410a(CallAppPlusData.this);
            }
        });
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.CALLAPP_PLUS;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CALLAPP_PLUS_STARRED_ITEM;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f20368b = CallAppViewTypes.CALLAPP_PLUS_LAYOUT;
        return new ContactPlusViewHolder(builder.m31474a(), 2131363690, 2131363691);
    }
}
