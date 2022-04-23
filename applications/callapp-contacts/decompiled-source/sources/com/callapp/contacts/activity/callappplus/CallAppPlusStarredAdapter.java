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

    /* renamed from: c  reason: collision with root package name */
    private final ScrollEvents f11286c;

    public CallAppPlusStarredAdapter(List<CallAppPlusData> list, ScrollEvents scrollEvents) {
        super(list);
        this.f11286c = scrollEvents;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(CallAppPlusData callAppPlusData) {
        AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "remove from favorites");
        ContactPlusUtils.a(callAppPlusData);
        EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.IDENTIFIED_CONTACTS_DATA_CHANGED, false);
    }

    @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.IconsClickEvents
    public final void a(Context context, CallAppPlusData callAppPlusData) {
        Activities.b(context, ContactUtils.a(ContactUtils.a(callAppPlusData.getPhone()), true));
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        ((ContactPlusViewHolder) baseCallAppViewHolder).a((CallAppPlusData) baseViewTypeData, this.f11286c, this, getContextMenuType(), getContextMenuAnalyticsTag());
    }

    @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.IconsClickEvents
    public final void a(final CallAppPlusData callAppPlusData, boolean z) {
        callAppPlusData.setStarred(z);
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$CallAppPlusStarredAdapter$zSkaznmn4hFg7rkv5QkmMmq_Ab8
            @Override // java.lang.Runnable
            public final void run() {
                CallAppPlusStarredAdapter.a(CallAppPlusData.this);
            }
        });
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.CALLAPP_PLUS;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CALLAPP_PLUS_STARRED_ITEM;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f11158b = CallAppViewTypes.CALLAPP_PLUS_LAYOUT;
        return new ContactPlusViewHolder(builder.a(), 2131363690, 2131363691);
    }
}
