package com.callapp.contacts.activity.callappplus;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.base.HeaderSectionData;
import com.callapp.contacts.activity.base.HeaderViewHolder;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.callappplus.ContactPlusViewHolder;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/SearchCallAppPlusAdapter.class */
public class SearchCallAppPlusAdapter extends BaseCallAppListAdapter<BaseAdapterItemData, BaseCallAppViewHolder> implements ContactPlusViewHolder.IconsClickEvents {

    /* renamed from: c */
    private ScrollEvents f20645c;

    public SearchCallAppPlusAdapter(ScrollEvents scrollEvents, List<BaseAdapterItemData> list) {
        super(list);
        this.f20645c = scrollEvents;
    }

    /* renamed from: b */
    public static /* synthetic */ void m31382b(CallAppPlusData callAppPlusData, boolean z) {
        ContactPlusUtils.m28344a(callAppPlusData);
        EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.IDENTIFIED_CONTACTS_DATA_CHANGED, false);
        FeedbackManager.get().m28669a(z ? Activities.getString(2131886467) : Activities.getString(2131886468), (Integer) 17);
    }

    @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.IconsClickEvents
    /* renamed from: a */
    public final void mo31384a(Context context, CallAppPlusData callAppPlusData) {
        Activities.m27656b(context, ContactUtils.m28328a(ContactUtils.m28327a(callAppPlusData.getPhone()), true));
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        BaseAdapterItemData baseAdapterItemData = (BaseAdapterItemData) baseViewTypeData;
        int viewType = baseAdapterItemData.getViewType();
        if (viewType == 4) {
            ((ContactPlusViewHolder) baseCallAppViewHolder).m31392a((CallAppPlusData) baseAdapterItemData, this.f20645c, this, getContextMenuType(), getContextMenuAnalyticsTag());
        } else if (viewType != 10) {
        } else {
            ((HeaderViewHolder) baseCallAppViewHolder).m31473a(((HeaderSectionData) baseAdapterItemData).getHeaderName());
        }
    }

    @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.IconsClickEvents
    /* renamed from: a */
    public final void mo31383a(final CallAppPlusData callAppPlusData, final boolean z) {
        callAppPlusData.setStarred(z);
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$SearchCallAppPlusAdapter$jHKS_AtQkCyFMlpAjLmJssNk_74
            @Override // java.lang.Runnable
            public final void run() {
                SearchCallAppPlusAdapter.m31382b(CallAppPlusData.this, z);
            }
        });
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.CALLAPP_PLUS;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CALLAPP_PLUS_ITEM;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 10) {
            return new HeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559175, viewGroup, false), ThemeUtils.m27386a(viewGroup.getContext(), 2131099784));
        } else if (i != 4) {
            return null;
        } else {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f20368b = CallAppViewTypes.CALLAPP_PLUS_LAYOUT;
            return new ContactPlusViewHolder(builder.m31474a(), 2131363690, 2131363691);
        }
    }
}
