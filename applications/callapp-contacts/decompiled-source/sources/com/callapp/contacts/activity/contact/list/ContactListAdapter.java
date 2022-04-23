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

    /* renamed from: d  reason: collision with root package name */
    FavoritesHeaderContactListHolder f12528d;
    private ContactItemViewEvents e;
    private ScrollEvents f;
    private boolean g;
    private OnSelectChangeListener h;
    private final DataFragmentsEvents j;
    private LongSparseArray<Boolean> i = new LongSparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    ArrayList<BaseAdapterItemData> f12527c = new ArrayList<>();

    public ContactListAdapter(ScrollEvents scrollEvents, ContactsAggregatorCursor contactsAggregatorCursor, StoreItemAssetManager storeItemAssetManager, ContactItemViewEvents contactItemViewEvents, boolean z, OnSelectChangeListener onSelectChangeListener, DataFragmentsEvents dataFragmentsEvents) {
        super(contactsAggregatorCursor, storeItemAssetManager);
        this.f = scrollEvents;
        this.e = contactItemViewEvents;
        this.g = z;
        this.h = onSelectChangeListener;
        this.j = dataFragmentsEvents;
    }

    static /* synthetic */ void a(ContactListAdapter contactListAdapter, View view, ContactViewHolder contactViewHolder, MemoryContactItem memoryContactItem) {
        if (contactListAdapter.g) {
            boolean z = !memoryContactItem.isChecked();
            contactViewHolder.getProfilePicture().b(z, true);
            memoryContactItem.setChecked(z);
            if (z) {
                contactListAdapter.f12527c.add(memoryContactItem);
            } else {
                contactListAdapter.f12527c.remove(memoryContactItem);
            }
            contactListAdapter.h.b();
            return;
        }
        AndroidUtils.a(view, 1);
        ListsUtils.a(view.getContext(), memoryContactItem, "contact list", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), contactViewHolder.getAdapterPosition(), 2), ENTRYPOINT.CALL_LOG_CONTACT_LIST);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppCursorAdapter
    public final /* synthetic */ BaseViewTypeData a(int i) {
        Boolean bool;
        MemoryContactItem dataAtPosition = ((ContactsAggregatorCursor) this.f11075a).getDataAtPosition(i);
        if (!(dataAtPosition == null || (bool = this.i.get(dataAtPosition.contactId)) == null)) {
            dataAtPosition.setLoaded(bool.booleanValue());
        }
        return dataAtPosition;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final void a(BaseAdapterItemData baseAdapterItemData) {
        if (baseAdapterItemData.getViewType() == 0) {
            a(baseAdapterItemData, false);
            this.i.remove(baseAdapterItemData.contactId);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        if (baseViewTypeData != null) {
            int viewType = baseViewTypeData.getViewType();
            if (viewType == 0) {
                final MemoryContactItem memoryContactItem = (MemoryContactItem) baseViewTypeData;
                memoryContactItem.setChecked(this.f12527c.contains(memoryContactItem));
                final ContactViewHolder contactViewHolder = (ContactViewHolder) baseCallAppViewHolder;
                contactViewHolder.a(memoryContactItem, this.e, this.f, null);
                contactViewHolder.a(memoryContactItem, getContextMenuType(), getContextMenuAnalyticsTag());
                contactViewHolder.setOnDataLoadListener(new BaseContactHolder.OnDataLoadListener() { // from class: com.callapp.contacts.activity.contact.list.ContactListAdapter.2
                    @Override // com.callapp.contacts.activity.base.BaseContactHolder.OnDataLoadListener
                    public final void a(BaseAdapterItemData baseAdapterItemData) {
                        if (baseAdapterItemData != null) {
                            ContactListAdapter.this.i.put(baseAdapterItemData.contactId, Boolean.TRUE);
                        }
                    }
                });
                final CallAppRow view = contactViewHolder.getView();
                view.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactListAdapter.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        ContactListAdapter.a(ContactListAdapter.this, view2, contactViewHolder, memoryContactItem);
                    }
                });
                contactViewHolder.getProfilePicture().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactListAdapter.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        view.b();
                        ContactListAdapter.a(ContactListAdapter.this, view2, contactViewHolder, memoryContactItem);
                    }
                });
            } else if (viewType == 5) {
                ((FavoritesHeaderContactListHolder) baseCallAppViewHolder).l();
            } else if (viewType == 6) {
                ((AddToContactsViewHolder) baseCallAppViewHolder).a((AddEntryItemData) baseViewTypeData);
            } else if (viewType == 7) {
                ((SearchForViewHolder) baseCallAppViewHolder).a((SearchForItemData) baseViewTypeData);
            }
        }
    }

    public final void d() {
        FavoritesHeaderContactListHolder favoritesHeaderContactListHolder = this.f12528d;
        if (favoritesHeaderContactListHolder != null) {
            favoritesHeaderContactListHolder.m();
        }
    }

    public ArrayList<BaseAdapterItemData> getCheckedItems() {
        return this.f12527c;
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.CONTACT_LIST;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CONTACT_ITEM;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppCursorAdapter
    public String getIndexColumnName() {
        return ((ContactsAggregatorCursor) this.f11075a).getColumnIdName();
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

    @Override // com.callapp.contacts.activity.base.BaseCallAppCursorAdapter, androidx.recyclerview.widget.RecyclerView.a
    public int getItemCount() {
        return super.getItemCount() + 1;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppCursorAdapter, com.callapp.contacts.activity.base.BaseCallAppAdapter, androidx.recyclerview.widget.RecyclerView.a
    public int getItemViewType(int i) {
        if (i == 0) {
            return 5;
        }
        return super.getItemViewType(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == Integer.MIN_VALUE) {
            return new DummyViewHolder(LayoutInflater.from(viewGroup.getContext()));
        }
        if (i == 0) {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f11158b = CallAppViewTypes.CENTER_CONTACT_LIST;
            builder.f11157a = CallAppViewTypes.LEFT_PROFILE;
            builder.f11159c = CallAppViewTypes.RIGHT_CALL_BUTTON;
            return new ContactViewHolder(builder.a());
        } else if (i == 5) {
            FavoritesHeaderContactListHolder favoritesHeaderContactListHolder = new FavoritesHeaderContactListHolder(LayoutInflater.from(viewGroup.getContext()), LayoutInflater.from(viewGroup.getContext()).inflate(2131558567, viewGroup, false), this.j);
            this.f12528d = favoritesHeaderContactListHolder;
            return favoritesHeaderContactListHolder;
        } else if (i == 6) {
            return new AddToContactsViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558756, viewGroup, false));
        } else {
            if (i != 7) {
                return null;
            }
            return new SearchForViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131558756, viewGroup, false));
        }
    }

    public void setMultiSelectMode(boolean z) {
        this.g = z;
    }
}
