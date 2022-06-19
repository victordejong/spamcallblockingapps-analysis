package com.callapp.contacts.activity.contact.list;

import android.util.LongSparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppCursorAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.base.DummyViewHolder;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.contact.list.contactListHeader.FavoritesHeaderContactListHolder;
import com.callapp.contacts.activity.contact.list.search.AddEntryItemData;
import com.callapp.contacts.activity.contact.list.search.SearchForItemData;
import com.callapp.contacts.activity.contact.list.search.SearchForViewHolder;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.interfaces.DataFragmentsEvents;
import com.callapp.contacts.activity.interfaces.OnSelectChangeListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.cursor.ContactsAggregatorCursor;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ListsUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactListAdapter.class */
public class ContactListAdapter extends BaseCallAppCursorAdapter<BaseViewTypeData, BaseCallAppViewHolder> {

    /* renamed from: d */
    FavoritesHeaderContactListHolder f22424d;

    /* renamed from: e */
    private ContactItemViewEvents f22425e;

    /* renamed from: f */
    private ScrollEvents f22426f;

    /* renamed from: g */
    private boolean f22427g;

    /* renamed from: h */
    private OnSelectChangeListener f22428h;

    /* renamed from: j */
    private final DataFragmentsEvents f22430j;

    /* renamed from: i */
    private LongSparseArray<Boolean> f22429i = new LongSparseArray<>();

    /* renamed from: c */
    ArrayList<BaseAdapterItemData> f22423c = new ArrayList<>();

    public ContactListAdapter(ScrollEvents scrollEvents, ContactsAggregatorCursor contactsAggregatorCursor, StoreItemAssetManager storeItemAssetManager, ContactItemViewEvents contactItemViewEvents, boolean z, OnSelectChangeListener onSelectChangeListener, DataFragmentsEvents dataFragmentsEvents) {
        super(contactsAggregatorCursor, storeItemAssetManager);
        this.f22426f = scrollEvents;
        this.f22425e = contactItemViewEvents;
        this.f22427g = z;
        this.f22428h = onSelectChangeListener;
        this.f22430j = dataFragmentsEvents;
    }

    /* renamed from: a */
    static /* synthetic */ void m30685a(ContactListAdapter contactListAdapter, View view, ContactViewHolder contactViewHolder, MemoryContactItem memoryContactItem) {
        if (!contactListAdapter.f22427g) {
            AndroidUtils.m27630a(view, 1);
            ListsUtils.m27485a(view.getContext(), memoryContactItem, "contact list", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), contactViewHolder.getAdapterPosition(), 2), ENTRYPOINT.CALL_LOG_CONTACT_LIST);
            return;
        }
        boolean z = !memoryContactItem.isChecked();
        contactViewHolder.getProfilePicture().m26679b(z, true);
        memoryContactItem.setChecked(z);
        if (z) {
            contactListAdapter.f22423c.add(memoryContactItem);
        } else {
            contactListAdapter.f22423c.remove(memoryContactItem);
        }
        contactListAdapter.f22428h.mo30201b();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppCursorAdapter
    /* renamed from: a */
    public final /* synthetic */ BaseViewTypeData mo30688a(int i) {
        Boolean bool;
        MemoryContactItem dataAtPosition = ((ContactsAggregatorCursor) this.f20245a).getDataAtPosition(i);
        if (dataAtPosition != null && (bool = this.f22429i.get(dataAtPosition.contactId)) != null) {
            dataAtPosition.setLoaded(bool.booleanValue());
        }
        return dataAtPosition;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final void mo30687a(BaseAdapterItemData baseAdapterItemData) {
        if (baseAdapterItemData.getViewType() == 0) {
            m31514a(baseAdapterItemData, false);
            this.f22429i.remove(baseAdapterItemData.contactId);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        if (baseViewTypeData == null) {
            return;
        }
        int viewType = baseViewTypeData.getViewType();
        if (viewType != 0) {
            if (viewType == 5) {
                ((FavoritesHeaderContactListHolder) baseCallAppViewHolder).m30511l();
                return;
            } else if (viewType == 6) {
                ((AddToContactsViewHolder) baseCallAppViewHolder).m30698a((AddEntryItemData) baseViewTypeData);
                return;
            } else if (viewType != 7) {
                return;
            } else {
                ((SearchForViewHolder) baseCallAppViewHolder).m30365a((SearchForItemData) baseViewTypeData);
                return;
            }
        }
        final MemoryContactItem memoryContactItem = (MemoryContactItem) baseViewTypeData;
        memoryContactItem.setChecked(this.f22423c.contains(memoryContactItem));
        final ContactViewHolder contactViewHolder = (ContactViewHolder) baseCallAppViewHolder;
        contactViewHolder.mo30418a(memoryContactItem, this.f22425e, this.f22426f, null);
        contactViewHolder.m30682a(memoryContactItem, getContextMenuType(), getContextMenuAnalyticsTag());
        contactViewHolder.setOnDataLoadListener(new BaseContactHolder.OnDataLoadListener() { // from class: com.callapp.contacts.activity.contact.list.ContactListAdapter.2
            @Override // com.callapp.contacts.activity.base.BaseContactHolder.OnDataLoadListener
            /* renamed from: a */
            public final void mo30683a(BaseAdapterItemData baseAdapterItemData) {
                if (baseAdapterItemData != null) {
                    ContactListAdapter.this.f22429i.put(baseAdapterItemData.contactId, Boolean.TRUE);
                }
            }
        });
        final CallAppRow view = contactViewHolder.getView();
        view.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactListAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ContactListAdapter.m30685a(ContactListAdapter.this, view2, contactViewHolder, memoryContactItem);
            }
        });
        contactViewHolder.getProfilePicture().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactListAdapter.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                view.m31479b();
                ContactListAdapter.m30685a(ContactListAdapter.this, view2, contactViewHolder, memoryContactItem);
            }
        });
    }

    /* renamed from: d */
    public final void m30684d() {
        FavoritesHeaderContactListHolder favoritesHeaderContactListHolder = this.f22424d;
        if (favoritesHeaderContactListHolder != null) {
            favoritesHeaderContactListHolder.m30510m();
        }
    }

    public ArrayList<BaseAdapterItemData> getCheckedItems() {
        return this.f22423c;
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.CONTACT_LIST;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CONTACT_ITEM;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppCursorAdapter
    public String getIndexColumnName() {
        return ((ContactsAggregatorCursor) this.f20245a).getColumnIdName();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppCursorAdapter, com.callapp.contacts.activity.base.BaseCallAppAdapter
    public BaseViewTypeData getItemAt(int i) {
        return i == 0 ? new BaseViewTypeData() { // from class: com.callapp.contacts.activity.contact.list.ContactListAdapter.1
            @Override // com.callapp.contacts.activity.base.BaseViewTypeData
            public int getViewType() {
                return 5;
            }
        } : super.getItemAt(i - 1);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppCursorAdapter, androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemCount() {
        return super.getItemCount() + 1;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppCursorAdapter, com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public int getItemViewType(int i) {
        if (i == 0) {
            return 5;
        }
        return super.getItemViewType(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i != Integer.MIN_VALUE) {
            if (i == 0) {
                CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
                builder.f20368b = CallAppViewTypes.CENTER_CONTACT_LIST;
                builder.f20367a = CallAppViewTypes.LEFT_PROFILE;
                builder.f20369c = CallAppViewTypes.RIGHT_CALL_BUTTON;
                return new ContactViewHolder(builder.m31474a());
            } else if (i == 5) {
                FavoritesHeaderContactListHolder favoritesHeaderContactListHolder = new FavoritesHeaderContactListHolder(LayoutInflater.from(viewGroup.getContext()), LayoutInflater.from(viewGroup.getContext()).inflate(2131558567, viewGroup, false), this.f22430j);
                this.f22424d = favoritesHeaderContactListHolder;
                return favoritesHeaderContactListHolder;
            } else if (i == 6) {
                return new AddToContactsViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558756, viewGroup, false));
            } else {
                if (i == 7) {
                    return new SearchForViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558756, viewGroup, false));
                }
                return null;
            }
        }
        return new DummyViewHolder(LayoutInflater.from(viewGroup.getContext()));
    }

    public void setMultiSelectMode(boolean z) {
        this.f22427g = z;
    }
}
