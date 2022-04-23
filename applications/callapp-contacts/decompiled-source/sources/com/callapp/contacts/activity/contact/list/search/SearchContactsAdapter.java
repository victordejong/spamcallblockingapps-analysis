package com.callapp.contacts.activity.contact.list.search;

import a.a.a.a.a.b;
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
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/search/SearchContactsAdapter.class */
public class SearchContactsAdapter extends BaseCallAppListAdapter<BaseViewTypeData, BaseCallAppViewHolder> implements b<SectionViewHolder> {

    /* renamed from: c  reason: collision with root package name */
    private Map<Integer, SectionData> f12767c;

    /* renamed from: d  reason: collision with root package name */
    private ScrollEvents f12768d;
    private ContactsClickEvents e;
    private ContactItemViewEvents f = getContactItemViewEventsListener();

    public SearchContactsAdapter(ScrollEvents scrollEvents, List<BaseViewTypeData> list, Map<Integer, SectionData> map, ContactsClickEvents contactsClickEvents) {
        super(list);
        this.f12767c = map;
        this.f12768d = scrollEvents;
        this.e = contactsClickEvents;
    }

    private ContactItemViewEvents getContactItemViewEventsListener() {
        return new ContactItemViewEvents() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsAdapter.1
            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
            public final void a() {
                EventBusManager.f14368a.a((EventType<L, EventType<CallEventListener, EventBusManager.CallAppDataType>>) CallEventListener.f12935b, (EventType<CallEventListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL, false);
            }

            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
            public final void b() {
                if (SearchContactsAdapter.this.e != null) {
                    SearchContactsAdapter.this.e.d(1);
                }
            }
        };
    }

    @Override // a.a.a.a.a.b
    public final /* synthetic */ SectionViewHolder a(ViewGroup viewGroup) {
        return new SectionViewHolder(LayoutInflater.from(CallAppApplication.get()).inflate(2131558766, viewGroup, false));
    }

    @Override // a.a.a.a.a.b
    public final /* synthetic */ void a(SectionViewHolder sectionViewHolder, int i) {
        SectionViewHolder sectionViewHolder2 = sectionViewHolder;
        BaseViewTypeData itemAt = getItemAt(i);
        int viewType = itemAt.getViewType();
        SectionData sectionData = viewType != 2 ? viewType != 3 ? viewType != 4 ? viewType != 11 ? this.f12767c.get(Integer.valueOf(((MemoryContactItem) itemAt).getSectionId())) : this.f12767c.get(Integer.valueOf(((MemoryContactItem) itemAt).getSectionId())) : this.f12767c.get(Integer.valueOf(((CallAppPlusData) itemAt).getSectionId())) : this.f12767c.get(Integer.valueOf(((PlaceItemData) itemAt).getSectionId())) : this.f12767c.get(Integer.valueOf(((AggregateCallLogData) itemAt).getSectionId()));
        if (sectionData != null) {
            sectionViewHolder2.setText(sectionData.getText());
            int textColor = sectionData.getTextColor();
            if (textColor != 0) {
                sectionViewHolder2.setTextColor(textColor);
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        int viewType = baseViewTypeData.getViewType();
        if (viewType == 0 || viewType == 11) {
            SearchContactViewHolder searchContactViewHolder = (SearchContactViewHolder) baseCallAppViewHolder;
            MemoryContactItem memoryContactItem = (MemoryContactItem) baseViewTypeData;
            searchContactViewHolder.a(memoryContactItem, this.f, this.f12768d, this.e);
            searchContactViewHolder.a(memoryContactItem, getContextMenuType(), getContextMenuAnalyticsTag());
        } else if (viewType == 2) {
            final CallLogViewHolder callLogViewHolder = (CallLogViewHolder) baseCallAppViewHolder;
            final AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) baseViewTypeData;
            callLogViewHolder.a(aggregateCallLogData, this.f12768d, this.f);
            CallAppRow view = callLogViewHolder.getView();
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.SearchContactsAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    AndroidUtils.a(view2, 1);
                    ListsUtils.a(view2.getContext(), aggregateCallLogData, "search", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), callLogViewHolder.getAdapterPosition(), 5), ENTRYPOINT.SEARCH);
                }
            };
            view.setOnContainerClickListener(onClickListener);
            callLogViewHolder.getProfilePicture().setOnClickListener(onClickListener);
            callLogViewHolder.a(aggregateCallLogData, getContextMenuType(), getContextMenuAnalyticsTag(), this.f);
        } else if (viewType == 3) {
            final PlacesViewHolder placesViewHolder = (PlacesViewHolder) baseCallAppViewHolder;
            final PlaceItemData placeItemData = (PlaceItemData) baseViewTypeData;
            final ContactItemViewEvents contactItemViewEvents = this.f;
            final ContactsClickEvents contactsClickEvents = this.e;
            placesViewHolder.a((DataSource) null, (String) null);
            placesViewHolder.setProfileText(StringUtils.j(StringUtils.r(placeItemData.displayName)));
            final String placeImageUri = placeItemData.getPlaceImageUri();
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.search.PlacesViewHolder.6
                @Override // java.lang.Runnable
                public void run() {
                    if (StringUtils.b(placeImageUri, placeItemData.getPlaceImageUri())) {
                        placesViewHolder.a(placeItemData.getDataSource(), placeImageUri);
                    } else {
                        CLog.a(PlaceData.class, "Fast scrolling, showing none");
                    }
                }
            });
            if (!placesViewHolder.u.isSwipeable()) {
                placesViewHolder.x.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.PlacesViewHolder.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        AndroidUtils.a(view2, 1);
                        Context context = placesViewHolder.G.getContext();
                        Phone phone = placeItemData.getPhone();
                        PlaceItemData placeItemData2 = placeItemData;
                        ListsUtils.a(context, phone, placeItemData2, ContactUtils.a(placeItemData2.getPhone(), placeItemData.getContactId()), contactItemViewEvents);
                    }
                });
                placesViewHolder.x.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.PlacesViewHolder.2
                    @Override // android.view.View.OnLongClickListener
                    public boolean onLongClick(View view2) {
                        AndroidUtils.a(view2, 1);
                        ListsUtils.a(placesViewHolder.G.getContext(), placeItemData.getPhone(), (BaseAdapterItemData) placeItemData, true, contactItemViewEvents);
                        return true;
                    }
                });
            }
            placesViewHolder.u.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.PlacesViewHolder.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    PlacesViewHolder.a(view2, placeItemData, contactsClickEvents);
                }
            });
            placesViewHolder.v.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.search.PlacesViewHolder.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    PlacesViewHolder.a(view2, placeItemData, contactsClickEvents);
                }
            });
            placesViewHolder.setPlaceName(StringUtils.j(placeItemData.displayName));
            placesViewHolder.setRating(placeItemData.getPlaceRatingNumber());
            placesViewHolder.setPlaceType(placeItemData.getPlaceType());
            placesViewHolder.setPlaceAddress(placeItemData.getPlaceAddress());
            String placeHours = placeItemData.getPlaceHours();
            boolean isOpen = placeItemData.isOpen();
            if (!StringUtils.b((CharSequence) placeHours)) {
                placesViewHolder.w.setText(Activities.getString(2131887871));
                placesViewHolder.w.setTextColor(placesViewHolder.A);
            } else if (isOpen) {
                placesViewHolder.w.setText(Activities.getString(2131887360));
                placesViewHolder.w.setTextColor(placesViewHolder.z);
            } else {
                placesViewHolder.w.setText(Activities.getString(2131887358));
                placesViewHolder.w.setTextColor(placesViewHolder.y);
            }
        } else if (viewType == 4) {
            ContactPlusListViewHolder contactPlusListViewHolder = (ContactPlusListViewHolder) baseCallAppViewHolder;
            contactPlusListViewHolder.a((CallAppPlusData) baseViewTypeData, this.f, this.f12768d);
            contactPlusListViewHolder.a((MemoryContactItem) baseViewTypeData, getContextMenuType(), getContextMenuAnalyticsTag(), this.f);
        } else if (viewType == 6) {
            ((AddToContactsViewHolder) baseCallAppViewHolder).a((AddEntryItemData) baseViewTypeData);
        } else if (viewType == 7) {
            ((SearchForViewHolder) baseCallAppViewHolder).a((SearchForItemData) baseViewTypeData);
        }
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.SEARCH;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CONTACT_ITEM;
    }

    @Override // a.a.a.a.a.b
    public long getHeaderId(int i) {
        return ((StickyHeaderSection) getItemAt(i)).getSectionId();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f11158b = CallAppViewTypes.CENTER_CONTACT_SEARCH_LIST;
            builder.f11157a = CallAppViewTypes.LEFT_PROFILE;
            builder.f11159c = CallAppViewTypes.RIGHT_CALL_BUTTON;
            return new SearchContactViewHolder(builder.a());
        } else if (i == 11) {
            CallAppRow.Builder builder2 = new CallAppRow.Builder(viewGroup.getContext());
            builder2.f11158b = CallAppViewTypes.CENTER_CONTACT_SEARCH_LIST;
            builder2.f11157a = CallAppViewTypes.LEFT_PROFILE;
            builder2.f11159c = CallAppViewTypes.RIGHT_CALL_BUTTON;
            return new SearchContactViewHolder(builder2.a());
        } else if (i == 2) {
            CallAppRow.Builder builder3 = new CallAppRow.Builder(viewGroup.getContext());
            builder3.f11158b = CallAppViewTypes.CENTER_CALL_LOG;
            builder3.f11157a = CallAppViewTypes.LEFT_PROFILE;
            builder3.f11159c = CallAppViewTypes.RIGHT_CALL_BUTTON;
            return new CommonCallViewHolder(builder3.a());
        } else if (i == 3) {
            CallAppRow.Builder builder4 = new CallAppRow.Builder(viewGroup.getContext());
            builder4.f11158b = CallAppViewTypes.CENTER_PLACES_LIST;
            builder4.f11157a = CallAppViewTypes.LEFT_PROFILE;
            return new PlacesViewHolder(builder4.a());
        } else if (i == 4) {
            CallAppRow.Builder builder5 = new CallAppRow.Builder(viewGroup.getContext());
            builder5.f11158b = CallAppViewTypes.CENTER_CONTACT_PLUS;
            builder5.f11157a = CallAppViewTypes.LEFT_PROFILE;
            builder5.f11159c = CallAppViewTypes.RIGHT_CALL_BUTTON;
            return new ContactPlusListViewHolder(builder5.a(), 2131362208, 2131362211);
        } else if (i == 6) {
            return new AddToContactsViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558756, viewGroup, false));
        } else {
            if (i != 7) {
                return null;
            }
            return new SearchForViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558756, viewGroup, false));
        }
    }
}
