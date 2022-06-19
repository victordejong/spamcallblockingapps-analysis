package com.callapp.contacts.activity.blocked;

import android.os.Bundle;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.blocked.BlockedAdapter;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.viewcontroller.TopHintViewController;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.model.ReminderType;
import com.callapp.contacts.model.objectbox.SpamData;
import com.callapp.contacts.model.objectbox.UserSpamData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.phone.Phone;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/SpamFragment.class */
public class SpamFragment extends BaseCallAppFragmentWithHint<BaseViewTypeData> implements BlockedAdapter.BlockedAdapterEvents {

    /* renamed from: a */
    private final Set<String> f20503a = new HashSet();

    /* renamed from: a */
    public /* synthetic */ void m31428a(List list) {
        setData(list);
        toggleEmptyViewIfNeeded();
        hideLoadingProgress();
    }

    /* renamed from: a */
    public /* synthetic */ void m31427a(Set set) {
        final ArrayList arrayList = new ArrayList();
        List<ReminderData> blockedContacts = ContactUtils.getBlockedContacts();
        HashSet hashSet = new HashSet();
        for (ReminderData reminderData : blockedContacts) {
            hashSet.add(reminderData.phone);
        }
        List<SpamData> allSpamData = BlockManager.getAllSpamData();
        for (UserSpamData userSpamData : UserCorrectedInfoUtil.getAllUserSpam()) {
            if (userSpamData.isSpam()) {
                Phone m28239a = PhoneManager.get().m28239a(userSpamData.getPhone());
                if (!set.contains(m28239a.m26101a()) && !this.f20503a.contains(m28239a.m26101a())) {
                    arrayList.add(new SpamReminderData(-1L, new Date(0L), 0L, m28239a, null, ReminderType.SPAM, hashSet.contains(m28239a), true));
                    set.add(m28239a.m26101a());
                }
            }
        }
        for (SpamData spamData : allSpamData) {
            Phone m28239a2 = PhoneManager.get().m28239a(spamData.getPhoneAsRaw());
            if (!set.contains(m28239a2.m26101a()) && !this.f20503a.contains(m28239a2.m26101a())) {
                arrayList.add(new SpamReminderData(-1L, new Date(0L), 0L, m28239a2, null, ReminderType.SPAM, hashSet.contains(m28239a2), false));
                set.add(m28239a2.m26101a());
            }
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.blocked._$$Lambda$SpamFragment$778lfUWbxsAtUgG00f8N_YCRrJI
            @Override // java.lang.Runnable
            public final void run() {
                SpamFragment.this.m31428a(arrayList);
            }
        });
    }

    /* renamed from: d */
    public static /* synthetic */ void m31425d() {
        Prefs.f26521fg.set(Boolean.FALSE);
    }

    @Override // com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedAdapterEvents
    /* renamed from: a */
    public final void mo31429a(Phone phone) {
        this.f20503a.add(phone.m26101a());
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    /* renamed from: a */
    public final boolean mo29775a() {
        return Prefs.f26521fg.get().booleanValue();
    }

    @Override // com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedAdapterEvents
    /* renamed from: b */
    public final void mo31426b() {
        this.isDataLoaded = false;
        EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getAdUnitIdsConfiguration() {
        return CallAppRemoteConfigManager.get().m28703a(CallAppRemoteConfigManager.f25635w);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return 7;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return new BaseCallAppFragment.EmptyViewData(2131231382, Activities.getString(2131887741));
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getExperimentRemoteConfigName() {
        return "SpamListExperiments";
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[]{EventBusManager.CallAppDataType.BLOCK.ordinal(), EventBusManager.CallAppDataType.CONTACTS.ordinal()};
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    public TopHintViewController.HintBuilder getHintBuilder() {
        TopHintViewController.HintBuilder hintBuilder = new TopHintViewController.HintBuilder();
        hintBuilder.f24611a = 2131231903;
        hintBuilder.f24615e = _$$Lambda$SpamFragment$_L4egDtANqGcjdt7u9cLdfsKWW4.INSTANCE;
        hintBuilder.f24612b = Activities.getString(2131887740);
        hintBuilder.f24613c = Activities.getString(2131887739);
        hintBuilder.f24614d = 2131100140;
        return hintBuilder;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    public BaseCallAppFragmentWithHint.HintType getHintType() {
        return BaseCallAppFragmentWithHint.HintType.REGULAR;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(Object obj) {
        this.originalAdapter = new BlockedAdapter((List) obj, this, getScrollEvents());
        return AdUtils.m27284a(getActivity(), ListsUtils.m27474a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isPartOfViewPagerActivity() {
        return false;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint, com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        refreshData();
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        if (!this.isDataLoaded) {
            final HashSet hashSet = new HashSet();
            this.isDataLoaded = true;
            showLoadingProgress();
            CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.blocked._$$Lambda$SpamFragment$jPEX8Gl6KAYvdFi7cO6ypdGSPxI
                @Override // java.lang.Runnable
                public final void run() {
                    SpamFragment.this.m31427a(hashSet);
                }
            });
        }
    }
}
