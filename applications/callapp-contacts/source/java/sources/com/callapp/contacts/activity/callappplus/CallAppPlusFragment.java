package com.callapp.contacts.activity.callappplus;

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
import p001a.p002a.p003a.p004a.p005a.C0004c;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusFragment.class */
public class CallAppPlusFragment extends BaseCallAppFragmentWithHint<CallAppPlusData> implements CallAppFilter {

    /* renamed from: a */
    private com.callapp.contacts.activity.interfaces.CallAppPlusFilter f20540a;

    /* renamed from: b */
    private FilterEvents f20541b;

    /* renamed from: c */
    private List<CallAppPlusData> f20542c = new ArrayList();

    /* renamed from: d */
    private Map<Integer, SectionData> f20543d;

    /* renamed from: e */
    private FrameLayout f20544e;

    /* renamed from: f */
    private StickyPromotionCallAppPlus f20545f;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/CallAppPlusFragment$CallAppPlusFilter.class */
    public class CallAppPlusFilter extends Filter {
        private CallAppPlusFilter() {
            CallAppPlusFragment.this = r4;
        }

        /* renamed from: a */
        private void m31412a(List<CallAppPlusData> list, List<Integer> list2) {
            for (CallAppPlusData callAppPlusData : CallAppPlusFragment.this.f20542c) {
                callAppPlusData.f20528b.clear();
                callAppPlusData.textHighlights.clear();
                callAppPlusData.numberMatchIndexEnd = -1;
                callAppPlusData.numberMatchIndexStart = -1;
                if (CallAppPlusFragment.this.f20540a.isAllSelected()) {
                    for (CallAppPlusData callAppPlusData2 : CallAppPlusFragment.this.f20542c) {
                        callAppPlusData2.f20528b.clear();
                        callAppPlusData2.textHighlights.clear();
                        callAppPlusData2.numberMatchIndexEnd = -1;
                        callAppPlusData2.numberMatchIndexStart = -1;
                    }
                    list.addAll(CallAppPlusFragment.this.f20542c);
                    return;
                } else if (list2.contains(Integer.valueOf(callAppPlusData.f20527a.recognizedPersonOrigin.imNameStringResId))) {
                    list.add(callAppPlusData);
                }
            }
        }

        /* renamed from: a */
        private void m31411a(List<CallAppPlusData> list, List<Integer> list2, String str) {
            for (CallAppPlusData callAppPlusData : CallAppPlusFragment.this.f20542c) {
                boolean z = CallAppPlusFragment.this.f20540a.isAllSelected() || list2.contains(Integer.valueOf(callAppPlusData.f20527a.recognizedPersonOrigin.imNameStringResId));
                String str2 = callAppPlusData.f20527a.groupName;
                boolean z2 = StringUtils.m26045b((CharSequence) callAppPlusData.displayName) && T9Helper.m30357a(callAppPlusData.displayName.toLowerCase(), callAppPlusData.textHighlights, str, org.apache.commons.lang3.StringUtils.SPACE);
                boolean z3 = false;
                if (StringUtils.m26045b((CharSequence) str2)) {
                    z3 = false;
                    if (T9Helper.m30357a(str2.toLowerCase(), callAppPlusData.f20528b, str, org.apache.commons.lang3.StringUtils.SPACE)) {
                        z3 = true;
                    }
                }
                if (!z2) {
                    callAppPlusData.textHighlights.clear();
                }
                if (!z3) {
                    callAppPlusData.f20528b.clear();
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
            List<Integer> activeFilter = CallAppPlusFragment.this.f20540a.getActiveFilter();
            if (!CollectionUtils.m26076a(activeFilter)) {
                if (StringUtils.m26059a(charSequence)) {
                    m31412a(arrayList, activeFilter);
                } else {
                    m31411a(arrayList, activeFilter, charSequence.toString());
                }
            }
            filterResults.values = arrayList;
            return filterResults;
        }

        @Override // android.widget.Filter
        protected void publishResults(CharSequence charSequence, final Filter.FilterResults filterResults) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusFragment.CallAppPlusFilter.1
                @Override // java.lang.Runnable
                public void run() {
                    CallAppPlusFragment.this.setData((List) filterResults.values);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.CallAppFilter
    /* renamed from: a */
    public final void mo26315a(String str) {
        if (this.recyclerView == null || this.recyclerAdapter == null) {
            return;
        }
        getFilter().filter(str);
        if (this.recyclerView instanceof FastScrollRecyclerView) {
            ((FastScrollRecyclerView) this.recyclerView).setFastScrollEnabled(StringUtils.m26059a((CharSequence) str));
        }
        if (!AdUtils.m27285a()) {
            if (StringUtils.m26045b((CharSequence) str)) {
                this.recyclerAdapter.clearAds();
            } else {
                this.recyclerAdapter.m31476b();
            }
        }
        this.recyclerView.m40464b(0);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    /* renamed from: a */
    public final boolean mo29775a() {
        return Activities.getNotificationListenersSettingsScreenIntent() != null && !Activities.m27661b() && Prefs.f26522fh.get().booleanValue();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getAdUnitIdsConfiguration() {
        return CallAppRemoteConfigManager.get().m28703a(CallAppRemoteConfigManager.f25633u);
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
        this.originalAdapter = new CallAppPlusAdapter((List) obj, this.f20543d, getScrollEvents());
        CallAppMoPubRecyclerAdapter m27284a = AdUtils.m27284a(getActivity(), ListsUtils.m27474a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
        this.recyclerView.m40480a(new C0004c(m27284a), 1);
        this.recyclerView.m40480a(new CallAppPlusSpaceItemDecoration(), -1);
        return m27284a;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isPartOfViewPagerActivity() {
        return false;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.f20540a = (com.callapp.contacts.activity.interfaces.CallAppPlusFilter) getActivity();
            try {
                FilterEvents filterEvents = (FilterEvents) getActivity();
                this.f20541b = filterEvents;
                filterEvents.mo30214a(this);
            } catch (ClassCastException e) {
                throw new IllegalStateException("Parent activity must implement FilterEvents");
            }
        } catch (ClassCastException e2) {
            throw new IllegalStateException("Activity must implement CallAppPlusFilter");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.f20541b.mo30213b(this);
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
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusFragment.1
            @Override // java.lang.Runnable
            public void run() {
                final List<CallAppPlusData> contactPlusItemsData = ContactPlusUtils.getContactPlusItemsData();
                CallAppPlusFragment.this.f20543d = ContactPlusUtils.m28342a(contactPlusItemsData);
                if (CallAppPlusFragment.this.originalAdapter != null) {
                    CallAppPlusFragment.this.originalAdapter.m31513c();
                }
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.CallAppPlusFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CallAppPlusFragment.this.f20542c.clear();
                        CallAppPlusFragment.this.f20542c.addAll(contactPlusItemsData);
                        CallAppPlusFragment.this.setData(CallAppPlusFragment.this.f20542c);
                        CallAppPlusFragment.this.toggleEmptyViewIfNeeded();
                    }
                });
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public void toggleEmptyViewIfNeeded() {
        super.toggleEmptyViewIfNeeded();
        if (this.f20545f == null || isViewEmpty()) {
            return;
        }
        this.f20545f.setVisibility(8);
    }
}
