package com.callapp.contacts.activity.records;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseMultiSelectListFragment;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.interfaces.MultiSelectEvents;
import com.callapp.contacts.activity.records.CallRecordsAdapter;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ads.AdUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/FavoritesRecordsFragment.class */
public class FavoritesRecordsFragment extends BaseMultiSelectListFragment<CallRecorder> implements MultiSelectEvents {

    /* renamed from: a */
    private RecordsActivityActions f24030a;

    /* renamed from: b */
    private DialogCallRecorderPlayer f24031b;

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListFragment
    public void filterReq(CharSequence charSequence, boolean z) {
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return 4;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return new BaseCallAppFragment.EmptyViewData(2131231380, Activities.getString(2131886409));
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[]{EventBusManager.CallAppDataType.CALL_RECORDERS.ordinal(), EventBusManager.CallAppDataType.RECENT_CALLS.ordinal(), EventBusManager.CallAppDataType.CONTACTS.ordinal()};
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getLayoutResId() {
        return 2131558838;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(Object obj) {
        this.originalAdapter = new CallRecordsAdapter(getScrollEvents(), (List) obj, new CallRecordsAdapter.CallRecordRowListener() { // from class: com.callapp.contacts.activity.records.FavoritesRecordsFragment.2
            @Override // com.callapp.contacts.activity.records.CallRecordsAdapter.CallRecordRowListener
            /* renamed from: a */
            public final void mo29709a(CallRecorder callRecorder, boolean z) {
                if (FavoritesRecordsFragment.this.f24031b != null) {
                    FavoritesRecordsFragment.this.f24031b.dismiss();
                    FavoritesRecordsFragment.this.f24031b = null;
                }
                FavoritesRecordsFragment.this.f24031b = new DialogCallRecorderPlayer(callRecorder, z, null);
                PopupManager.get().m28209a(FavoritesRecordsFragment.this.getActivity(), FavoritesRecordsFragment.this.f24031b);
            }
        });
        return AdUtils.m27284a(getActivity(), ListsUtils.m27474a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectEvents
    public ArrayList<BaseAdapterItemData> getSelectedContacts() {
        return new ArrayList<>(getCheckedRows());
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isPartOfViewPagerActivity() {
        return false;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.f24030a = (RecordsActivityActions) getActivity();
        } catch (ClassCastException e) {
            throw new IllegalStateException("Parent activity must implement RecordsActivityActions");
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        DialogCallRecorderPlayer dialogCallRecorderPlayer = this.f24031b;
        if (dialogCallRecorderPlayer != null) {
            dialogCallRecorderPlayer.dismiss();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        DialogCallRecorderPlayer dialogCallRecorderPlayer = this.f24031b;
        if (dialogCallRecorderPlayer != null) {
            dialogCallRecorderPlayer.pausePlayer();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        refreshData();
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        showLoadingProgress();
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.records.FavoritesRecordsFragment.1
            @Override // java.lang.Runnable
            public void run() {
                final List<CallRecorder> starredRecords = FavoritesRecordsFragment.this.f24030a.getStarredRecords();
                if (FavoritesRecordsFragment.this.originalAdapter != null) {
                    FavoritesRecordsFragment.this.originalAdapter.m31513c();
                }
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.records.FavoritesRecordsFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        FavoritesRecordsFragment.this.setData(starredRecords);
                        FavoritesRecordsFragment.this.toggleEmptyViewIfNeeded();
                        FavoritesRecordsFragment.this.hideLoadingProgress();
                    }
                });
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectEvents
    public void setMultiSelectModeEnable(boolean z) {
        showMultiSelect(true);
    }
}
