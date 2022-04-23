package com.callapp.contacts.activity.calllog;

import a.a.a.a.a.b;
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
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/CallLogAdapter.class */
public class CallLogAdapter extends BaseCallAppListAdapter<AggregateCallLogData, BaseCallAppViewHolder> implements b<SectionViewHolder>, MissedCallCardsHeaderListHolder.MissedCallCardVisibilityInterface {

    /* renamed from: c  reason: collision with root package name */
    MissedCallCardsHeaderListHolder f11363c;

    /* renamed from: d  reason: collision with root package name */
    private final OnSelectChangeListener f11364d;
    private final ContactItemViewEvents e;
    private boolean f;
    private Map<Integer, SectionData> g;
    private ScrollEvents h;
    private CallLogStickyHolder i;
    private StickyBannerEvents j;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents.class */
    public interface StickyBannerEvents {
        void a();
    }

    public CallLogAdapter(List<AggregateCallLogData> list, Map<Integer, SectionData> map, ScrollEvents scrollEvents, boolean z, StoreItemAssetManager storeItemAssetManager, OnSelectChangeListener onSelectChangeListener, ContactItemViewEvents contactItemViewEvents, StickyBannerEvents stickyBannerEvents) {
        super(list, storeItemAssetManager);
        this.g = map;
        this.h = scrollEvents;
        this.f = z;
        this.f11364d = onSelectChangeListener;
        this.e = contactItemViewEvents;
        this.j = stickyBannerEvents;
    }

    static /* synthetic */ void a(CallLogAdapter callLogAdapter, View view, CallLogViewHolder callLogViewHolder, AggregateCallLogData aggregateCallLogData) {
        if (callLogAdapter.f) {
            boolean z = !aggregateCallLogData.isChecked();
            callLogViewHolder.getProfilePicture().b(z, true);
            aggregateCallLogData.setChecked(z);
            callLogAdapter.f11364d.b();
            return;
        }
        AndroidUtils.a(view, 1);
        ListsUtils.a(view.getContext(), aggregateCallLogData, "call log", DataChangedInfo.create(EventBusManager.CallAppDataType.RECENT_CALLS.ordinal(), DataChangedInfo.POSITION_ALL, 1), ENTRYPOINT.CALL_LOG_CONTACT_LIST);
        Prefs.da.set(new Date());
        EventBusManager.f14368a.c(CallLogLastSeenTimestampEventListener.f12937c, EventBusManager.CallAppDataType.LAST_SEEN_CALL_LOG_TIMESTAMP);
    }

    @Override // a.a.a.a.a.b
    public final /* synthetic */ SectionViewHolder a(ViewGroup viewGroup) {
        return new SectionViewHolder(LayoutInflater.from(CallAppApplication.get()).inflate(2131558766, viewGroup, false));
    }

    @Override // a.a.a.a.a.b
    public final /* synthetic */ void a(SectionViewHolder sectionViewHolder, int i) {
        SectionViewHolder sectionViewHolder2 = sectionViewHolder;
        AggregateCallLogData itemAt = getItemAt(i);
        if (this.g.containsKey(Integer.valueOf(itemAt.getSectionId()))) {
            sectionViewHolder2.setText(this.g.get(Integer.valueOf(itemAt.getSectionId())).getText());
            if (this.f11076b != null && this.f11076b.f14980b.c()) {
                sectionViewHolder2.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099686));
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        final AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) baseViewTypeData;
        if (aggregateCallLogData != null) {
            int viewType = aggregateCallLogData.getViewType();
            if (viewType == 2) {
                final CallLogViewHolder callLogViewHolder = (CallLogViewHolder) baseCallAppViewHolder;
                callLogViewHolder.a(aggregateCallLogData, this.h, this.e);
                final CallAppRow view = callLogViewHolder.getView();
                view.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.CallLogAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        CallLogAdapter.a(CallLogAdapter.this, view2, callLogViewHolder, aggregateCallLogData);
                    }
                });
                callLogViewHolder.getProfilePicture().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.CallLogAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        view.b();
                        CallLogAdapter.a(CallLogAdapter.this, view2, callLogViewHolder, aggregateCallLogData);
                    }
                });
                callLogViewHolder.a(aggregateCallLogData, getContextMenuType(), getContextMenuAnalyticsTag(), this.e);
            } else if (viewType == 5) {
                ((MissedCallCardsHeaderListHolder) baseCallAppViewHolder).a(this.e);
            } else if (viewType == 21) {
                ((CallLogStickyHolder) baseCallAppViewHolder).a(this.j);
            }
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.card.MissedCallCardsHeaderListHolder.MissedCallCardVisibilityInterface
    public final void d() {
        CallLogStickyHolder callLogStickyHolder = this.i;
        if (callLogStickyHolder != null) {
            callLogStickyHolder.a(this.j);
        }
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.CONTACT_LIST;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CALL_LOG_ITEM;
    }

    @Override // a.a.a.a.a.b
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

    @Override // com.callapp.contacts.activity.base.BaseCallAppListAdapter, androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return super.getItemCount() + 2;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.a
    public int getItemViewType(int i) {
        if (i == 0) {
            return 21;
        }
        if (i == 1) {
            return 5;
        }
        return super.getItemViewType(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 2) {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f11158b = CallAppViewTypes.CENTER_CALL_LOG;
            builder.f11157a = CallAppViewTypes.LEFT_PROFILE;
            builder.f11159c = CallAppViewTypes.RIGHT_CALL_BUTTON;
            return new CallLogViewHolder(builder.a());
        } else if (i == 5) {
            MissedCallCardsHeaderListHolder missedCallCardsHeaderListHolder = new MissedCallCardsHeaderListHolder(LayoutInflater.from(viewGroup.getContext()), LayoutInflater.from(viewGroup.getContext()).inflate(2131558897, (ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(2131558567, viewGroup, false)), this);
            this.f11363c = missedCallCardsHeaderListHolder;
            return missedCallCardsHeaderListHolder;
        } else if (i != 21) {
            return null;
        } else {
            CallLogStickyHolder callLogStickyHolder = new CallLogStickyHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559035, (ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(2131558567, viewGroup, false)));
            this.i = callLogStickyHolder;
            return callLogStickyHolder;
        }
    }

    public void setMultiSelectMode(boolean z) {
        this.f = z;
    }
}
