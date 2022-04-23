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

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f11254a = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list) {
        setData(list);
        toggleEmptyViewIfNeeded();
        hideLoadingProgress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Set set) {
        final ArrayList arrayList = new ArrayList();
        List<ReminderData> blockedContacts = ContactUtils.getBlockedContacts();
        HashSet hashSet = new HashSet();
        for (ReminderData reminderData : blockedContacts) {
            hashSet.add(reminderData.phone);
        }
        List<SpamData> allSpamData = BlockManager.getAllSpamData();
        for (UserSpamData userSpamData : UserCorrectedInfoUtil.getAllUserSpam()) {
            if (userSpamData.isSpam()) {
                Phone a2 = PhoneManager.get().a(userSpamData.getPhone());
                if (!set.contains(a2.a()) && !this.f11254a.contains(a2.a())) {
                    arrayList.add(new SpamReminderData(-1L, new Date(0L), 0L, a2, null, ReminderType.SPAM, hashSet.contains(a2), true));
                    set.add(a2.a());
                }
            }
        }
        for (SpamData spamData : allSpamData) {
            Phone a3 = PhoneManager.get().a(spamData.getPhoneAsRaw());
            if (!set.contains(a3.a()) && !this.f11254a.contains(a3.a())) {
                arrayList.add(new SpamReminderData(-1L, new Date(0L), 0L, a3, null, ReminderType.SPAM, hashSet.contains(a3), false));
                set.add(a3.a());
            }
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.blocked._$$Lambda$SpamFragment$778lfUWbxsAtUgG00f8N_YCRrJI
            @Override // java.lang.Runnable
            public final void run() {
                SpamFragment.this.a(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d() {
        Prefs.fg.set(Boolean.FALSE);
    }

    @Override // com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedAdapterEvents
    public final void a(Phone phone) {
        this.f11254a.add(phone.a());
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    public final boolean a() {
        return Prefs.fg.get().booleanValue();
    }

    @Override // com.callapp.contacts.activity.blocked.BlockedAdapter.BlockedAdapterEvents
    public final void b() {
        this.isDataLoaded = false;
        EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.BLOCK, false);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getAdUnitIdsConfiguration() {
        return CallAppRemoteConfigManager.get().a(CallAppRemoteConfigManager.w);
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
        hintBuilder.f13998a = 2131231903;
        hintBuilder.e = _$$Lambda$SpamFragment$_L4egDtANqGcjdt7u9cLdfsKWW4.INSTANCE;
        hintBuilder.f13999b = Activities.getString(2131887740);
        hintBuilder.f14000c = Activities.getString(2131887739);
        hintBuilder.f14001d = 2131100140;
        return hintBuilder;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    public BaseCallAppFragmentWithHint.HintType getHintType() {
        return BaseCallAppFragmentWithHint.HintType.REGULAR;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(Object obj) {
        this.originalAdapter = new BlockedAdapter((List) obj, this, getScrollEvents());
        return AdUtils.a(getActivity(), ListsUtils.a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
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
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.blocked._$$Lambda$SpamFragment$jPEX8Gl6KAYvdFi7cO6ypdGSPxI
                @Override // java.lang.Runnable
                public final void run() {
                    SpamFragment.this.a(hashSet);
                }
            });
        }
    }
}
