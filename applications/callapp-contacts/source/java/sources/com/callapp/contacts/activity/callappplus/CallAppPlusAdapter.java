package com.callapp.contacts.activity.callappplus;

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
import p001a.p002a.p003a.p004a.p005a.AbstractC0003b;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusAdapter.class */
public class CallAppPlusAdapter extends BaseCallAppListAdapter<CallAppPlusData, ContactPlusViewHolder> implements AbstractC0003b<SectionViewHolder>, ContactPlusViewHolder.IconsClickEvents {

    /* renamed from: c */
    private Map<Integer, SectionData> f20525c;

    /* renamed from: d */
    private ScrollEvents f20526d;

    public CallAppPlusAdapter(List<CallAppPlusData> list, Map<Integer, SectionData> map, ScrollEvents scrollEvents) {
        super(list);
        this.f20525c = map;
        this.f20526d = scrollEvents;
    }

    /* renamed from: a */
    public static /* synthetic */ void m31420a(CallAppPlusData callAppPlusData) {
        AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS, "Add to favorites");
        ContactPlusUtils.m28344a(callAppPlusData);
        EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.IDENTIFIED_CONTACTS_DATA_CHANGED, false);
    }

    @Override // p001a.p002a.p003a.p004a.p005a.AbstractC0003b
    /* renamed from: a */
    public final /* synthetic */ SectionViewHolder mo30417a(ViewGroup viewGroup) {
        return new SectionViewHolder(LayoutInflater.from(CallAppApplication.get()).inflate(2131558766, viewGroup, false));
    }

    @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.IconsClickEvents
    /* renamed from: a */
    public final void mo31384a(Context context, CallAppPlusData callAppPlusData) {
        Activities.m27656b(context, ContactUtils.m28328a(ContactUtils.m28327a(callAppPlusData.getPhone()), true));
    }

    @Override // p001a.p002a.p003a.p004a.p005a.AbstractC0003b
    /* renamed from: a */
    public final /* synthetic */ void mo30416a(SectionViewHolder sectionViewHolder, int i) {
        SectionViewHolder sectionViewHolder2 = sectionViewHolder;
        sectionViewHolder2.setText(this.f20525c.get(Integer.valueOf(getItemAt(i).getSectionId())).getText());
        if (ThemeUtils.isThemeLight()) {
            sectionViewHolder2.setBackgroundColor(ThemeUtils.getColor(2131099921));
        } else {
            sectionViewHolder2.setBackgroundColor(ThemeUtils.getColor(2131099819));
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        ((ContactPlusViewHolder) baseCallAppViewHolder).m31392a((CallAppPlusData) baseViewTypeData, this.f20526d, this, getContextMenuType(), getContextMenuAnalyticsTag());
    }

    @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.IconsClickEvents
    /* renamed from: a */
    public final void mo31383a(final CallAppPlusData callAppPlusData, boolean z) {
        callAppPlusData.setStarred(z);
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$CallAppPlusAdapter$a2ieTpzGf_4CcmOex2D5X2rSkTQ
            @Override // java.lang.Runnable
            public final void run() {
                CallAppPlusAdapter.m31420a(CallAppPlusData.this);
            }
        });
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.CALLAPP_PLUS;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CALLAPP_PLUS_ITEM;
    }

    @Override // p001a.p002a.p003a.p004a.p005a.AbstractC0003b
    public long getHeaderId(int i) {
        return getItemAt(i).getSectionId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f20368b = CallAppViewTypes.CALLAPP_PLUS_LAYOUT;
        return new ContactPlusViewHolder(builder.m31474a(), 2131363690, 2131363691);
    }
}
