package com.callapp.contacts.activity.records;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.Animation;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.q;
import androidx.fragment.app.s;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseMultiSelectListAdapter;
import com.callapp.contacts.activity.base.BaseMultiSelectListFragment;
import com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.details.presenter.callbarpresenter.CallBarPresenter;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.contact.list.ViewPagerManager;
import com.callapp.contacts.activity.interfaces.CallRecordChangedListener;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.interfaces.OnBadgeNotificationDataChangeListener;
import com.callapp.contacts.activity.interfaces.SearchBarFilter;
import com.callapp.contacts.activity.interfaces.SearchBarFilterEvents;
import com.callapp.contacts.activity.records.AllRecordingsFragment;
import com.callapp.contacts.activity.records.CallRecordsActivity;
import com.callapp.contacts.activity.settings.SettingsActivity;
import com.callapp.contacts.api.helper.backup.BackupUtils;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.model.objectbox.FastCacheData;
import com.callapp.contacts.popup.contact.AdapterIconAndText;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.callrecorder.AccessibilityServiceDialog;
import com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderFactory;
import com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderWelcome;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.recorder.loader.CallRecorderLoader;
import com.callapp.contacts.recorder.recordertest.RecorderTestDataManager;
import com.callapp.contacts.recorder.recordertest.RecorderTestFragment;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.Fragments;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.TopBarUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.InterstitialLoaderLifecycle;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.callapp.contacts.widget.SearchAnimationToolbar;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity.class */
public class CallRecordsActivity extends BaseSwipeableActivity implements BaseMultiSelectListAdapter.MultiSelectEvents, ViewPagerManager, SearchBarFilterEvents, AllRecordingsFragment.AccessibilityStickyClicked, RecordsActivityActions, RecorderTestFragment.RecorderTestFragmentEvents, SearchAnimationToolbar.OnSearchQueryChangedListener {
    private InterstitialLoaderLifecycle e;
    private String f;
    private List<CallRecorder> h;
    private List<CallRecorder> j;
    private List<CallRecorder> k;
    private String l;
    private Menu n;

    /* renamed from: d  reason: collision with root package name */
    private SearchRecordsFragment f13497d = new SearchRecordsFragment();

    /* renamed from: a  reason: collision with root package name */
    final String f13496a = RecorderTestFragment.class.getSimpleName();
    private Set<SearchBarFilter> g = new HashSet();
    private CallRecordChangedListener m = new CallRecordChangedListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.1
        @Override // com.callapp.contacts.activity.interfaces.CallRecordChangedListener
        public final void a() {
            CallRecordsActivity.a(CallRecordsActivity.this);
        }
    };
    private boolean o = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.records.CallRecordsActivity$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$3.class */
    public static final class AnonymousClass3 implements DialogPopup.IDialogOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f13502a;

        AnonymousClass3(Activity activity) {
            this.f13502a = activity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(Activity activity, Activity activity2, int i, int i2, Intent intent) {
            PhoneManager.get().e();
            if (i2 == -1 && PhoneManager.get().isDefaultPhoneApp()) {
                CallRecordsActivity.d(activity);
            } else if (CollectionUtils.b(CallRecorderManager.get().getAllRecords())) {
                CallRecordsActivity.a((Context) activity);
            }
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public final void onClickListener(Activity activity) {
            if (Build.VERSION.SDK_INT >= 23 && !PhoneManager.get().isDefaultPhoneApp()) {
                final Activity activity2 = this.f13502a;
                Activities.a(activity2, true, new ActivityResult() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$3$uz6JYnYHT5WdBD244pz0rfWU408
                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public final void onActivityResult(Activity activity3, int i, int i2, Intent intent) {
                        CallRecordsActivity.AnonymousClass3.a(activity2, activity3, i, i2, intent);
                    }
                });
            } else if (CallRecorderManager.get().isTermsAccepted()) {
                AnalyticsManager.get().a(Constants.PERMISSIONS, "Recording get permission popup action", "Accept");
                CallRecordsActivity.b(this.f13502a);
            }
            EventBusManager.f14368a.a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED, false);
        }
    }

    /* renamed from: com.callapp.contacts.activity.records.CallRecordsActivity$7  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$7.class */
    class AnonymousClass7 implements AdapterText.AdapterEvents {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DialogList f13506a;

        /* renamed from: com.callapp.contacts.activity.records.CallRecordsActivity$7$1  reason: invalid class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$7$1.class */
        class AnonymousClass1 extends Task {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ActionDoneListener f13508a;

            AnonymousClass1(ActionDoneListener actionDoneListener) {
                this.f13508a = actionDoneListener;
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                PopupManager.get().a(CallRecordsActivity.this, new DialogSimpleMessage(Activities.getString(2131887860), Activities.getString(2131887000), Activities.getString(2131886153), Activities.getString(2131886505), ThemeUtils.getColor(2131100108), false, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.7.1.1
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.7.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                CallRecorderManager.get().a(CallRecordsActivity.this.k, AnonymousClass1.this.f13508a);
                            }
                        });
                    }
                }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.7.1.2
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        if (AnonymousClass1.this.f13508a != null) {
                            AnonymousClass1.this.f13508a.a(false);
                        }
                    }
                }, null));
            }
        }

        AnonymousClass7(DialogList dialogList) {
            this.f13506a = dialogList;
        }

        @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
        public void onRowClicked(int i) {
            this.f13506a.dismiss();
            switch (i) {
                case 2131886292:
                    BackupUtils.a("record");
                    return;
                case 2131886403:
                    if (CollectionUtils.a(CallRecordsActivity.this.h) || (CallRecordsActivity.this.f11168c.getCurrentItem() == 1 && CollectionUtils.a(CallRecordsActivity.this.j))) {
                        FeedbackManager.get().a(Activities.getString(2131886419), (Integer) null);
                        return;
                    } else {
                        CallRecordsActivity.this.onMultiSelectModeToggled(true, 0);
                        return;
                    }
                case 2131887715:
                    Intent putExtra = new Intent(CallAppApplication.get(), SettingsActivity.class).putExtra("call_recorder_settings", true);
                    putExtra.putExtra("show_call_recorder_permission", true);
                    Activities.a(CallRecordsActivity.this, putExtra);
                    return;
                case 2131887860:
                    if (CollectionUtils.a(CallRecordsActivity.this.k)) {
                        FeedbackManager.get().a(Activities.getString(2131886419), (Integer) null);
                        return;
                    } else {
                        new AnonymousClass1(new StarUnstarActionDoneListener()).execute();
                        return;
                    }
                case 2131887886:
                    CallRecordsActivity.this.b(true);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderDialogWelcomeDialogDismissListener.class */
    public static class CallRecorderDialogWelcomeDialogDismissListener implements DialogPopup.IDialogSimpleListener {
        private CallRecorderDialogWelcomeDialogDismissListener() {
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
        public final void a(DialogPopup dialogPopup) {
            Activity activity;
            if (!CallRecorderManager.get().isTermsAccepted() && (activity = dialogPopup.getActivity()) != null) {
                activity.finish();
            }
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
        public final void b(DialogPopup dialogPopup) {
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderWelcomeDialogListener.class */
    public static class CallRecorderWelcomeDialogListener implements DialogPopup.IDialogOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final Boolean f13517a;

        CallRecorderWelcomeDialogListener(Boolean bool) {
            this.f13517a = bool;
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public void onClickListener(Activity activity) {
            if (!this.f13517a.booleanValue()) {
                AnalyticsManager.get().a(Constants.CALL_RECORDER, "Get permission popup action", "Decline");
                activity.finish();
            } else if (!CallRecorderManager.get().isTermsAccepted()) {
                activity.finish();
            } else {
                AnalyticsManager.get().a(Constants.CALL_RECORDER, "Get permission popup action", "Accept");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener.class */
    class StarUnstarActionDoneListener implements ActionDoneListener {
        private StarUnstarActionDoneListener() {
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a() {
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        public final void a(final boolean z) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.StarUnstarActionDoneListener.1
                @Override // java.lang.Runnable
                public void run() {
                    if (z) {
                        CallRecordsActivity.a(CallRecordsActivity.this);
                    }
                }
            });
        }
    }

    private ActionBar a(int i, String str) {
        ActionBar a2 = TopBarUtils.a(this, getSupportActionBar(), TopBarUtils.TopBarTitle.TITLE_TOP_BAR, i);
        TopBarUtils.a(a2, str);
        return a2;
    }

    public static void a(final Activity activity) {
        if (!CallRecorderManager.get().isTermsAccepted()) {
            Prefs.ej.set(new Date());
            d(activity);
        } else if (Build.VERSION.SDK_INT < 23 || PhoneManager.get().isDefaultSystemPhoneApp()) {
            a((Context) activity);
        } else {
            Activities.a(activity, true, new ActivityResult() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.2
                @Override // com.callapp.contacts.manager.popup.ActivityResult
                public final void onActivityResult(Activity activity2, int i, int i2, Intent intent) {
                    PhoneManager.get().e();
                    if (i2 == -1 && PhoneManager.get().isDefaultPhoneApp()) {
                        Intent intent2 = new Intent(CallAppApplication.get(), SettingsActivity.class);
                        intent2.putExtra("show_call_recorder_permission", true);
                        intent2.putExtra("call_recorder_settings", true);
                        Activities.b(CallAppApplication.get(), intent2);
                    } else if (CollectionUtils.b(CallRecorderManager.get().getAllRecords())) {
                        CallRecordsActivity.a((Context) activity);
                    }
                }
            });
        }
    }

    public static void a(Context context) {
        Activities.b(context, new Intent(context, CallRecordsActivity.class));
    }

    static /* synthetic */ void a(CallRecordsActivity callRecordsActivity) {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.11
            @Override // java.lang.Runnable
            public void run() {
                CallRecordsActivity.this.f();
                EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL_RECORDERS, false);
            }
        });
    }

    private void a(List<CallRecorder> list) {
        MemoryContactItem memoryContactItem;
        HashSet hashSet = new HashSet();
        for (CallRecorder callRecorder : list) {
            if (StringUtils.a((CharSequence) callRecorder.displayName) && callRecorder.getContactId() > 0) {
                hashSet.add(Long.valueOf(callRecorder.getContactId()));
            }
        }
        Map<Long, MemoryContactItem> a2 = ContactUtils.a(hashSet);
        for (CallRecorder callRecorder2 : list) {
            if (StringUtils.a((CharSequence) callRecorder2.displayName) && callRecorder2.getContactId() > 0 && (memoryContactItem = a2.get(Long.valueOf(callRecorder2.getContactId()))) != null) {
                callRecorder2.displayName = memoryContactItem.displayName;
            }
            if (StringUtils.a((CharSequence) callRecorder2.displayName) && CallLogUtils.b(callRecorder2.getPhoneText())) {
                callRecorder2.displayName = this.l;
            }
        }
    }

    private void a(boolean z) {
        if (z) {
            ((AppBarLayout.LayoutParams) getSearchAnimationToolbar().getLayoutParams()).f30214a = 21;
        } else {
            ((AppBarLayout.LayoutParams) getSearchAnimationToolbar().getLayoutParams()).f30214a = 4;
        }
    }

    private void b(int i) {
        MenuItem findItem = this.n.findItem(i);
        if (findItem != null) {
            findItem.setVisible(false);
        }
    }

    static /* synthetic */ void b(final Activity activity) {
        if (Build.VERSION.SDK_INT < 29 || Activities.isCallAppAccessibilityServiceEnabled()) {
            a((Context) activity);
            return;
        }
        PopupManager.get().a(activity, new AccessibilityServiceDialog(new PopupDoneListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.4
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public final void popupDone(boolean z) {
                CallRecordsActivity.a((Context) activity);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        s a2 = getSupportFragmentManager().a();
        RecorderTestFragment recorderTestFragment = (RecorderTestFragment) getSupportFragmentManager().a(this.f13496a);
        if (z) {
            getSearchContainer().setVisibility(0);
            if (recorderTestFragment == null) {
                RecorderTestFragment recorderTestFragment2 = new RecorderTestFragment();
                if (!recorderTestFragment2.isAdded() && !Fragments.a(getSupportFragmentManager(), recorderTestFragment2.getClass().getSimpleName())) {
                    a2.a(2131363757, recorderTestFragment2, this.f13496a).e();
                }
                a((AnimationListenerAdapter) null);
                b(2131363271);
                b(2131363270);
                ActionBar a3 = a(2131558431, Activities.getString(2131887886));
                if (a3 != null) {
                    View findViewById = a3.b().findViewById(2131361943);
                    ((TextView) findViewById.findViewById(2131361942)).setText(Activities.getString(2131887519));
                    findViewById.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.8
                        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                        public final void a(View view) {
                            RecorderTestDataManager.Companion companion = RecorderTestDataManager.f15699a;
                            RecorderTestDataManager.Companion.b();
                            CallRecordsActivity.this.b(false);
                            CallRecordsActivity.g(CallRecordsActivity.this);
                        }
                    });
                    return;
                }
                return;
            }
            return;
        }
        a(2131558429, Activities.getString(2131887522));
        getSearchContainer().setVisibility(8);
        if (recorderTestFragment != null && recorderTestFragment.isAdded()) {
            a2.a(recorderTestFragment).c();
        }
        d();
        c(2131363270);
        c(2131363271);
    }

    private void c(int i) {
        MenuItem findItem = this.n.findItem(i);
        if (findItem != null) {
            findItem.setVisible(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Activity activity) {
        PopupManager.get().a(activity, DialogCallRecorderFactory.a(new AnonymousClass3(activity), _$$Lambda$CallRecordsActivity$0J1tyVX_qok5KcVUox3OZVPE_R0.INSTANCE));
    }

    private void e() {
        this.e = new InterstitialLoaderLifecycle(this, AdUtils.b("CallRecorderListInterstitialBidding", "CallRecorderListInterstitialAdUnitId"), "CallRecorderListInterstitialPreferences", new InterstitialLoaderLifecycle.BottomBarActivityInterstitialAdEvents(), InterstitialLoaderLifecycle.BottomBarActivityInterstitialAdEvents.f16074a);
        getLifecycle().addObserver(this.e);
        if (!CallRecorderManager.get().isTermsAccepted()) {
            DialogCallRecorderWelcome a2 = DialogCallRecorderFactory.a(new CallRecorderWelcomeDialogListener(Boolean.TRUE), new CallRecorderWelcomeDialogListener(Boolean.FALSE));
            a2.setDialogCustomListener(new CallRecorderDialogWelcomeDialogDismissListener());
            PopupManager.get().a(this, a2);
        }
        AnalyticsManager.get().b(Constants.CALL_RECORDING_ACTIVITY);
        this.l = Activities.getString(2131886488);
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$ALi3Olmg6b2Ivpq8fGsxayjTuvA
            @Override // java.lang.Runnable
            public final void run() {
                CallRecordsActivity.this.i();
            }
        });
        EventBusManager.f14368a.a(CallRecordChangedListener.f12938a, this.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Activity activity) {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "Recording get permission popup action", "Decline");
        EventBusManager.f14368a.a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.h = CallRecorderManager.get().getAllRecords();
        this.j = new ArrayList();
        this.k = new ArrayList();
        Map<String, FastCacheData> allFastCacheDataWithName = FastCacheDataManager.getAllFastCacheDataWithName();
        if (CollectionUtils.b(allFastCacheDataWithName) && CollectionUtils.b(this.h)) {
            for (CallRecorder callRecorder : this.h) {
                if (callRecorder.getStarred()) {
                    this.j.add(callRecorder);
                } else {
                    this.k.add(callRecorder);
                }
                FastCacheData fastCacheData = allFastCacheDataWithName.get(callRecorder.getPhoneOrIdKey());
                if (fastCacheData != null) {
                    callRecorder.displayName = RegexUtils.m(StringUtils.a((CharSequence) fastCacheData.getFullName()) ? "" : fastCacheData.getFullName().toLowerCase());
                }
            }
        }
        a(this.h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g() {
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$wXkRjfCGq7Q8WMibPTWid6y_5DY
            @Override // java.lang.Runnable
            public final void run() {
                CallRecordsActivity.this.h();
            }
        });
    }

    static /* synthetic */ void g(final CallRecordsActivity callRecordsActivity) {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$o_SUKJsL9ACYA6nOKSd6PdHvxFI
            @Override // java.lang.Runnable
            public final void run() {
                CallRecordsActivity.this.g();
            }
        });
    }

    private ArrayList<Pair<Fragment, String>> getRecordsFragment() {
        return new ArrayList<>(Arrays.asList(new Pair(new AllRecordingsFragment(), Activities.getString(2131887854)), new Pair(new FavoritesRecordsFragment(), Activities.getString(2131887867))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        a(getViewPagerAdapter());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        f();
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$E2LwzosudPQF_AfxGJf4uni7_Pw
            @Override // java.lang.Runnable
            public final void run() {
                CallRecordsActivity.this.j();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        a(getViewPagerAdapter());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "Call Recording Screen - Permission Denied");
        FeedbackManager.get().a(getString(2131886510));
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "Call Recording Screen - Permission Granted");
        e();
    }

    private void setToolbarTitleToShowSelectedCount(int i) {
        SearchAnimationToolbar searchAnimationToolbar = getSearchAnimationToolbar();
        searchAnimationToolbar.setTitle(i + org.apache.commons.lang3.StringUtils.SPACE + Activities.getString(2131886671));
    }

    @Override // com.callapp.contacts.activity.records.AllRecordingsFragment.AccessibilityStickyClicked
    public final void a() {
        Activities.a(this, new PopupDoneListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.5
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public void popupDone(boolean z) {
                if (Activities.isCallAppAccessibilityServiceEnabled()) {
                    Prefs.eP.set(RecordConfiguration.AUDIO_SOURCE.VOICE_RECOGNITION);
                    CallRecordsActivity.a((Context) CallRecordsActivity.this);
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchBarFilterEvents
    public final void a(SearchBarFilter searchBarFilter) {
        this.g.add(searchBarFilter);
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void a(String str) {
        if (CollectionUtils.b(this.g)) {
            for (SearchBarFilter searchBarFilter : this.g) {
                searchBarFilter.a(str);
            }
            this.f = str;
        }
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void b() {
        d();
        getSearchContainer().setVisibility(8);
        getSupportFragmentManager().a().a(this.f13497d).b();
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchBarFilterEvents
    public final void b(SearchBarFilter searchBarFilter) {
        this.g.remove(searchBarFilter);
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void c() {
        a((AnimationListenerAdapter) null);
        getSearchContainer().setVisibility(0);
        getSupportFragmentManager().a().b(2131363757, this.f13497d, null).b();
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public int getActivityTitleResource() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.records.RecordsActivityActions
    public List<CallRecorder> getAllRecords() {
        return this.h;
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public String getAnalyticsCategory() {
        return Constants.CALL_RECORDER;
    }

    @Override // com.callapp.contacts.recorder.recordertest.RecorderTestFragment.RecorderTestFragmentEvents
    public CallBarPresenter getCallBarPresenter() {
        return null;
    }

    @Override // com.callapp.contacts.recorder.recordertest.RecorderTestFragment.RecorderTestFragmentEvents
    public BaseContactDetailsParallaxImpl getParallax() {
        return null;
    }

    @Override // com.callapp.contacts.activity.records.RecordsActivityActions
    public List<CallRecorder> getStarredRecords() {
        return this.j;
    }

    @Override // com.callapp.contacts.activity.records.RecordsActivityActions
    public List<CallRecorder> getUnStarredRecords() {
        return this.k;
    }

    public q getViewPagerAdapter() {
        return new RecordsViewPagerAdapter(getSupportFragmentManager(), getRecordsFragment());
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public TabLayout.c getViewPagerOnTabSelectedListener() {
        return null;
    }

    @Override // com.callapp.contacts.recorder.recordertest.RecorderTestFragment.RecorderTestFragmentEvents
    public void onAppliedConfiguration() {
        finish();
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        RecorderTestFragment recorderTestFragment = (RecorderTestFragment) getSupportFragmentManager().a(this.f13496a);
        if (recorderTestFragment != null && recorderTestFragment.isAdded()) {
            b(false);
        } else if (this.o) {
            onMultiSelectModeToggled(false, 0);
        } else {
            Activities.b(this, new Intent(this, ContactsListActivity.class));
            super.onBackPressed();
        }
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (PhoneManager.get().isDefaultPhoneApp()) {
            getPermissionManager();
            if (!PermissionManager.a("android.permission.RECORD_AUDIO")) {
                getPermissionManager().a(this, new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$CN_Cn9eu8bwOW_njwbUK6NcerpY
                    @Override // java.lang.Runnable
                    public final void run() {
                        CallRecordsActivity.this.l();
                    }
                }, new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$d2ZTSPDa6Dlu_Xeitu1qky5Sdro
                    @Override // java.lang.Runnable
                    public final void run() {
                        CallRecordsActivity.this.k();
                    }
                }, PermissionManager.PermissionGroup.MICROPHONE);
                a(2131558429, Activities.getString(2131887522));
            }
        }
        e();
        a(2131558429, Activities.getString(2131887522));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        this.n = menu;
        getMenuInflater().inflate(2131623941, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        getLifecycle().removeObserver(this.e);
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALL_RECORDING_ACTIVITY);
        EventBusManager.f14368a.b(CallRecordChangedListener.f12938a, this.m);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListAdapter.MultiSelectEvents
    public void onMultiSelectModeToggled(boolean z, int i) {
        Fragment item = ((RecordsViewPagerAdapter) this.f11168c.getAdapter()).getItem(this.f11168c.getCurrentItem());
        boolean z2 = item instanceof BaseMultiSelectListFragment;
        if (z2 || this.o != z) {
            if (z) {
                a((AnimationListenerAdapter) null);
                b(2131363271);
                b(2131363270);
                c(2131363269);
                setToolbarTitleToShowSelectedCount(0);
                this.f11168c.setPagingEnabled(false);
                a(false);
                if (z2) {
                    BaseMultiSelectListFragment baseMultiSelectListFragment = (BaseMultiSelectListFragment) item;
                    baseMultiSelectListFragment.showMultiSelect(true);
                    baseMultiSelectListFragment.setMultiSelectListener(this);
                }
            } else {
                d();
                b(2131363269);
                c(2131363271);
                c(2131363270);
                getSearchAnimationToolbar().setTitle(Activities.getString(2131887522));
                a(true);
                this.f11168c.setPagingEnabled(true);
                if (z2) {
                    ((BaseMultiSelectListFragment) item).showMultiSelect(false);
                }
            }
            this.o = z;
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 2131363271) {
            a(new AnimationListenerAdapter() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.6
                @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    super.onAnimationEnd(animation);
                    CallRecordsActivity.this.getSearchAnimationToolbar().a();
                }
            });
            return true;
        } else if (itemId == 2131363270) {
            DialogList dialogList = new DialogList(null);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231593, 2131887860));
            if (Build.VERSION.SDK_INT >= 23 && PhoneManager.get().isDefaultPhoneApp()) {
                arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231878, 2131887715));
            }
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231410, 2131886403));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231638, 2131886292));
            if (Prefs.gM.isNotNull() && Prefs.gM.get().booleanValue()) {
                arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231860, 2131887886));
            }
            AdapterIconAndText adapterIconAndText = new AdapterIconAndText(this, 2131558570, arrayList);
            adapterIconAndText.setListener(new AnonymousClass7(dialogList));
            dialogList.setAdapter(adapterIconAndText);
            PopupManager.get().a(this, dialogList);
            return true;
        } else {
            if (itemId == 2131363269) {
                Fragment item = ((RecordsViewPagerAdapter) this.f11168c.getAdapter()).getItem(this.f11168c.getCurrentItem());
                if (item instanceof BaseMultiSelectListFragment) {
                    BaseMultiSelectListFragment baseMultiSelectListFragment = (BaseMultiSelectListFragment) item;
                    if (CollectionUtils.a(baseMultiSelectListFragment.getCheckedRows())) {
                        FeedbackManager.get().a(Activities.getString(2131887251), (Integer) null);
                    } else {
                        final List<BaseAdapterItemData> checkedRows = baseMultiSelectListFragment.getCheckedRows();
                        PopupManager.get().a(this, new DialogSimpleMessage(Activities.getString(checkedRows.size() > 1 ? 2131887464 : 2131887461), Activities.a(2131887465, Integer.valueOf(checkedRows.size())), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.9
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public void onClickListener(Activity activity) {
                                CallRecorderManager.get().a(checkedRows, new ActionDoneListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.9.1
                                    @Override // com.callapp.contacts.action.ActionDoneListener
                                    public final void a() {
                                    }

                                    @Override // com.callapp.contacts.action.ActionDoneListener
                                    public final void a(boolean z) {
                                        for (CallRecorder callRecorder : checkedRows) {
                                            Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(callRecorder.getPhone(), callRecorder.contactId);
                                            if (!(contactDataOnlyIfAlreadyLoaded == null || contactDataOnlyIfAlreadyLoaded.first == null)) {
                                                CallRecorderLoader.a((ContactData) contactDataOnlyIfAlreadyLoaded.first);
                                            }
                                        }
                                        EventBusManager.f14368a.a((EventType<L, EventType<CallRecordChangedListener, Object>>) CallRecordChangedListener.f12938a, (EventType<CallRecordChangedListener, Object>) EventBusManager.CallAppDataType.CALL_RECORDERS, false);
                                    }
                                });
                                CallRecordsActivity.this.onMultiSelectModeToggled(false, 0);
                            }
                        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.10
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public void onClickListener(Activity activity) {
                            }
                        }));
                    }
                }
            }
            return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListAdapter.MultiSelectEvents
    public void onSelectedAmountChanged(int i) {
        setToolbarTitleToShowSelectedCount(i);
    }
}
