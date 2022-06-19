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

    /* renamed from: a */
    private String f20886a = "";

    /* renamed from: a */
    public /* synthetic */ void m31257a() {
        final List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
        getActivity().runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.chooseContact._$$Lambda$FilteredContactListFragment$yctj_ZKtzgM6PDJkF2I9f_RBvro
            @Override // java.lang.Runnable
            public final void run() {
                FilteredContactListFragment.this.m31255a(contactsWithPhoneNumber);
            }
        });
    }

    /* renamed from: a */
    private void m31256a(CharSequence charSequence, boolean z) {
        if (this.originalAdapter != null && (StringUtils.m26045b(charSequence) || StringUtils.m26045b((CharSequence) this.f20886a) || StringUtils.m26044b(charSequence, this.f20886a))) {
            ((ChooseContactAdapter) this.originalAdapter).getFilter().filter(charSequence);
        }
        this.f20886a = charSequence != null ? charSequence.toString() : null;
    }

    /* renamed from: a */
    public /* synthetic */ void m31255a(List list) {
        setData((List<MemoryContactItem>) list);
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListFragment
    public void filterReq(CharSequence charSequence, boolean z) {
        if (z) {
            scrollToTop();
        }
        if (!StringUtils.m26057a(charSequence, getCurrentFilterText())) {
            m31256a(charSequence, false);
        }
    }

    public String getCurrentFilterText() {
        return this.f20886a;
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
        return AdUtils.m27284a(getActivity(), ListsUtils.m27474a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
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
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.chooseContact._$$Lambda$FilteredContactListFragment$qjcxKTra7_ZAzPhgOmbOuokoQmE
            @Override // java.lang.Runnable
            public final void run() {
                FilteredContactListFragment.this.m31257a();
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListFragment
    public void setData(List<MemoryContactItem> list) {
        super.setData((List) list);
        m31256a(this.f20886a, false);
    }
}
