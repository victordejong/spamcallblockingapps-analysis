package com.callapp.contacts.activity.callappplus;

import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.ScrollRecyclerStateTracker;
import com.callapp.contacts.activity.fragments.SearchBarFilterFragment;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/SearchCallAppPlusFragment.class */
public class SearchCallAppPlusFragment extends SearchBarFilterFragment {
    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    /* renamed from: a */
    public final BaseCallAppListAdapter<BaseAdapterItemData, BaseCallAppViewHolder> mo29716a(ScrollRecyclerStateTracker scrollRecyclerStateTracker, List<BaseAdapterItemData> list) {
        return new SearchCallAppPlusAdapter(scrollRecyclerStateTracker, list);
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    /* renamed from: a */
    public final Collection<? extends BaseAdapterItemData> mo29712a(CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        List<? extends BaseAdapterItemData> favoriteContactPlusItems = ContactPlusUtils.getFavoriteContactPlusItems();
        arrayList.addAll(m30259a(charSequence, favoriteContactPlusItems, true));
        List<? extends BaseAdapterItemData> arrayList2 = new ArrayList<>(ContactPlusUtils.getContactPlusItemsData());
        arrayList2.removeAll(favoriteContactPlusItems);
        arrayList.addAll(m30259a(charSequence, arrayList2, false));
        return arrayList;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public int getAllHeaderText() {
        return 2131886979;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public int getEmptySearchResultText() {
        return 2131887005;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public int getEmptyViewBoldTitle() {
        return 2131887007;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public int getEmptyViewImage() {
        return 2131231374;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public int getEmptyViewTitle() {
        return 2131887006;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public InvalidateDataListener getInvalidateDataListener() {
        return new InvalidateDataListener() { // from class: com.callapp.contacts.activity.callappplus.SearchCallAppPlusFragment.1
            @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
            public void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
                if (callAppDataType == EventBusManager.CallAppDataType.CONTACTS || callAppDataType == EventBusManager.CallAppDataType.IDENTIFIED_CONTACTS_DATA_CHANGED) {
                    SearchCallAppPlusFragment searchCallAppPlusFragment = SearchCallAppPlusFragment.this;
                    searchCallAppPlusFragment.mo30194a(searchCallAppPlusFragment.getCurrentFilter());
                }
            }
        };
    }
}
