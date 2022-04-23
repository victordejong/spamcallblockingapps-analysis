package com.callapp.contacts.activity.chooseContact;

import android.os.Bundle;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseMultiSelectListFragment;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.util.StringUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/FilteredContactListFragment.class */
public class FilteredContactListFragment extends BaseMultiSelectListFragment<MemoryContactItem> {

    /* renamed from: a  reason: collision with root package name */
    private String f11493a = "";

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        final List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
        getActivity().runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.chooseContact._$$Lambda$FilteredContactListFragment$yctj_ZKtzgM6PDJkF2I9f_RBvro
            @Override // java.lang.Runnable
            public final void run() {
                FilteredContactListFragment.this.a(contactsWithPhoneNumber);
            }
        });
    }

    private void a(CharSequence charSequence, boolean z) {
        if (this.originalAdapter != null && (StringUtils.b(charSequence) || StringUtils.b((CharSequence) this.f11493a) || StringUtils.b(charSequence, this.f11493a))) {
            ((ChooseContactAdapter) this.originalAdapter).getFilter().filter(charSequence);
        }
        this.f11493a = charSequence != null ? charSequence.toString() : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list) {
        setData((List<MemoryContactItem>) list);
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListFragment
    public void filterReq(CharSequence charSequence, boolean z) {
        if (z) {
            scrollToTop();
        }
        if (!StringUtils.a(charSequence, getCurrentFilterText())) {
            a(charSequence, false);
        }
    }

    public String getCurrentFilterText() {
        return this.f11493a;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return null;
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[]{EventBusManager.CallAppDataType.CONTACTS.ordinal()};
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(Object obj) {
        this.originalAdapter = new ChooseContactAdapter(getScrollEvents(), (List) obj, false, this.itemClickListener);
        return AdUtils.a(getActivity(), ListsUtils.a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isPartOfViewPagerActivity() {
        return false;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        refreshData();
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.chooseContact._$$Lambda$FilteredContactListFragment$qjcxKTra7_ZAzPhgOmbOuokoQmE
            @Override // java.lang.Runnable
            public final void run() {
                FilteredContactListFragment.this.a();
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListFragment
    public void setData(List<MemoryContactItem> list) {
        super.setData((List) list);
        a(this.f11493a, false);
    }
}
