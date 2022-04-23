package com.callapp.contacts.activity.callappplus;

import a.a.a.a.a.b;
import android.content.Context;
import android.view.LayoutInflater;
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
import com.callapp.contacts.activity.base.SectionViewHolder;
import com.callapp.contacts.activity.callappplus.ContactPlusViewHolder;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusAdapter.class */
public class CallAppPlusAdapter extends BaseCallAppListAdapter<CallAppPlusData, ContactPlusViewHolder> implements b<SectionViewHolder>, ContactPlusViewHolder.IconsClickEvents {

    /* renamed from: c  reason: collision with root package name */
    private Map<Integer, SectionData> f11267c;

    /* renamed from: d  reason: collision with root package name */
    private ScrollEvents f11268d;

    public CallAppPlusAdapter(List<CallAppPlusData> list, Map<Integer, SectionData> map, ScrollEvents scrollEvents) {
        super(list);
        this.f11267c = map;
        this.f11268d = scrollEvents;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(CallAppPlusData callAppPlusData) {
        AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "Add to favorites");
        ContactPlusUtils.a(callAppPlusData);
        EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.IDENTIFIED_CONTACTS_DATA_CHANGED, false);
    }

    @Override // a.a.a.a.a.b
    public final /* synthetic */ SectionViewHolder a(ViewGroup viewGroup) {
        return new SectionViewHolder(LayoutInflater.from(CallAppApplication.get()).inflate(2131558766, viewGroup, false));
    }

    @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.IconsClickEvents
    public final void a(Context context, CallAppPlusData callAppPlusData) {
        Activities.b(context, ContactUtils.a(ContactUtils.a(callAppPlusData.getPhone()), true));
    }

    @Override // a.a.a.a.a.b
    public final /* synthetic */ void a(SectionViewHolder sectionViewHolder, int i) {
        SectionViewHolder sectionViewHolder2 = sectionViewHolder;
        sectionViewHolder2.setText(this.f11267c.get(Integer.valueOf(getItemAt(i).getSectionId())).getText());
        if (ThemeUtils.isThemeLight()) {
            sectionViewHolder2.setBackgroundColor(ThemeUtils.getColor(2131099921));
        } else {
            sectionViewHolder2.setBackgroundColor(ThemeUtils.getColor(2131099819));
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        ((ContactPlusViewHolder) baseCallAppViewHolder).a((CallAppPlusData) baseViewTypeData, this.f11268d, this, getContextMenuType(), getContextMenuAnalyticsTag());
    }

    @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.IconsClickEvents
    public final void a(final CallAppPlusData callAppPlusData, boolean z) {
        callAppPlusData.setStarred(z);
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$CallAppPlusAdapter$a2ieTpzGf_4CcmOex2D5X2rSkTQ
            @Override // java.lang.Runnable
            public final void run() {
                CallAppPlusAdapter.a(CallAppPlusData.this);
            }
        });
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.CALLAPP_PLUS;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CALLAPP_PLUS_ITEM;
    }

    @Override // a.a.a.a.a.b
    public long getHeaderId(int i) {
        return getItemAt(i).getSectionId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f11158b = CallAppViewTypes.CALLAPP_PLUS_LAYOUT;
        return new ContactPlusViewHolder(builder.a(), 2131363690, 2131363691);
    }
}
