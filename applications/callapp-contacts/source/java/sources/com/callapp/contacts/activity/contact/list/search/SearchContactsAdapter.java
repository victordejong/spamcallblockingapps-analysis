package com.callapp.contacts.activity.contact.list.search;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
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
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.base.SectionViewHolder;
import com.callapp.contacts.activity.callappplus.CallAppPlusData;
import com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder;
import com.callapp.contacts.activity.calllog.AggregateCallLogData;
import com.callapp.contacts.activity.calllog.CallLogViewHolder;
import com.callapp.contacts.activity.contact.list.AddToContactsViewHolder;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.interfaces.CallEventListener;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.interfaces.StickyHeaderSection;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.PlaceData;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.List;
import java.util.Map;
import p001a.p002a.p003a.p004a.p005a.AbstractC0003b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsAdapter.class */
public class SearchContactsAdapter extends BaseCallAppListAdapter<BaseViewTypeData, BaseCallAppViewHolder> implements AbstractC0003b<SectionViewHolder> {

    /* renamed from: c */
    private Map<Integer, SectionData> f22810c;

    /* renamed from: d */
    private ScrollEvents f22811d;

    /* renamed from: e */
    private ContactsClickEvents f22812e;

    /* renamed from: f */
    private ContactItemViewEvents f22813f = getContactItemViewEventsListener();

    public SearchContactsAdapter(ScrollEvents scrollEvents, List<BaseViewTypeData> list, Map<Integer, SectionData> map, ContactsClickEvents contactsClickEvents) {
        super(list);
        this.f22810c = map;
        this.f22811d = scrollEvents;
        this.f22812e = contactsClickEvents;
    }

    private ContactItemViewEvents getContactItemViewEventsListener() {
        return new ContactItemViewEvents() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsAdapter.1
            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
            /* renamed from: a */
            public final void mo29814a() {
                EventBusManager.f25138a.m29046a((EventType<L, EventType<CallEventListener, EventBusManager.CallAppDataType>>) CallEventListener.f23108b, (EventType<CallEventListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL, false);
            }

            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
            /* renamed from: b */
            public final void mo29813b() {
                if (SearchContactsAdapter.this.f22812e != null) {
                    SearchContactsAdapter.this.f22812e.mo30422d(1);
                }
            }
        };
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
        BaseViewTypeData itemAt = getItemAt(i);
        int viewType = itemAt.getViewType();
        SectionData sectionData = viewType != 2 ? viewType != 3 ? viewType != 4 ? viewType != 11 ? this.f22810c.get(Integer.valueOf(((MemoryContactItem) itemAt).getSectionId())) : this.f22810c.get(Integer.valueOf(((MemoryContactItem) itemAt).getSectionId())) : this.f22810c.get(Integer.valueOf(((CallAppPlusData) itemAt).getSectionId())) : this.f22810c.get(Integer.valueOf(((PlaceItemData) itemAt).getSectionId())) : this.f22810c.get(Integer.valueOf(((AggregateCallLogData) itemAt).getSectionId()));
        if (sectionData != null) {
            sectionViewHolder2.setText(sectionData.getText());
            int textColor = sectionData.getTextColor();
            if (textColor == 0) {
                return;
            }
            sectionViewHolder2.setTextColor(textColor);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        int viewType = baseViewTypeData.getViewType();
        if (viewType == 0 || viewType == 11) {
            SearchContactViewHolder searchContactViewHolder = (SearchContactViewHolder) baseCallAppViewHolder;
            MemoryContactItem memoryContactItem = (MemoryContactItem) baseViewTypeData;
            searchContactViewHolder.mo30418a(memoryContactItem, this.f22813f, this.f22811d, this.f22812e);
            searchContactViewHolder.m30682a(memoryContactItem, getContextMenuType(), getContextMenuAnalyticsTag());
        } else if (viewType == 2) {
            final CallLogViewHolder callLogViewHolder = (CallLogViewHolder) baseCallAppViewHolder;
            final AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) baseViewTypeData;
            callLogViewHolder.m31345a(aggregateCallLogData, this.f22811d, this.f22813f);
            CallAppRow view = callLogViewHolder.getView();
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.m27630a(view2, 1);
                    ListsUtils.m27485a(view2.getContext(), aggregateCallLogData, "search", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), callLogViewHolder.getAdapterPosition(), 5), ENTRYPOINT.SEARCH);
                }
            };
            view.setOnContainerClickListener(onClickListener);
            callLogViewHolder.getProfilePicture().setOnClickListener(onClickListener);
            callLogViewHolder.m31349a(aggregateCallLogData, getContextMenuType(), getContextMenuAnalyticsTag(), this.f22813f);
        } else if (viewType != 3) {
            if (viewType == 4) {
                ContactPlusListViewHolder contactPlusListViewHolder = (ContactPlusListViewHolder) baseCallAppViewHolder;
                contactPlusListViewHolder.m31397a((CallAppPlusData) baseViewTypeData, this.f22813f, this.f22811d);
                contactPlusListViewHolder.m31400a((MemoryContactItem) baseViewTypeData, getContextMenuType(), getContextMenuAnalyticsTag(), this.f22813f);
            } else if (viewType == 6) {
                ((AddToContactsViewHolder) baseCallAppViewHolder).m30698a((AddEntryItemData) baseViewTypeData);
            } else if (viewType != 7) {
            } else {
                ((SearchForViewHolder) baseCallAppViewHolder).m30365a((SearchForItemData) baseViewTypeData);
            }
        } else {
            final PlacesViewHolder placesViewHolder = (PlacesViewHolder) baseCallAppViewHolder;
            final PlaceItemData placeItemData = (PlaceItemData) baseViewTypeData;
            final ContactItemViewEvents contactItemViewEvents = this.f22813f;
            final ContactsClickEvents contactsClickEvents = this.f22812e;
            placesViewHolder.m30419a((DataSource) null, (String) null);
            placesViewHolder.setProfileText(StringUtils.m26020j(StringUtils.m26010r(placeItemData.displayName)));
            final String placeImageUri = placeItemData.getPlaceImageUri();
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search.PlacesViewHolder.6
                @Override // java.lang.Runnable
                public void run() {
                    if (StringUtils.m26042b(placeImageUri, placeItemData.getPlaceImageUri())) {
                        placesViewHolder.m30419a(placeItemData.getDataSource(), placeImageUri);
                    } else {
                        CLog.m27611a(PlaceData.class, "Fast scrolling, showing none");
                    }
                }
            });
            if (!placesViewHolder.f22787u.isSwipeable()) {
                placesViewHolder.f22790x.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.PlacesViewHolder.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        AndroidUtils.m27630a(view2, 1);
                        Context context = placesViewHolder.f22785G.getContext();
                        Phone phone = placeItemData.getPhone();
                        PlaceItemData placeItemData2 = placeItemData;
                        ListsUtils.m27481a(context, phone, placeItemData2, ContactUtils.m28326a(placeItemData2.getPhone(), placeItemData.getContactId()), contactItemViewEvents);
                    }
                });
                placesViewHolder.f22790x.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.PlacesViewHolder.2
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view2) {
                        AndroidUtils.m27630a(view2, 1);
                        ListsUtils.m27481a(placesViewHolder.f22785G.getContext(), placeItemData.getPhone(), (BaseAdapterItemData) placeItemData, true, contactItemViewEvents);
                        return true;
                    }
                });
            }
            placesViewHolder.f22787u.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.PlacesViewHolder.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    PlacesViewHolder.m30421a(view2, placeItemData, contactsClickEvents);
                }
            });
            placesViewHolder.f22788v.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.PlacesViewHolder.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    PlacesViewHolder.m30421a(view2, placeItemData, contactsClickEvents);
                }
            });
            placesViewHolder.setPlaceName(StringUtils.m26020j(placeItemData.displayName));
            placesViewHolder.setRating(placeItemData.getPlaceRatingNumber());
            placesViewHolder.setPlaceType(placeItemData.getPlaceType());
            placesViewHolder.setPlaceAddress(placeItemData.getPlaceAddress());
            String placeHours = placeItemData.getPlaceHours();
            boolean isOpen = placeItemData.isOpen();
            if (!StringUtils.m26045b((CharSequence) placeHours)) {
                placesViewHolder.f22789w.setText(Activities.getString(2131887871));
                placesViewHolder.f22789w.setTextColor(placesViewHolder.f22779A);
            } else if (isOpen) {
                placesViewHolder.f22789w.setText(Activities.getString(2131887360));
                placesViewHolder.f22789w.setTextColor(placesViewHolder.f22792z);
            } else {
                placesViewHolder.f22789w.setText(Activities.getString(2131887358));
                placesViewHolder.f22789w.setTextColor(placesViewHolder.f22791y);
            }
        }
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.SEARCH;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CONTACT_ITEM;
    }

    @Override // p001a.p002a.p003a.p004a.p005a.AbstractC0003b
    public long getHeaderId(int i) {
        return ((StickyHeaderSection) getItemAt(i)).getSectionId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f20368b = CallAppViewTypes.CENTER_CONTACT_SEARCH_LIST;
            builder.f20367a = CallAppViewTypes.LEFT_PROFILE;
            builder.f20369c = CallAppViewTypes.RIGHT_CALL_BUTTON;
            return new SearchContactViewHolder(builder.m31474a());
        } else if (i == 11) {
            CallAppRow.Builder builder2 = new CallAppRow.Builder(viewGroup.getContext());
            builder2.f20368b = CallAppViewTypes.CENTER_CONTACT_SEARCH_LIST;
            builder2.f20367a = CallAppViewTypes.LEFT_PROFILE;
            builder2.f20369c = CallAppViewTypes.RIGHT_CALL_BUTTON;
            return new SearchContactViewHolder(builder2.m31474a());
        } else if (i == 2) {
            CallAppRow.Builder builder3 = new CallAppRow.Builder(viewGroup.getContext());
            builder3.f20368b = CallAppViewTypes.CENTER_CALL_LOG;
            builder3.f20367a = CallAppViewTypes.LEFT_PROFILE;
            builder3.f20369c = CallAppViewTypes.RIGHT_CALL_BUTTON;
            return new CommonCallViewHolder(builder3.m31474a());
        } else if (i == 3) {
            CallAppRow.Builder builder4 = new CallAppRow.Builder(viewGroup.getContext());
            builder4.f20368b = CallAppViewTypes.CENTER_PLACES_LIST;
            builder4.f20367a = CallAppViewTypes.LEFT_PROFILE;
            return new PlacesViewHolder(builder4.m31474a());
        } else if (i != 4) {
            if (i == 6) {
                return new AddToContactsViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558756, viewGroup, false));
            }
            if (i == 7) {
                return new SearchForViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558756, viewGroup, false));
            }
            return null;
        } else {
            CallAppRow.Builder builder5 = new CallAppRow.Builder(viewGroup.getContext());
            builder5.f20368b = CallAppViewTypes.CENTER_CONTACT_PLUS;
            builder5.f20367a = CallAppViewTypes.LEFT_PROFILE;
            builder5.f20369c = CallAppViewTypes.RIGHT_CALL_BUTTON;
            return new ContactPlusListViewHolder(builder5.m31474a(), 2131362208, 2131362211);
        }
    }
}
