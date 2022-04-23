package com.callapp.contacts.activity.callappplus;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ads.AdUtils;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusStarredFragment.class */
public class CallAppPlusStarredFragment extends BaseCallAppFragment<List<CallAppPlusData>> {

    /* renamed from: a  reason: collision with root package name */
    private FrameLayout f11287a;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        final List<CallAppPlusData> favoriteContactPlusItems = ContactPlusUtils.getFavoriteContactPlusItems();
        if (this.originalAdapter != null) {
            this.originalAdapter.c();
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$CallAppPlusStarredFragment$Hh_UBK_xixmkCMu1JcUdOZ4uMzo
            @Override // java.lang.Runnable
            public final void run() {
                CallAppPlusStarredFragment.this.a(favoriteContactPlusItems);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list) {
        setData(list);
        toggleEmptyViewIfNeeded();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return 6;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return new BaseCallAppFragment.EmptyViewData(2131231374, Activities.getString(2131886999));
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[]{EventBusManager.CallAppDataType.IDENTIFIED_CONTACTS_DATA_CHANGED.ordinal(), EventBusManager.CallAppDataType.CONTACTS.ordinal(), EventBusManager.CallAppDataType.REFRESH_SEARCH.ordinal()};
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getLayoutResId() {
        return 2131558795;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(List<CallAppPlusData> list) {
        this.originalAdapter = new CallAppPlusStarredAdapter(list, getScrollEvents());
        this.recyclerView.a(new CallAppPlusSpaceItemDecoration(), -1);
        return AdUtils.a(getActivity(), ListsUtils.a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
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
        this.f11287a = (FrameLayout) view.findViewById(2131362241);
        if (ThemeUtils.isThemeLight()) {
            this.f11287a.setBackgroundColor(ThemeUtils.getColor(2131099921));
        } else {
            this.f11287a.setBackgroundColor(ThemeUtils.getColor(2131099819));
        }
        refreshData();
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        if (!this.isDataLoaded) {
            this.isDataLoaded = true;
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$CallAppPlusStarredFragment$DA9OLXuPhV06M5qJPrqbnBaLdK8
                @Override // java.lang.Runnable
                public final void run() {
                    CallAppPlusStarredFragment.this.a();
                }
            });
        }
    }
}
