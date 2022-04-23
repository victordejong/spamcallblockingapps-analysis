package com.callapp.contacts.activity.calllog;

import a.a.a.a.a.c;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.calllog.CallLogAdapter;
import com.callapp.contacts.activity.contact.list.CallLogSortType;
import com.callapp.contacts.activity.contact.list.ContactListFragmentMarker;
import com.callapp.contacts.activity.contact.list.search.ContactsClickEvents;
import com.callapp.contacts.activity.interfaces.CallLogLastSeenTimestampEventListener;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.interfaces.MultiSelectChangeListener;
import com.callapp.contacts.activity.interfaces.MultiSelectEvents;
import com.callapp.contacts.activity.interfaces.OnMissedCallCardChangeListener;
import com.callapp.contacts.activity.interfaces.OnMissedCallReminderMenuClickListener;
import com.callapp.contacts.activity.interfaces.OnSelectChangeListener;
import com.callapp.contacts.activity.marketplace.KeypadBannerViewController;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.activity.missedcall.card.MissedCallCardsHeaderListHolder;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.observers.CallAppContentObserver;
import com.callapp.contacts.observers.CallLogContentObserver;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/CallLogFragment.class */
public class CallLogFragment extends BaseCallAppFragment<List<AggregateCallLogData>> implements ContactListFragmentMarker, MultiSelectEvents, OnMissedCallCardChangeListener, OnMissedCallReminderMenuClickListener, OnSelectChangeListener, CallAppContentObserver.ContentObserverListener {

    /* renamed from: c  reason: collision with root package name */
    private boolean f11373c;

    /* renamed from: d  reason: collision with root package name */
    private MultiSelectChangeListener f11374d;
    private ContactsClickEvents f;
    private ShowKeypadPromotionListener g;

    /* renamed from: b  reason: collision with root package name */
    private Map<Integer, SectionData> f11372b = new HashMap();
    private List<AggregateCallLogData> e = new ArrayList();
    private boolean h = false;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/CallLogFragment$ShowKeypadPromotionListener.class */
    public interface ShowKeypadPromotionListener {
        void a();
    }

    static /* synthetic */ List a(CallLogFragment callLogFragment, Stack stack) {
        int i;
        ArrayList arrayList = new ArrayList(stack.size());
        Stack stack2 = (Stack) stack.clone();
        if (stack2 != null) {
            int i2 = -1;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            while (!stack2.isEmpty()) {
                int dateType = ((AggregateCallLogData) stack2.peek()).getDateType();
                if (!z && dateType == 0) {
                    callLogFragment.f11372b.put(0, new SectionData(Activities.getString(2131887907)));
                    i = 0;
                    z = true;
                    z2 = z2;
                    z3 = z3;
                } else if (z2 || dateType != 1) {
                    i = i2;
                    z = z;
                    z2 = z2;
                    z3 = z3;
                    if (!z3) {
                        i = i2;
                        z = z;
                        z2 = z2;
                        z3 = z3;
                        if (dateType == 2) {
                            callLogFragment.f11372b.put(2, new SectionData(Activities.getString(2131886388)));
                            i = 2;
                            z3 = true;
                            z2 = z2;
                            z = z;
                        }
                    }
                } else {
                    callLogFragment.f11372b.put(1, new SectionData(Activities.getString(2131888250)));
                    i = 1;
                    z2 = true;
                    z = z;
                    z3 = z3;
                }
                AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) stack2.pop();
                aggregateCallLogData.setSectionId(i);
                arrayList.add(aggregateCallLogData);
                i2 = i;
            }
        }
        callLogFragment.f11372b.put(5, new SectionData(Activities.getString(2131886387)));
        return arrayList;
    }

    public final void a() {
        this.isDataLoaded = true;
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.3
            @Override // java.lang.Runnable
            public void run() {
                Stack<AggregateCallLogData> callLog = CallLogUtils.getCallLog();
                List a2 = CallLogFragment.a(CallLogFragment.this, callLog);
                if (((CallLogSortType) Prefs.db.get()).equals(CallLogSortType.SORTED_BY_FREQ)) {
                    a2 = CallLogUtils.a(callLog);
                }
                final List list = a2;
                if (a2 == null) {
                    list = new ArrayList();
                }
                if (CallLogFragment.this.originalAdapter != null) {
                    CallLogFragment.this.originalAdapter.c();
                }
                EventBusManager.f14368a.a(CallLogLastSeenTimestampEventListener.f12937c);
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RecyclerView recyclerView;
                        int itemDecorationCount;
                        CallLogFragment.this.e.clear();
                        CallLogFragment.this.e.addAll(list);
                        CallLogFragment.this.setData(CallLogFragment.this.e);
                        CallLogFragment.this.toggleEmptyViewIfNeeded();
                        int i = 0;
                        CallLogFragment.this.viewPagerManager.a(0);
                        if (CallLogFragment.this.f11373c) {
                            ArrayList<BaseAdapterItemData> selectedContacts = CallLogFragment.this.getSelectedContacts();
                            if (selectedContacts != null) {
                                i = selectedContacts.size();
                            }
                            CallLogFragment.this.f11374d.a(i, 2131886385);
                        }
                        try {
                            recyclerView = CallLogFragment.this.recyclerView;
                            itemDecorationCount = recyclerView.getItemDecorationCount();
                        } catch (IndexOutOfBoundsException e) {
                        }
                        if (1 < itemDecorationCount) {
                            recyclerView.b(recyclerView.getItemDecorationAt(1));
                            CallLogFragment.this.recyclerView.a(new c(CallLogFragment.this.recyclerAdapter), 1);
                            return;
                        }
                        throw new IndexOutOfBoundsException("1 is an invalid index for size " + itemDecorationCount);
                    }
                });
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.OnMissedCallReminderMenuClickListener
    public void a(Phone phone) {
        if (this.originalAdapter != null) {
            CallLogAdapter callLogAdapter = (CallLogAdapter) this.originalAdapter;
            if (callLogAdapter.f11363c != null) {
                callLogAdapter.f11363c.a(phone);
            }
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.OnSelectChangeListener
    public final void b() {
        ArrayList<BaseAdapterItemData> selectedContacts = getSelectedContacts();
        this.f11374d.a(selectedContacts == null ? 0 : selectedContacts.size(), 2131886385);
    }

    @Override // com.callapp.contacts.activity.interfaces.OnMissedCallCardChangeListener
    public void b(Phone phone) {
        if (this.originalAdapter == null || getActivity() == null || !((BaseActivity) getActivity()).isForeGroundVisible()) {
            this.h = true;
            return;
        }
        this.h = false;
        CallLogAdapter callLogAdapter = (CallLogAdapter) this.originalAdapter;
        if (callLogAdapter.f11363c != null) {
            callLogAdapter.f11363c.n();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getAdUnitIdsConfiguration() {
        if (AdUtils.a(AdUtils.AdsLimitForNewUsers.CALL_LOG)) {
            return null;
        }
        return CallAppRemoteConfigManager.get().a(CallAppRemoteConfigManager.t);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return 1;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return new BaseCallAppFragment.EmptyViewData(2131231546, getString(2131886384), getString(2131886383));
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getExperimentRemoteConfigName() {
        return "CallLogAdExperiments";
    }

    @Override // com.callapp.contacts.activity.contact.list.ContactListFragmentMarker
    public int getFragmentIconResId() {
        return 2131231784;
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[]{EventBusManager.CallAppDataType.RECENT_CALLS.ordinal(), EventBusManager.CallAppDataType.CONTACTS.ordinal(), EventBusManager.CallAppDataType.SIM_CHANGED.ordinal(), EventBusManager.CallAppDataType.SPAM_CALL_UNREAD_COUNT_CHANGED.ordinal(), EventBusManager.CallAppDataType.SUPER_SKIN_CHANGED.ordinal()};
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getLayoutResId() {
        return 2131558665;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(List<AggregateCallLogData> list) {
        this.originalAdapter = new CallLogAdapter(list, this.f11372b, getScrollEvents(), this.f11373c, this.storeItemAssetManager, this, new ContactItemViewEvents() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.1
            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
            public final void a() {
                CallLogFragment.this.f.d(0);
            }

            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
            public final void b() {
                CallLogFragment.this.f.d(1);
            }
        }, new CallLogAdapter.StickyBannerEvents() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.2
            @Override // com.callapp.contacts.activity.calllog.CallLogAdapter.StickyBannerEvents
            public final void a() {
                Activities.a((Activity) CallLogFragment.this.getActivity(), true, new ActivityResult() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.2.1
                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                        Prefs.go.set(Boolean.FALSE);
                        PhoneManager.get().e();
                    }
                });
            }
        });
        CallAppMoPubRecyclerAdapter a2 = AdUtils.a(getActivity(), ListsUtils.a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
        this.recyclerView.a(new c(a2), 1);
        return a2;
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectEvents
    public ArrayList<BaseAdapterItemData> getSelectedContacts() {
        ArrayList<BaseAdapterItemData> arrayList = new ArrayList<>();
        for (AggregateCallLogData aggregateCallLogData : this.e) {
            if (aggregateCallLogData.isChecked()) {
                arrayList.add(aggregateCallLogData);
            }
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isViewEmpty() {
        return this.recyclerView != null && CollectionUtils.b((Collection) this.data);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean notifyItemChangedEvent(DataChangedInfo dataChangedInfo) {
        if (this.recyclerAdapter == null || !this.recyclerAdapter.isDataReady() || !isCurrentType(dataChangedInfo.getDataType())) {
            return false;
        }
        CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.4
            @Override // java.lang.Runnable
            public void run() {
                if (CallLogFragment.this.recyclerAdapter != null && CallLogFragment.this.recyclerAdapter.isDataReady()) {
                    CallLogFragment.this.recyclerAdapter.notifyItemRangeChanged(0, ((List) CallLogFragment.this.data).size(), Boolean.TRUE);
                }
            }
        });
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getActivity() instanceof MultiSelectChangeListener) {
            this.f11374d = (MultiSelectChangeListener) getActivity();
            if (getActivity() instanceof ContactsClickEvents) {
                this.f = (ContactsClickEvents) getActivity();
                if (getActivity() instanceof ShowKeypadPromotionListener) {
                    this.g = (ShowKeypadPromotionListener) getActivity();
                    CallLogContentObserver.c(this);
                    return;
                }
                throw new IllegalStateException("Parent activity must implement ShowKeypadPromotionListener");
            }
            throw new IllegalStateException("Parent activity must implement ContactsClickEvents");
        }
        throw new IllegalStateException("Parent activity must implement MultiSelectChangeListener");
    }

    @Override // com.callapp.contacts.observers.CallAppContentObserver.ContentObserverListener
    public void onContentChanged() {
        this.isDataLoaded = false;
        refreshData();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EventBusManager.f14368a.a(OnMissedCallReminderMenuClickListener.f12954a, this);
        EventBusManager.f14368a.a(OnMissedCallCardChangeListener.f12953a, this);
        MissedCallManager.b();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBusManager.f14368a.b(OnMissedCallReminderMenuClickListener.f12954a, this);
        EventBusManager.f14368a.b(OnMissedCallCardChangeListener.f12953a, this);
        if (this.originalAdapter != null) {
            CallLogAdapter callLogAdapter = (CallLogAdapter) this.originalAdapter;
            if (callLogAdapter.f11363c != null) {
                MissedCallCardsHeaderListHolder missedCallCardsHeaderListHolder = callLogAdapter.f11363c;
                if (missedCallCardsHeaderListHolder.u != null) {
                    missedCallCardsHeaderListHolder.u.cancel();
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        FirstTimeExperienceCallLog.get().a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        CallLogContentObserver.d(this);
        EventBusManager.f14368a.a(CallLogLastSeenTimestampEventListener.f12937c);
        super.onDetach();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.h) {
            b((Phone) null);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        ShowKeypadPromotionListener showKeypadPromotionListener;
        super.onViewCreated(view, bundle);
        this.recyclerView.setHasFixedSize(true);
        if (this.viewPagerManager.getCurrentPage() == 0) {
            refreshData();
        }
        FirstTimeExperienceCallLog firstTimeExperienceCallLog = FirstTimeExperienceCallLog.get();
        if (FirstTimeExperienceCallLog.d()) {
            if (firstTimeExperienceCallLog.f11397b == null) {
                firstTimeExperienceCallLog.f11397b = new FirstTimeExperienceCallLogViewManager();
            }
            FirstTimeExperienceCallLogViewManager firstTimeExperienceCallLogViewManager = firstTimeExperienceCallLog.f11397b;
            firstTimeExperienceCallLogViewManager.f11398a = ViewUtils.b(view.findViewById(2131362827));
            firstTimeExperienceCallLogViewManager.f11398a.setFocusableInTouchMode(true);
            firstTimeExperienceCallLogViewManager.f11398a.setBackgroundColor(ThemeUtils.getColor(2131099891));
            firstTimeExperienceCallLogViewManager.k = firstTimeExperienceCallLogViewManager.f11398a.findViewById(2131362126);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) firstTimeExperienceCallLogViewManager.k.getLayoutParams();
            marginLayoutParams.bottomMargin = (int) (marginLayoutParams.bottomMargin + Activities.a(8.0f));
            firstTimeExperienceCallLogViewManager.n = (TextView) firstTimeExperienceCallLogViewManager.f11398a.findViewById(2131362994);
            firstTimeExperienceCallLogViewManager.l = (TextView) firstTimeExperienceCallLogViewManager.f11398a.findViewById(2131364177);
            firstTimeExperienceCallLogViewManager.m = (TextView) firstTimeExperienceCallLogViewManager.f11398a.findViewById(2131364178);
            firstTimeExperienceCallLogViewManager.l.setText(Activities.getString(2131886909));
            firstTimeExperienceCallLogViewManager.l.setTextColor(ThemeUtils.getColor(2131100140));
            firstTimeExperienceCallLogViewManager.m.setTextColor(ThemeUtils.getColor(2131100140));
            View view2 = firstTimeExperienceCallLogViewManager.f11398a;
            firstTimeExperienceCallLogViewManager.f11399b = view2.findViewById(2131362407);
            firstTimeExperienceCallLogViewManager.f11400c = view2.findViewById(2131362410);
            firstTimeExperienceCallLogViewManager.f11401d = view2.findViewById(2131362413);
            firstTimeExperienceCallLogViewManager.e = firstTimeExperienceCallLogViewManager.f11399b.findViewById(2131362406);
            firstTimeExperienceCallLogViewManager.a(firstTimeExperienceCallLogViewManager.e, 0.85f);
            firstTimeExperienceCallLogViewManager.f = firstTimeExperienceCallLogViewManager.f11400c.findViewById(2131362409);
            firstTimeExperienceCallLogViewManager.a(firstTimeExperienceCallLogViewManager.f, 0.4f);
            firstTimeExperienceCallLogViewManager.g = firstTimeExperienceCallLogViewManager.f11401d.findViewById(2131362412);
            firstTimeExperienceCallLogViewManager.a(firstTimeExperienceCallLogViewManager.g, 0.6f);
            firstTimeExperienceCallLogViewManager.h = firstTimeExperienceCallLogViewManager.f11399b.findViewById(2131362408);
            firstTimeExperienceCallLogViewManager.i = firstTimeExperienceCallLogViewManager.f11400c.findViewById(2131362411);
            firstTimeExperienceCallLogViewManager.j = firstTimeExperienceCallLogViewManager.f11401d.findViewById(2131362414);
            int color = ThemeUtils.getColor(2131099686);
            firstTimeExperienceCallLogViewManager.f11399b.setBackgroundColor(color);
            firstTimeExperienceCallLogViewManager.f11400c.setBackgroundColor(color);
            firstTimeExperienceCallLogViewManager.f11401d.setBackgroundColor(color);
            View findViewById = firstTimeExperienceCallLogViewManager.f11398a.findViewById(2131362912);
            findViewById.setBackgroundColor(ThemeUtils.getColor(2131099784));
            TextView textView = (TextView) findViewById.findViewById(2131362911);
            textView.setText(Activities.getString(2131886946));
            textView.setOnClickListener(firstTimeExperienceCallLogViewManager.getFinishedFirstTimeExperienceListener());
        }
        if (KeypadBannerViewController.a() && (showKeypadPromotionListener = this.g) != null) {
            showKeypadPromotionListener.a();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        if (!this.isDataLoaded && shouldRefreshData()) {
            a();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectEvents
    public void setMultiSelectModeEnable(boolean z) {
        if (this.f11373c != z) {
            this.f11373c = z;
            if (this.originalAdapter != null) {
                ((CallLogAdapter) this.originalAdapter).setMultiSelectMode(z);
                if (!z) {
                    for (AggregateCallLogData aggregateCallLogData : this.e) {
                        aggregateCallLogData.setChecked(false);
                    }
                    this.originalAdapter.notifyDataSetChanged();
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean shouldEnableFastScroll() {
        return true;
    }
}
