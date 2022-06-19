package com.callapp.contacts.activity.calllog;

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
import p001a.p002a.p003a.p004a.p005a.C0004c;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/CallLogFragment.class */
public class CallLogFragment extends BaseCallAppFragment<List<AggregateCallLogData>> implements ContactListFragmentMarker, MultiSelectEvents, OnMissedCallCardChangeListener, OnMissedCallReminderMenuClickListener, OnSelectChangeListener, CallAppContentObserver.ContentObserverListener {

    /* renamed from: c */
    private boolean f20698c;

    /* renamed from: d */
    private MultiSelectChangeListener f20699d;

    /* renamed from: f */
    private ContactsClickEvents f20701f;

    /* renamed from: g */
    private ShowKeypadPromotionListener f20702g;

    /* renamed from: b */
    private Map<Integer, SectionData> f20697b = new HashMap();

    /* renamed from: e */
    private List<AggregateCallLogData> f20700e = new ArrayList();

    /* renamed from: h */
    private boolean f20703h = false;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/CallLogFragment$ShowKeypadPromotionListener.class */
    public interface ShowKeypadPromotionListener {
        /* renamed from: a */
        void mo30651a();
    }

    /* renamed from: a */
    static /* synthetic */ List m31365a(CallLogFragment callLogFragment, Stack stack) {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        ArrayList arrayList = new ArrayList(stack.size());
        Stack stack2 = (Stack) stack.clone();
        if (stack2 != null) {
            int i2 = -1;
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            while (true) {
                boolean z7 = z6;
                if (stack2.isEmpty()) {
                    break;
                }
                int dateType = ((AggregateCallLogData) stack2.peek()).getDateType();
                if (!z4 && dateType == 0) {
                    callLogFragment.f20697b.put(0, new SectionData(Activities.getString(2131887907)));
                    i = 0;
                    z3 = true;
                    z2 = z5;
                    z = z7;
                } else if (z5 || dateType != 1) {
                    i = i2;
                    z3 = z4;
                    z2 = z5;
                    z = z7;
                    if (!z7) {
                        i = i2;
                        z3 = z4;
                        z2 = z5;
                        z = z7;
                        if (dateType == 2) {
                            callLogFragment.f20697b.put(2, new SectionData(Activities.getString(2131886388)));
                            i = 2;
                            z = true;
                            z2 = z5;
                            z3 = z4;
                        }
                    }
                } else {
                    callLogFragment.f20697b.put(1, new SectionData(Activities.getString(2131888250)));
                    i = 1;
                    z2 = true;
                    z3 = z4;
                    z = z7;
                }
                AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) stack2.pop();
                aggregateCallLogData.setSectionId(i);
                arrayList.add(aggregateCallLogData);
                i2 = i;
                z4 = z3;
                z5 = z2;
                z6 = z;
            }
        }
        callLogFragment.f20697b.put(5, new SectionData(Activities.getString(2131886387)));
        return arrayList;
    }

    /* renamed from: a */
    public final void m31367a() {
        this.isDataLoaded = true;
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.3
            @Override // java.lang.Runnable
            public void run() {
                Stack<AggregateCallLogData> callLog = CallLogUtils.getCallLog();
                Stack<AggregateCallLogData> m31365a = CallLogFragment.m31365a(CallLogFragment.this, callLog);
                if (((CallLogSortType) Prefs.f26410db.get()).equals(CallLogSortType.SORTED_BY_FREQ)) {
                    m31365a = CallLogUtils.m27563a(callLog);
                }
                ArrayList arrayList = m31365a;
                if (m31365a == null) {
                    arrayList = new ArrayList();
                }
                if (CallLogFragment.this.originalAdapter != null) {
                    CallLogFragment.this.originalAdapter.m31513c();
                }
                EventBusManager.f25138a.m29049a(CallLogLastSeenTimestampEventListener.f23110c);
                final List list = arrayList;
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RecyclerView recyclerView;
                        int itemDecorationCount;
                        CallLogFragment.this.f20700e.clear();
                        CallLogFragment.this.f20700e.addAll(list);
                        CallLogFragment.this.setData(CallLogFragment.this.f20700e);
                        CallLogFragment.this.toggleEmptyViewIfNeeded();
                        int i = 0;
                        CallLogFragment.this.viewPagerManager.mo30518a(0);
                        if (CallLogFragment.this.f20698c) {
                            ArrayList<BaseAdapterItemData> selectedContacts = CallLogFragment.this.getSelectedContacts();
                            if (selectedContacts != null) {
                                i = selectedContacts.size();
                            }
                            CallLogFragment.this.f20699d.mo30205a(i, 2131886385);
                        }
                        try {
                            recyclerView = CallLogFragment.this.recyclerView;
                            itemDecorationCount = recyclerView.getItemDecorationCount();
                        } catch (IndexOutOfBoundsException e) {
                        }
                        if (1 >= itemDecorationCount) {
                            throw new IndexOutOfBoundsException("1 is an invalid index for size " + itemDecorationCount);
                        }
                        recyclerView.m40460b(recyclerView.getItemDecorationAt(1));
                        CallLogFragment.this.recyclerView.m40480a(new C0004c(CallLogFragment.this.recyclerAdapter), 1);
                    }
                });
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.OnMissedCallReminderMenuClickListener
    /* renamed from: a */
    public void mo30202a(Phone phone) {
        if (this.originalAdapter != null) {
            CallLogAdapter callLogAdapter = (CallLogAdapter) this.originalAdapter;
            if (callLogAdapter.f20680c == null) {
                return;
            }
            callLogAdapter.f20680c.m29794a(phone);
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.OnSelectChangeListener
    /* renamed from: b */
    public final void mo30201b() {
        ArrayList<BaseAdapterItemData> selectedContacts = getSelectedContacts();
        this.f20699d.mo30205a(selectedContacts == null ? 0 : selectedContacts.size(), 2131886385);
    }

    @Override // com.callapp.contacts.activity.interfaces.OnMissedCallCardChangeListener
    /* renamed from: b */
    public void mo28085b(Phone phone) {
        if (this.originalAdapter == null || getActivity() == null || !((BaseActivity) getActivity()).isForeGroundVisible()) {
            this.f20703h = true;
            return;
        }
        this.f20703h = false;
        CallLogAdapter callLogAdapter = (CallLogAdapter) this.originalAdapter;
        if (callLogAdapter.f20680c == null) {
            return;
        }
        callLogAdapter.f20680c.m29788n();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getAdUnitIdsConfiguration() {
        if (AdUtils.m27275a(AdUtils.AdsLimitForNewUsers.CALL_LOG)) {
            return null;
        }
        return CallAppRemoteConfigManager.get().m28703a(CallAppRemoteConfigManager.f25632t);
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
        this.originalAdapter = new CallLogAdapter(list, this.f20697b, getScrollEvents(), this.f20698c, this.storeItemAssetManager, this, new ContactItemViewEvents() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.1
            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
            /* renamed from: a */
            public final void mo29814a() {
                CallLogFragment.this.f20701f.mo30422d(0);
            }

            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
            /* renamed from: b */
            public final void mo29813b() {
                CallLogFragment.this.f20701f.mo30422d(1);
            }
        }, new CallLogAdapter.StickyBannerEvents() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.2
            @Override // com.callapp.contacts.activity.calllog.CallLogAdapter.StickyBannerEvents
            /* renamed from: a */
            public final void mo31350a() {
                Activities.m27687a((Activity) CallLogFragment.this.getActivity(), true, new ActivityResult() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.2.1
                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                        Prefs.f26582go.set(Boolean.FALSE);
                        PhoneManager.get().m28226e();
                    }
                });
            }
        });
        CallAppMoPubRecyclerAdapter m27284a = AdUtils.m27284a(getActivity(), ListsUtils.m27474a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
        this.recyclerView.m40480a(new C0004c(m27284a), 1);
        return m27284a;
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectEvents
    public ArrayList<BaseAdapterItemData> getSelectedContacts() {
        ArrayList<BaseAdapterItemData> arrayList = new ArrayList<>();
        for (AggregateCallLogData aggregateCallLogData : this.f20700e) {
            if (aggregateCallLogData.isChecked()) {
                arrayList.add(aggregateCallLogData);
            }
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isViewEmpty() {
        return this.recyclerView != null && CollectionUtils.m26068b((Collection) this.data);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean notifyItemChangedEvent(DataChangedInfo dataChangedInfo) {
        if (this.recyclerAdapter == null || !this.recyclerAdapter.isDataReady() || !isCurrentType(dataChangedInfo.getDataType())) {
            return false;
        }
        CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.calllog.CallLogFragment.4
            @Override // java.lang.Runnable
            public void run() {
                if (CallLogFragment.this.recyclerAdapter == null || !CallLogFragment.this.recyclerAdapter.isDataReady()) {
                    return;
                }
                CallLogFragment.this.recyclerAdapter.notifyItemRangeChanged(0, ((List) CallLogFragment.this.data).size(), Boolean.TRUE);
            }
        });
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getActivity() instanceof MultiSelectChangeListener) {
            this.f20699d = (MultiSelectChangeListener) getActivity();
            if (!(getActivity() instanceof ContactsClickEvents)) {
                throw new IllegalStateException("Parent activity must implement ContactsClickEvents");
            }
            this.f20701f = (ContactsClickEvents) getActivity();
            if (!(getActivity() instanceof ShowKeypadPromotionListener)) {
                throw new IllegalStateException("Parent activity must implement ShowKeypadPromotionListener");
            }
            this.f20702g = (ShowKeypadPromotionListener) getActivity();
            CallLogContentObserver.m28091c(this);
            return;
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
        EventBusManager.f25138a.m29048a(OnMissedCallReminderMenuClickListener.f23128a, this);
        EventBusManager.f25138a.m29048a(OnMissedCallCardChangeListener.f23127a, this);
        MissedCallManager.m29820b();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBusManager.f25138a.m29045b(OnMissedCallReminderMenuClickListener.f23128a, this);
        EventBusManager.f25138a.m29045b(OnMissedCallCardChangeListener.f23127a, this);
        if (this.originalAdapter != null) {
            CallLogAdapter callLogAdapter = (CallLogAdapter) this.originalAdapter;
            if (callLogAdapter.f20680c == null) {
                return;
            }
            MissedCallCardsHeaderListHolder missedCallCardsHeaderListHolder = callLogAdapter.f20680c;
            if (missedCallCardsHeaderListHolder.f23935u == null) {
                return;
            }
            missedCallCardsHeaderListHolder.f23935u.cancel();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        FirstTimeExperienceCallLog.get().m31330a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        CallLogContentObserver.m28088d(this);
        EventBusManager.f25138a.m29049a(CallLogLastSeenTimestampEventListener.f23110c);
        super.onDetach();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f20703h) {
            mo28085b((Phone) null);
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
        if (FirstTimeExperienceCallLog.m31327d()) {
            if (firstTimeExperienceCallLog.f20747b == null) {
                firstTimeExperienceCallLog.f20747b = new FirstTimeExperienceCallLogViewManager();
            }
            FirstTimeExperienceCallLogViewManager firstTimeExperienceCallLogViewManager = firstTimeExperienceCallLog.f20747b;
            firstTimeExperienceCallLogViewManager.f20748a = ViewUtils.m27302b(view.findViewById(2131362827));
            firstTimeExperienceCallLogViewManager.f20748a.setFocusableInTouchMode(true);
            firstTimeExperienceCallLogViewManager.f20748a.setBackgroundColor(ThemeUtils.getColor(2131099891));
            firstTimeExperienceCallLogViewManager.f20758k = firstTimeExperienceCallLogViewManager.f20748a.findViewById(2131362126);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) firstTimeExperienceCallLogViewManager.f20758k.getLayoutParams();
            marginLayoutParams.bottomMargin = (int) (marginLayoutParams.bottomMargin + Activities.m27699a(8.0f));
            firstTimeExperienceCallLogViewManager.f20761n = (TextView) firstTimeExperienceCallLogViewManager.f20748a.findViewById(2131362994);
            firstTimeExperienceCallLogViewManager.f20759l = (TextView) firstTimeExperienceCallLogViewManager.f20748a.findViewById(2131364177);
            firstTimeExperienceCallLogViewManager.f20760m = (TextView) firstTimeExperienceCallLogViewManager.f20748a.findViewById(2131364178);
            firstTimeExperienceCallLogViewManager.f20759l.setText(Activities.getString(2131886909));
            firstTimeExperienceCallLogViewManager.f20759l.setTextColor(ThemeUtils.getColor(2131100140));
            firstTimeExperienceCallLogViewManager.f20760m.setTextColor(ThemeUtils.getColor(2131100140));
            View view2 = firstTimeExperienceCallLogViewManager.f20748a;
            firstTimeExperienceCallLogViewManager.f20749b = view2.findViewById(2131362407);
            firstTimeExperienceCallLogViewManager.f20750c = view2.findViewById(2131362410);
            firstTimeExperienceCallLogViewManager.f20751d = view2.findViewById(2131362413);
            firstTimeExperienceCallLogViewManager.f20752e = firstTimeExperienceCallLogViewManager.f20749b.findViewById(2131362406);
            firstTimeExperienceCallLogViewManager.m31323a(firstTimeExperienceCallLogViewManager.f20752e, 0.85f);
            firstTimeExperienceCallLogViewManager.f20753f = firstTimeExperienceCallLogViewManager.f20750c.findViewById(2131362409);
            firstTimeExperienceCallLogViewManager.m31323a(firstTimeExperienceCallLogViewManager.f20753f, 0.4f);
            firstTimeExperienceCallLogViewManager.f20754g = firstTimeExperienceCallLogViewManager.f20751d.findViewById(2131362412);
            firstTimeExperienceCallLogViewManager.m31323a(firstTimeExperienceCallLogViewManager.f20754g, 0.6f);
            firstTimeExperienceCallLogViewManager.f20755h = firstTimeExperienceCallLogViewManager.f20749b.findViewById(2131362408);
            firstTimeExperienceCallLogViewManager.f20756i = firstTimeExperienceCallLogViewManager.f20750c.findViewById(2131362411);
            firstTimeExperienceCallLogViewManager.f20757j = firstTimeExperienceCallLogViewManager.f20751d.findViewById(2131362414);
            int color = ThemeUtils.getColor(2131099686);
            firstTimeExperienceCallLogViewManager.f20749b.setBackgroundColor(color);
            firstTimeExperienceCallLogViewManager.f20750c.setBackgroundColor(color);
            firstTimeExperienceCallLogViewManager.f20751d.setBackgroundColor(color);
            View findViewById = firstTimeExperienceCallLogViewManager.f20748a.findViewById(2131362912);
            findViewById.setBackgroundColor(ThemeUtils.getColor(2131099784));
            TextView textView = (TextView) findViewById.findViewById(2131362911);
            textView.setText(Activities.getString(2131886946));
            textView.setOnClickListener(firstTimeExperienceCallLogViewManager.getFinishedFirstTimeExperienceListener());
        }
        if (!KeypadBannerViewController.m30102a() || (showKeypadPromotionListener = this.f20702g) == null) {
            return;
        }
        showKeypadPromotionListener.mo30651a();
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        if (this.isDataLoaded || !shouldRefreshData()) {
            return;
        }
        m31367a();
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectEvents
    public void setMultiSelectModeEnable(boolean z) {
        if (this.f20698c != z) {
            this.f20698c = z;
            if (this.originalAdapter == null) {
                return;
            }
            ((CallLogAdapter) this.originalAdapter).setMultiSelectMode(z);
            if (z) {
                return;
            }
            for (AggregateCallLogData aggregateCallLogData : this.f20700e) {
                aggregateCallLogData.setChecked(false);
            }
            this.originalAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean shouldEnableFastScroll() {
        return true;
    }
}
