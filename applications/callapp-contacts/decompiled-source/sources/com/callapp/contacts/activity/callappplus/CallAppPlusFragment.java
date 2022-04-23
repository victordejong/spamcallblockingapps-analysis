package com.callapp.contacts.activity.callappplus;

import a.a.a.a.a.c;
import android.content.Context;
import android.widget.Filter;
import android.widget.FrameLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.fastscroll.FastScrollRecyclerView;
import com.callapp.contacts.activity.interfaces.CallAppFilter;
import com.callapp.contacts.activity.interfaces.FilterEvents;
import com.callapp.contacts.activity.viewcontroller.TopHintViewController;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.contacts.ContactPlusUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusFragment.class */
public class CallAppPlusFragment extends BaseCallAppFragmentWithHint<CallAppPlusData> implements CallAppFilter {

    /* renamed from: a  reason: collision with root package name */
    private com.callapp.contacts.activity.interfaces.CallAppPlusFilter f11275a;

    /* renamed from: b  reason: collision with root package name */
    private FilterEvents f11276b;

    /* renamed from: c  reason: collision with root package name */
    private List<CallAppPlusData> f11277c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private Map<Integer, SectionData> f11278d;
    private FrameLayout e;
    private StickyPromotionCallAppPlus f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter.class */
    public class CallAppPlusFilter extends Filter {
        private CallAppPlusFilter() {
        }

        private void a(List<CallAppPlusData> list, List<Integer> list2) {
            for (CallAppPlusData callAppPlusData : CallAppPlusFragment.this.f11277c) {
                callAppPlusData.f11270b.clear();
                callAppPlusData.textHighlights.clear();
                callAppPlusData.numberMatchIndexEnd = -1;
                callAppPlusData.numberMatchIndexStart = -1;
                if (CallAppPlusFragment.this.f11275a.isAllSelected()) {
                    for (CallAppPlusData callAppPlusData2 : CallAppPlusFragment.this.f11277c) {
                        callAppPlusData2.f11270b.clear();
                        callAppPlusData2.textHighlights.clear();
                        callAppPlusData2.numberMatchIndexEnd = -1;
                        callAppPlusData2.numberMatchIndexStart = -1;
                    }
                    list.addAll(CallAppPlusFragment.this.f11277c);
                    return;
                } else if (list2.contains(Integer.valueOf(callAppPlusData.f11269a.recognizedPersonOrigin.imNameStringResId))) {
                    list.add(callAppPlusData);
                }
            }
        }

        private void a(List<CallAppPlusData> list, List<Integer> list2, String str) {
            for (CallAppPlusData callAppPlusData : CallAppPlusFragment.this.f11277c) {
                boolean z = CallAppPlusFragment.this.f11275a.isAllSelected() || list2.contains(Integer.valueOf(callAppPlusData.f11269a.recognizedPersonOrigin.imNameStringResId));
                String str2 = callAppPlusData.f11269a.groupName;
                boolean z2 = StringUtils.b((CharSequence) callAppPlusData.displayName) && T9Helper.a(callAppPlusData.displayName.toLowerCase(), callAppPlusData.textHighlights, str, org.apache.commons.lang3.StringUtils.SPACE);
                boolean z3 = false;
                if (StringUtils.b((CharSequence) str2)) {
                    z3 = false;
                    if (T9Helper.a(str2.toLowerCase(), callAppPlusData.f11270b, str, org.apache.commons.lang3.StringUtils.SPACE)) {
                        z3 = true;
                    }
                }
                if (!z2) {
                    callAppPlusData.textHighlights.clear();
                }
                if (!z3) {
                    callAppPlusData.f11270b.clear();
                }
                if (z && (z2 || z3)) {
                    list.add(callAppPlusData);
                }
            }
        }

        @Override // android.widget.Filter
        protected Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            ArrayList arrayList = new ArrayList();
            List<Integer> activeFilter = CallAppPlusFragment.this.f11275a.getActiveFilter();
            if (!CollectionUtils.a(activeFilter)) {
                if (StringUtils.a(charSequence)) {
                    a(arrayList, activeFilter);
                } else {
                    a(arrayList, activeFilter, charSequence.toString());
                }
            }
            filterResults.values = arrayList;
            return filterResults;
        }

        @Override // android.widget.Filter
        protected void publishResults(CharSequence charSequence, final Filter.FilterResults filterResults) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusFragment.CallAppPlusFilter.1
                @Override // java.lang.Runnable
                public void run() {
                    CallAppPlusFragment.this.setData((List) filterResults.values);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.CallAppFilter
    public final void a(String str) {
        if (this.recyclerView != null && this.recyclerAdapter != null) {
            getFilter().filter(str);
            if (this.recyclerView instanceof FastScrollRecyclerView) {
                ((FastScrollRecyclerView) this.recyclerView).setFastScrollEnabled(StringUtils.a((CharSequence) str));
            }
            if (!AdUtils.a()) {
                if (StringUtils.b((CharSequence) str)) {
                    this.recyclerAdapter.clearAds();
                } else {
                    this.recyclerAdapter.b();
                }
            }
            this.recyclerView.b(0);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    public final boolean a() {
        return Activities.getNotificationListenersSettingsScreenIntent() != null && !Activities.b() && Prefs.fh.get().booleanValue();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getAdUnitIdsConfiguration() {
        return CallAppRemoteConfigManager.get().a(CallAppRemoteConfigManager.u);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return 6;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return new BaseCallAppFragment.EmptyViewData(2131231374, Activities.getString(2131887003));
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getExperimentRemoteConfigName() {
        return "IMLogAdExperiments";
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new CallAppPlusFilter();
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[]{EventBusManager.CallAppDataType.CONTACTS.ordinal(), EventBusManager.CallAppDataType.IDENTIFIED_CONTACTS_DATA_CHANGED.ordinal(), EventBusManager.CallAppDataType.REFRESH_SEARCH.ordinal()};
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    public TopHintViewController.HintBuilder getHintBuilder() {
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    public BaseCallAppFragmentWithHint.HintType getHintType() {
        return BaseCallAppFragmentWithHint.HintType.CALLAPP_PLUS;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint, com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getLayoutResId() {
        return 2131558795;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(Object obj) {
        this.originalAdapter = new CallAppPlusAdapter((List) obj, this.f11278d, getScrollEvents());
        CallAppMoPubRecyclerAdapter a2 = AdUtils.a(getActivity(), ListsUtils.a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
        this.recyclerView.a(new c(a2), 1);
        this.recyclerView.a(new CallAppPlusSpaceItemDecoration(), -1);
        return a2;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isPartOfViewPagerActivity() {
        return false;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.f11275a = (com.callapp.contacts.activity.interfaces.CallAppPlusFilter) getActivity();
            try {
                FilterEvents filterEvents = (FilterEvents) getActivity();
                this.f11276b = filterEvents;
                filterEvents.a(this);
            } catch (ClassCastException e) {
                throw new IllegalStateException("Parent activity must implement FilterEvents");
            }
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Activity must implement CallAppPlusFilter");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.f11276b.b(this);
        super.onDetach();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x024c  */
    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint, com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onViewCreated(android.view.View r7, android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.callappplus.CallAppPlusFragment.onViewCreated(android.view.View, android.os.Bundle):void");
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusFragment.1
            @Override // java.lang.Runnable
            public void run() {
                final List<CallAppPlusData> contactPlusItemsData = ContactPlusUtils.getContactPlusItemsData();
                CallAppPlusFragment.this.f11278d = ContactPlusUtils.a(contactPlusItemsData);
                if (CallAppPlusFragment.this.originalAdapter != null) {
                    CallAppPlusFragment.this.originalAdapter.c();
                }
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CallAppPlusFragment.this.f11277c.clear();
                        CallAppPlusFragment.this.f11277c.addAll(contactPlusItemsData);
                        CallAppPlusFragment.this.setData(CallAppPlusFragment.this.f11277c);
                        CallAppPlusFragment.this.toggleEmptyViewIfNeeded();
                    }
                });
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public void toggleEmptyViewIfNeeded() {
        super.toggleEmptyViewIfNeeded();
        if (this.f != null && !isViewEmpty()) {
            this.f.setVisibility(8);
        }
    }
}
