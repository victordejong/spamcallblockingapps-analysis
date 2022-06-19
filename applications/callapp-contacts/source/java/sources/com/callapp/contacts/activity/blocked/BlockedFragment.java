package com.callapp.contacts.activity.blocked;

import android.os.Bundle;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.base.HeaderSectionData;
import com.callapp.contacts.activity.blocked.BlockedAdapter;
import com.callapp.contacts.activity.contact.list.search.AddEntryItemData;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.model.ReminderType;
import com.callapp.contacts.model.objectbox.BlockedRule;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.phone.Phone;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedFragment.class */
public class BlockedFragment extends BaseCallAppFragment<List<BaseViewTypeData>> implements BlockedAdapter.BlockedAdapterEvents {
    /* renamed from: a */
    public /* synthetic */ void m31431a() {
        final ArrayList arrayList = new ArrayList();
        List<BlockedRule> allBlockedRules = BlockManager.getAllBlockedRules();
        arrayList.add(new HeaderSectionData());
        arrayList.add(new AddEntryItemData(Activities.getString(2131886648)));
        for (BlockedRule blockedRule : allBlockedRules) {
            arrayList.add(new ReminderData(blockedRule.getBlockRuleType().type, new Date(0L), 0L, PhoneManager.get().m28239a(blockedRule.getRawNumber()), blockedRule.getTitle(), ReminderType.BLOCKED_RULE));
        }
        arrayList.addAll(ContactUtils.getBlockedContacts());
        if (this.originalAdapter != null) {
            this.originalAdapter.m31513c();
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.blocked._$$Lambda$BlockedFragment$pn3wIKXCuTBK89LPaAWAffcsryA
            @Override // java.lang.Runnable
            public final void run() {
                BlockedFragment.this.m31430a(arrayList);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m31430a(List list) {
        setData(list);
    }

    @Override // com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedAdapterEvents
    /* renamed from: a */
    public final void mo31429a(Phone phone) {
    }

    @Override // com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedAdapterEvents
    /* renamed from: b */
    public final void mo31426b() {
        this.isDataLoaded = false;
        EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return 7;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return null;
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[]{EventBusManager.CallAppDataType.BLOCK.ordinal(), EventBusManager.CallAppDataType.CONTACTS.ordinal()};
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getLayoutResId() {
        return 2131558838;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(List<BaseViewTypeData> list) {
        this.originalAdapter = new BlockedAdapter(list, this, getScrollEvents());
        return AdUtils.m27284a(getActivity(), ListsUtils.m27474a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isPartOfViewPagerActivity() {
        return false;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        hideLoadingProgress();
        this.recyclerView.setHasFixedSize(true);
        refreshData();
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        if (!this.isDataLoaded) {
            this.isDataLoaded = true;
            CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.blocked._$$Lambda$BlockedFragment$_hlxykDoNhgFWrNmevXTWw9DjWI
                @Override // java.lang.Runnable
                public final void run() {
                    BlockedFragment.this.m31431a();
                }
            });
        }
    }
}
