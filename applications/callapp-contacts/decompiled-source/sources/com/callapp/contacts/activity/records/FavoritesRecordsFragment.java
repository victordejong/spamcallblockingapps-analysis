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

    /* renamed from: a  reason: collision with root package name */
    private RecordsActivityActions f13529a;

    /* renamed from: b  reason: collision with root package name */
    private DialogCallRecorderPlayer f13530b;

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
            public final void a(CallRecorder callRecorder, boolean z) {
                if (FavoritesRecordsFragment.this.f13530b != null) {
                    FavoritesRecordsFragment.this.f13530b.dismiss();
                    FavoritesRecordsFragment.this.f13530b = null;
                }
                FavoritesRecordsFragment.this.f13530b = new DialogCallRecorderPlayer(callRecorder, z, null);
                PopupManager.get().a(FavoritesRecordsFragment.this.getActivity(), FavoritesRecordsFragment.this.f13530b);
            }
        });
        return AdUtils.a(getActivity(), ListsUtils.a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
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
            this.f13529a = (RecordsActivityActions) getActivity();
        } catch (ClassCastException e) {
            throw new IllegalStateException("Parent activity must implement RecordsActivityActions");
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        DialogCallRecorderPlayer dialogCallRecorderPlayer = this.f13530b;
        if (dialogCallRecorderPlayer != null) {
            dialogCallRecorderPlayer.dismiss();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        DialogCallRecorderPlayer dialogCallRecorderPlayer = this.f13530b;
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
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.records.FavoritesRecordsFragment.1
            @Override // java.lang.Runnable
            public void run() {
                final List<CallRecorder> starredRecords = FavoritesRecordsFragment.this.f13529a.getStarredRecords();
                if (FavoritesRecordsFragment.this.originalAdapter != null) {
                    FavoritesRecordsFragment.this.originalAdapter.c();
                }
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.records.FavoritesRecordsFragment.1.1
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
