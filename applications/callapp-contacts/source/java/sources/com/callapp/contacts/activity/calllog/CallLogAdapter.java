package com.callapp.contacts.activity.calllog;

import android.view.LayoutInflater;
import android.view.View;
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
import com.callapp.contacts.activity.calllog.stickyBanner.CallLogStickyHolder;
import com.callapp.contacts.activity.interfaces.CallLogLastSeenTimestampEventListener;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.interfaces.OnSelectChangeListener;
import com.callapp.contacts.activity.missedcall.card.MissedCallCardsHeaderListHolder;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import java.util.Date;
import java.util.List;
import java.util.Map;
import p001a.p002a.p003a.p004a.p005a.AbstractC0003b;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/CallLogAdapter.class */
public class CallLogAdapter extends BaseCallAppListAdapter<AggregateCallLogData, BaseCallAppViewHolder> implements AbstractC0003b<SectionViewHolder>, MissedCallCardsHeaderListHolder.MissedCallCardVisibilityInterface {

    /* renamed from: c */
    MissedCallCardsHeaderListHolder f20680c;

    /* renamed from: d */
    private final OnSelectChangeListener f20681d;

    /* renamed from: e */
    private final ContactItemViewEvents f20682e;

    /* renamed from: f */
    private boolean f20683f;

    /* renamed from: g */
    private Map<Integer, SectionData> f20684g;

    /* renamed from: h */
    private ScrollEvents f20685h;

    /* renamed from: i */
    private CallLogStickyHolder f20686i;

    /* renamed from: j */
    private StickyBannerEvents f20687j;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents.class */
    public interface StickyBannerEvents {
        /* renamed from: a */
        void mo31350a();
    }

    public CallLogAdapter(List<AggregateCallLogData> list, Map<Integer, SectionData> map, ScrollEvents scrollEvents, boolean z, StoreItemAssetManager storeItemAssetManager, OnSelectChangeListener onSelectChangeListener, ContactItemViewEvents contactItemViewEvents, StickyBannerEvents stickyBannerEvents) {
        super(list, storeItemAssetManager);
        this.f20684g = map;
        this.f20685h = scrollEvents;
        this.f20683f = z;
        this.f20681d = onSelectChangeListener;
        this.f20682e = contactItemViewEvents;
        this.f20687j = stickyBannerEvents;
    }

    /* renamed from: a */
    static /* synthetic */ void m31368a(CallLogAdapter callLogAdapter, View view, CallLogViewHolder callLogViewHolder, AggregateCallLogData aggregateCallLogData) {
        if (callLogAdapter.f20683f) {
            boolean z = !aggregateCallLogData.isChecked();
            callLogViewHolder.getProfilePicture().m26679b(z, true);
            aggregateCallLogData.setChecked(z);
            callLogAdapter.f20681d.mo30201b();
            return;
        }
        AndroidUtils.m27630a(view, 1);
        ListsUtils.m27485a(view.getContext(), aggregateCallLogData, "call log", DataChangedInfo.create(EventBusManager.CallAppDataType.RECENT_CALLS.ordinal(), DataChangedInfo.POSITION_ALL, 1), ENTRYPOINT.CALL_LOG_CONTACT_LIST);
        Prefs.f26409da.set(new Date());
        EventBusManager.f25138a.m29043c(CallLogLastSeenTimestampEventListener.f23110c, EventBusManager.CallAppDataType.LAST_SEEN_CALL_LOG_TIMESTAMP);
    }

    @Override // p001a.p002a.p003a.p004a.p005a.AbstractC0003b
    /* renamed from: a */
    public final /* synthetic */ SectionViewHolder mo30417a(ViewGroup viewGroup) {
        return new SectionViewHolder(LayoutInflater.from(CallAppApplication.get()).inflate(2131558766, viewGroup, false));
    }

    @Override // p001a.p002a.p003a.p004a.p005a.AbstractC0003b
    /* renamed from: a */
    public final /* synthetic */ void mo30416a(SectionViewHolder sectionViewHolder, int i) {
        SectionViewHolder sectionViewHolder2 = sectionViewHolder;
        AggregateCallLogData itemAt = getItemAt(i);
        if (this.f20684g.containsKey(Integer.valueOf(itemAt.getSectionId()))) {
            sectionViewHolder2.setText(this.f20684g.get(Integer.valueOf(itemAt.getSectionId())).getText());
            if (this.f20246b == null || !this.f20246b.f25904b.m28397c()) {
                return;
            }
            sectionViewHolder2.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099686));
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        final AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) baseViewTypeData;
        if (aggregateCallLogData != null) {
            int viewType = aggregateCallLogData.getViewType();
            if (viewType != 2) {
                if (viewType == 5) {
                    ((MissedCallCardsHeaderListHolder) baseCallAppViewHolder).m29796a(this.f20682e);
                    return;
                } else if (viewType != 21) {
                    return;
                } else {
                    ((CallLogStickyHolder) baseCallAppViewHolder).m31296a(this.f20687j);
                    return;
                }
            }
            final CallLogViewHolder callLogViewHolder = (CallLogViewHolder) baseCallAppViewHolder;
            callLogViewHolder.m31345a(aggregateCallLogData, this.f20685h, this.f20682e);
            final CallAppRow view = callLogViewHolder.getView();
            view.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.CallLogAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    CallLogAdapter.m31368a(CallLogAdapter.this, view2, callLogViewHolder, aggregateCallLogData);
                }
            });
            callLogViewHolder.getProfilePicture().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.CallLogAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    view.m31479b();
                    CallLogAdapter.m31368a(CallLogAdapter.this, view2, callLogViewHolder, aggregateCallLogData);
                }
            });
            callLogViewHolder.m31349a(aggregateCallLogData, getContextMenuType(), getContextMenuAnalyticsTag(), this.f20682e);
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.card.MissedCallCardsHeaderListHolder.MissedCallCardVisibilityInterface
    /* renamed from: d */
    public final void mo29786d() {
        CallLogStickyHolder callLogStickyHolder = this.f20686i;
        if (callLogStickyHolder != null) {
            callLogStickyHolder.m31296a(this.f20687j);
        }
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.CONTACT_LIST;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CALL_LOG_ITEM;
    }

    @Override // p001a.p002a.p003a.p004a.p005a.AbstractC0003b
    public long getHeaderId(int i) {
        return getItemAt(i).getSectionId();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppListAdapter, com.callapp.contacts.activity.base.BaseCallAppAdapter
    public AggregateCallLogData getItemAt(int i) {
        if (i == 0) {
            AggregateCallLogData aggregateCallLogData = new AggregateCallLogData(0, new Date(), "", null, 0, 0, "", null, 0, 0L) { // from class: com.callapp.contacts.activity.calllog.CallLogAdapter.3
                @Override // com.callapp.contacts.activity.base.BaseCallLogData, com.callapp.contacts.activity.base.BaseViewTypeData
                public int getViewType() {
                    return 21;
                }
            };
            aggregateCallLogData.setSectionId(-1);
            return aggregateCallLogData;
        } else if (i != 1) {
            return (AggregateCallLogData) super.getItemAt(i - 2);
        } else {
            AggregateCallLogData aggregateCallLogData2 = new AggregateCallLogData(0, new Date(), "", null, 0, 0, "", null, 0, 0L) { // from class: com.callapp.contacts.activity.calllog.CallLogAdapter.4
                @Override // com.callapp.contacts.activity.base.BaseCallLogData, com.callapp.contacts.activity.base.BaseViewTypeData
                public int getViewType() {
                    return 5;
                }
            };
            aggregateCallLogData2.setSectionId(-1);
            return aggregateCallLogData2;
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppListAdapter, androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return super.getItemCount() + 2;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemViewType(int i) {
        if (i == 0) {
            return 21;
        }
        if (i != 1) {
            return super.getItemViewType(i);
        }
        return 5;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 2) {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f20368b = CallAppViewTypes.CENTER_CALL_LOG;
            builder.f20367a = CallAppViewTypes.LEFT_PROFILE;
            builder.f20369c = CallAppViewTypes.RIGHT_CALL_BUTTON;
            return new CallLogViewHolder(builder.m31474a());
        } else if (i == 5) {
            MissedCallCardsHeaderListHolder missedCallCardsHeaderListHolder = new MissedCallCardsHeaderListHolder(LayoutInflater.from(viewGroup.getContext()), LayoutInflater.from(viewGroup.getContext()).inflate(2131558897, (ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(2131558567, viewGroup, false)), this);
            this.f20680c = missedCallCardsHeaderListHolder;
            return missedCallCardsHeaderListHolder;
        } else if (i != 21) {
            return null;
        } else {
            CallLogStickyHolder callLogStickyHolder = new CallLogStickyHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559035, (ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(2131558567, viewGroup, false)));
            this.f20686i = callLogStickyHolder;
            return callLogStickyHolder;
        }
    }

    public void setMultiSelectMode(boolean z) {
        this.f20683f = z;
    }
}
