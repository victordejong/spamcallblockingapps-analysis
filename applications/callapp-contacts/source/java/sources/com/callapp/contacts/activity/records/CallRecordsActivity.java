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
import androidx.fragment.app.AbstractC1119q;
import androidx.fragment.app.AbstractC1121s;
import androidx.fragment.app.Fragment;
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

    /* renamed from: e */
    private InterstitialLoaderLifecycle f23989e;

    /* renamed from: f */
    private String f23990f;

    /* renamed from: h */
    private List<CallRecorder> f23992h;

    /* renamed from: j */
    private List<CallRecorder> f23993j;

    /* renamed from: k */
    private List<CallRecorder> f23994k;

    /* renamed from: l */
    private String f23995l;

    /* renamed from: n */
    private Menu f23997n;

    /* renamed from: d */
    private SearchRecordsFragment f23988d = new SearchRecordsFragment();

    /* renamed from: a */
    final String f23987a = RecorderTestFragment.class.getSimpleName();

    /* renamed from: g */
    private Set<SearchBarFilter> f23991g = new HashSet();

    /* renamed from: m */
    private CallRecordChangedListener f23996m = new CallRecordChangedListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.1
        @Override // com.callapp.contacts.activity.interfaces.CallRecordChangedListener
        /* renamed from: a */
        public final void mo29729a() {
            CallRecordsActivity.m29756a(CallRecordsActivity.this);
        }
    };

    /* renamed from: o */
    private boolean f23998o = false;

    /* renamed from: com.callapp.contacts.activity.records.CallRecordsActivity$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$3.class */
    public static final class C68783 implements DialogPopup.IDialogOnClickListener {

        /* renamed from: a */
        final /* synthetic */ Activity f24003a;

        C68783(Activity activity) {
            this.f24003a = activity;
        }

        /* renamed from: a */
        public static /* synthetic */ void m29728a(Activity activity, Activity activity2, int i, int i2, Intent intent) {
            PhoneManager.get().m28226e();
            if (i2 == -1 && PhoneManager.get().isDefaultPhoneApp()) {
                CallRecordsActivity.m29744d(activity);
            } else if (!CollectionUtils.m26068b(CallRecorderManager.get().getAllRecords())) {
            } else {
                CallRecordsActivity.m29758a((Context) activity);
            }
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public final void onClickListener(Activity activity) {
            if (Build.VERSION.SDK_INT >= 23 && !PhoneManager.get().isDefaultPhoneApp()) {
                final Activity activity2 = this.f24003a;
                Activities.m27687a(activity2, true, new ActivityResult() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$3$uz6JYnYHT5WdBD244pz0rfWU408
                    @Override // com.callapp.contacts.manager.popup.ActivityResult
                    public final void onActivityResult(Activity activity3, int i, int i2, Intent intent) {
                        CallRecordsActivity.C68783.m29728a(activity2, activity3, i, i2, intent);
                    }
                });
            } else if (CallRecorderManager.get().isTermsAccepted()) {
                AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Recording get permission popup action", "Accept");
                CallRecordsActivity.m29751b(this.f24003a);
            }
            EventBusManager.f25138a.m29046a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.f23125b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.records.CallRecordsActivity$7 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$7.class */
    public class C68827 implements AdapterText.AdapterEvents {

        /* renamed from: a */
        final /* synthetic */ DialogList f24007a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.activity.records.CallRecordsActivity$7$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$7$1.class */
        public class C68831 extends Task {

            /* renamed from: a */
            final /* synthetic */ ActionDoneListener f24009a;

            C68831(ActionDoneListener actionDoneListener) {
                C68827.this = r4;
                this.f24009a = actionDoneListener;
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                PopupManager.get().m28209a(CallRecordsActivity.this, new DialogSimpleMessage(Activities.getString(2131887860), Activities.getString(2131887000), Activities.getString(2131886153), Activities.getString(2131886505), ThemeUtils.getColor(2131100108), false, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.7.1.1
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.7.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                CallRecorderManager.get().m27870a(CallRecordsActivity.this.f23994k, C68831.this.f24009a);
                            }
                        });
                    }
                }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.7.1.2
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        if (C68831.this.f24009a != null) {
                            C68831.this.f24009a.mo27471a(false);
                        }
                    }
                }, null));
            }
        }

        C68827(DialogList dialogList) {
            CallRecordsActivity.this = r4;
            this.f24007a = dialogList;
        }

        @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
        public void onRowClicked(int i) {
            this.f24007a.dismiss();
            switch (i) {
                case 2131886292:
                    BackupUtils.m29297a("record");
                    return;
                case 2131886403:
                    if (CollectionUtils.m26076a(CallRecordsActivity.this.f23992h) || (CallRecordsActivity.this.f20382c.getCurrentItem() == 1 && CollectionUtils.m26076a(CallRecordsActivity.this.f23993j))) {
                        FeedbackManager.get().m28669a(Activities.getString(2131886419), (Integer) null);
                        return;
                    } else {
                        CallRecordsActivity.this.onMultiSelectModeToggled(true, 0);
                        return;
                    }
                case 2131887715:
                    Intent putExtra = new Intent(CallAppApplication.get(), SettingsActivity.class).putExtra("call_recorder_settings", true);
                    putExtra.putExtra("show_call_recorder_permission", true);
                    Activities.m27685a(CallRecordsActivity.this, putExtra);
                    return;
                case 2131887860:
                    if (CollectionUtils.m26076a(CallRecordsActivity.this.f23994k)) {
                        FeedbackManager.get().m28669a(Activities.getString(2131886419), (Integer) null);
                        return;
                    } else {
                        new C68831(new StarUnstarActionDoneListener()).execute();
                        return;
                    }
                case 2131887886:
                    CallRecordsActivity.this.m29748b(true);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderDialogWelcomeDialogDismissListener.class */
    public static class CallRecorderDialogWelcomeDialogDismissListener implements DialogPopup.IDialogSimpleListener {
        private CallRecorderDialogWelcomeDialogDismissListener() {
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
        /* renamed from: a */
        public final void mo26209a(DialogPopup dialogPopup) {
            Activity activity;
            if (CallRecorderManager.get().isTermsAccepted() || (activity = dialogPopup.getActivity()) == null) {
                return;
            }
            activity.finish();
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
        /* renamed from: b */
        public final void mo26208b(DialogPopup dialogPopup) {
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderWelcomeDialogListener.class */
    public static class CallRecorderWelcomeDialogListener implements DialogPopup.IDialogOnClickListener {

        /* renamed from: a */
        private final Boolean f24018a;

        CallRecorderWelcomeDialogListener(Boolean bool) {
            this.f24018a = bool;
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public void onClickListener(Activity activity) {
            if (!this.f24018a.booleanValue()) {
                AnalyticsManager.get().m28449a(Constants.CALL_RECORDER, "Get permission popup action", "Decline");
                activity.finish();
            } else if (!CallRecorderManager.get().isTermsAccepted()) {
                activity.finish();
            } else {
                AnalyticsManager.get().m28449a(Constants.CALL_RECORDER, "Get permission popup action", "Accept");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsActivity$StarUnstarActionDoneListener.class */
    public class StarUnstarActionDoneListener implements ActionDoneListener {
        private StarUnstarActionDoneListener() {
            CallRecordsActivity.this = r4;
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27472a() {
        }

        @Override // com.callapp.contacts.action.ActionDoneListener
        /* renamed from: a */
        public final void mo27471a(final boolean z) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.StarUnstarActionDoneListener.1
                @Override // java.lang.Runnable
                public void run() {
                    if (z) {
                        CallRecordsActivity.m29756a(CallRecordsActivity.this);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    private ActionBar m29760a(int i, String str) {
        ActionBar m27365a = TopBarUtils.m27365a(this, getSupportActionBar(), TopBarUtils.TopBarTitle.TITLE_TOP_BAR, i);
        TopBarUtils.m27364a(m27365a, str);
        return m27365a;
    }

    /* renamed from: a */
    public static void m29759a(final Activity activity) {
        if (!CallRecorderManager.get().isTermsAccepted()) {
            Prefs.f26471ej.set(new Date());
            m29744d(activity);
        } else if (Build.VERSION.SDK_INT < 23 || PhoneManager.get().isDefaultSystemPhoneApp()) {
            m29758a((Context) activity);
        } else {
            Activities.m27687a(activity, true, new ActivityResult() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.2
                @Override // com.callapp.contacts.manager.popup.ActivityResult
                public final void onActivityResult(Activity activity2, int i, int i2, Intent intent) {
                    PhoneManager.get().m28226e();
                    if (i2 != -1 || !PhoneManager.get().isDefaultPhoneApp()) {
                        if (!CollectionUtils.m26068b(CallRecorderManager.get().getAllRecords())) {
                            return;
                        }
                        CallRecordsActivity.m29758a((Context) activity);
                        return;
                    }
                    Intent intent2 = new Intent(CallAppApplication.get(), SettingsActivity.class);
                    intent2.putExtra("show_call_recorder_permission", true);
                    intent2.putExtra("call_recorder_settings", true);
                    Activities.m27656b(CallAppApplication.get(), intent2);
                }
            });
        }
    }

    /* renamed from: a */
    public static void m29758a(Context context) {
        Activities.m27656b(context, new Intent(context, CallRecordsActivity.class));
    }

    /* renamed from: a */
    static /* synthetic */ void m29756a(CallRecordsActivity callRecordsActivity) {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.11
            @Override // java.lang.Runnable
            public void run() {
                CallRecordsActivity.this.m29739f();
                EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL_RECORDERS, false);
            }
        });
    }

    /* renamed from: a */
    private void m29754a(List<CallRecorder> list) {
        MemoryContactItem memoryContactItem;
        HashSet hashSet = new HashSet();
        for (CallRecorder callRecorder : list) {
            if (StringUtils.m26059a((CharSequence) callRecorder.displayName) && callRecorder.getContactId() > 0) {
                hashSet.add(Long.valueOf(callRecorder.getContactId()));
            }
        }
        Map<Long, MemoryContactItem> m28316a = ContactUtils.m28316a(hashSet);
        for (CallRecorder callRecorder2 : list) {
            if (StringUtils.m26059a((CharSequence) callRecorder2.displayName) && callRecorder2.getContactId() > 0 && (memoryContactItem = m28316a.get(Long.valueOf(callRecorder2.getContactId()))) != null) {
                callRecorder2.displayName = memoryContactItem.displayName;
            }
            if (StringUtils.m26059a((CharSequence) callRecorder2.displayName) && CallLogUtils.m27556b(callRecorder2.getPhoneText())) {
                callRecorder2.displayName = this.f23995l;
            }
        }
    }

    /* renamed from: a */
    private void m29753a(boolean z) {
        if (z) {
            ((AppBarLayout.LayoutParams) getSearchAnimationToolbar().getLayoutParams()).f52431a = 21;
        } else {
            ((AppBarLayout.LayoutParams) getSearchAnimationToolbar().getLayoutParams()).f52431a = 4;
        }
    }

    /* renamed from: b */
    private void m29752b(int i) {
        MenuItem findItem = this.f23997n.findItem(i);
        if (findItem != null) {
            findItem.setVisible(false);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m29751b(final Activity activity) {
        if (Build.VERSION.SDK_INT < 29 || Activities.isCallAppAccessibilityServiceEnabled()) {
            m29758a((Context) activity);
            return;
        }
        PopupManager.get().m28209a(activity, new AccessibilityServiceDialog(new PopupDoneListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.4
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public final void popupDone(boolean z) {
                CallRecordsActivity.m29758a((Context) activity);
            }
        }));
    }

    /* renamed from: b */
    public void m29748b(boolean z) {
        AbstractC1121s m43765a = getSupportFragmentManager().m43765a();
        RecorderTestFragment recorderTestFragment = (RecorderTestFragment) getSupportFragmentManager().m43740a(this.f23987a);
        if (!z) {
            m29760a(2131558429, Activities.getString(2131887522));
            getSearchContainer().setVisibility(8);
            if (recorderTestFragment != null && recorderTestFragment.isAdded()) {
                m43765a.mo43539a(recorderTestFragment).mo43532c();
            }
            m31468d();
            m29747c(2131363270);
            m29747c(2131363271);
            return;
        }
        getSearchContainer().setVisibility(0);
        if (recorderTestFragment != null) {
            return;
        }
        RecorderTestFragment recorderTestFragment2 = new RecorderTestFragment();
        if (!recorderTestFragment2.isAdded() && !Fragments.m27543a(getSupportFragmentManager(), recorderTestFragment2.getClass().getSimpleName())) {
            m43765a.m43541a(2131363757, recorderTestFragment2, this.f23987a).mo43529e();
        }
        m31469a((AnimationListenerAdapter) null);
        m29752b(2131363271);
        m29752b(2131363270);
        ActionBar m29760a = m29760a(2131558431, Activities.getString(2131887886));
        if (m29760a == null) {
            return;
        }
        View findViewById = m29760a.mo46235b().findViewById(2131361943);
        ((TextView) findViewById.findViewById(2131361942)).setText(Activities.getString(2131887519));
        findViewById.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.8
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                RecorderTestDataManager.Companion companion = RecorderTestDataManager.f27475a;
                RecorderTestDataManager.Companion.m27823b();
                CallRecordsActivity.this.m29748b(false);
                CallRecordsActivity.m29736g(CallRecordsActivity.this);
            }
        });
    }

    /* renamed from: c */
    private void m29747c(int i) {
        MenuItem findItem = this.f23997n.findItem(i);
        if (findItem != null) {
            findItem.setVisible(true);
        }
    }

    /* renamed from: d */
    public static void m29744d(Activity activity) {
        PopupManager.get().m28209a(activity, DialogCallRecorderFactory.m27927a(new C68783(activity), _$$Lambda$CallRecordsActivity$0J1tyVX_qok5KcVUox3OZVPE_R0.INSTANCE));
    }

    /* renamed from: e */
    private void m29742e() {
        this.f23989e = new InterstitialLoaderLifecycle(this, AdUtils.m27261b("CallRecorderListInterstitialBidding", "CallRecorderListInterstitialAdUnitId"), "CallRecorderListInterstitialPreferences", new InterstitialLoaderLifecycle.BottomBarActivityInterstitialAdEvents(), InterstitialLoaderLifecycle.BottomBarActivityInterstitialAdEvents.f28026a);
        getLifecycle().addObserver(this.f23989e);
        if (!CallRecorderManager.get().isTermsAccepted()) {
            DialogCallRecorderWelcome m27927a = DialogCallRecorderFactory.m27927a(new CallRecorderWelcomeDialogListener(Boolean.TRUE), new CallRecorderWelcomeDialogListener(Boolean.FALSE));
            m27927a.setDialogCustomListener(new CallRecorderDialogWelcomeDialogDismissListener());
            PopupManager.get().m28209a(this, m27927a);
        }
        AnalyticsManager.get().mo28441b(Constants.CALL_RECORDING_ACTIVITY);
        this.f23995l = Activities.getString(2131886488);
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$ALi3Olmg6b2Ivpq8fGsxayjTuvA
            @Override // java.lang.Runnable
            public final void run() {
                CallRecordsActivity.this.m29733i();
            }
        });
        EventBusManager.f25138a.m29048a(CallRecordChangedListener.f23111a, this.f23996m);
    }

    /* renamed from: e */
    public static /* synthetic */ void m29741e(Activity activity) {
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Recording get permission popup action", "Decline");
        EventBusManager.f25138a.m29046a((EventType<L, EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>>) OnBadgeNotificationDataChangeListener.f23125b_, (EventType<OnBadgeNotificationDataChangeListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED, false);
    }

    /* renamed from: f */
    public void m29739f() {
        this.f23992h = CallRecorderManager.get().getAllRecords();
        this.f23993j = new ArrayList();
        this.f23994k = new ArrayList();
        Map<String, FastCacheData> allFastCacheDataWithName = FastCacheDataManager.getAllFastCacheDataWithName();
        if (CollectionUtils.m26067b(allFastCacheDataWithName) && CollectionUtils.m26068b(this.f23992h)) {
            for (CallRecorder callRecorder : this.f23992h) {
                if (callRecorder.getStarred()) {
                    this.f23993j.add(callRecorder);
                } else {
                    this.f23994k.add(callRecorder);
                }
                FastCacheData fastCacheData = allFastCacheDataWithName.get(callRecorder.getPhoneOrIdKey());
                if (fastCacheData != null) {
                    callRecorder.displayName = RegexUtils.m31888m(StringUtils.m26059a((CharSequence) fastCacheData.getFullName()) ? "" : fastCacheData.getFullName().toLowerCase());
                }
            }
        }
        m29754a(this.f23992h);
    }

    /* renamed from: g */
    public /* synthetic */ void m29737g() {
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$wXkRjfCGq7Q8WMibPTWid6y_5DY
            @Override // java.lang.Runnable
            public final void run() {
                CallRecordsActivity.this.m29735h();
            }
        });
    }

    /* renamed from: g */
    static /* synthetic */ void m29736g(CallRecordsActivity callRecordsActivity) {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$o_SUKJsL9ACYA6nOKSd6PdHvxFI
            @Override // java.lang.Runnable
            public final void run() {
                CallRecordsActivity.this.m29737g();
            }
        });
    }

    private ArrayList<Pair<Fragment, String>> getRecordsFragment() {
        return new ArrayList<>(Arrays.asList(new Pair(new AllRecordingsFragment(), Activities.getString(2131887854)), new Pair(new FavoritesRecordsFragment(), Activities.getString(2131887867))));
    }

    /* renamed from: h */
    public /* synthetic */ void m29735h() {
        m31470a(getViewPagerAdapter());
    }

    /* renamed from: i */
    public /* synthetic */ void m29733i() {
        m29739f();
        runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$E2LwzosudPQF_AfxGJf4uni7_Pw
            @Override // java.lang.Runnable
            public final void run() {
                CallRecordsActivity.this.m29732j();
            }
        });
    }

    /* renamed from: j */
    public /* synthetic */ void m29732j() {
        m31470a(getViewPagerAdapter());
    }

    /* renamed from: k */
    public /* synthetic */ void m29731k() {
        AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "Call Recording Screen - Permission Denied");
        FeedbackManager.get().m28671a(getString(2131886510));
        m29742e();
    }

    /* renamed from: l */
    public /* synthetic */ void m29730l() {
        AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "Call Recording Screen - Permission Granted");
        m29742e();
    }

    private void setToolbarTitleToShowSelectedCount(int i) {
        SearchAnimationToolbar searchAnimationToolbar = getSearchAnimationToolbar();
        searchAnimationToolbar.setTitle(i + org.apache.commons.lang3.StringUtils.SPACE + Activities.getString(2131886671));
    }

    @Override // com.callapp.contacts.activity.records.AllRecordingsFragment.AccessibilityStickyClicked
    /* renamed from: a */
    public final void mo29761a() {
        Activities.m27690a(this, new PopupDoneListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.5
            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
            public void popupDone(boolean z) {
                if (Activities.isCallAppAccessibilityServiceEnabled()) {
                    Prefs.f26451eP.set(RecordConfiguration.AUDIO_SOURCE.VOICE_RECOGNITION);
                    CallRecordsActivity.m29758a((Context) CallRecordsActivity.this);
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchBarFilterEvents
    /* renamed from: a */
    public final void mo29757a(SearchBarFilter searchBarFilter) {
        this.f23991g.add(searchBarFilter);
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    /* renamed from: a */
    public final void mo26640a(String str) {
        if (CollectionUtils.m26068b(this.f23991g)) {
            for (SearchBarFilter searchBarFilter : this.f23991g) {
                searchBarFilter.mo30194a(str);
            }
            this.f23990f = str;
        }
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    /* renamed from: b */
    public final void mo26639b() {
        m31468d();
        getSearchContainer().setVisibility(8);
        getSupportFragmentManager().m43765a().mo43539a(this.f23988d).mo43536b();
    }

    @Override // com.callapp.contacts.activity.interfaces.SearchBarFilterEvents
    /* renamed from: b */
    public final void mo29750b(SearchBarFilter searchBarFilter) {
        this.f23991g.remove(searchBarFilter);
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    /* renamed from: c */
    public final void mo26638c() {
        m31469a((AnimationListenerAdapter) null);
        getSearchContainer().setVisibility(0);
        getSupportFragmentManager().m43765a().m43535b(2131363757, this.f23988d, null).mo43536b();
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public int getActivityTitleResource() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.records.RecordsActivityActions
    public List<CallRecorder> getAllRecords() {
        return this.f23992h;
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
        return this.f23993j;
    }

    @Override // com.callapp.contacts.activity.records.RecordsActivityActions
    public List<CallRecorder> getUnStarredRecords() {
        return this.f23994k;
    }

    public AbstractC1119q getViewPagerAdapter() {
        return new RecordsViewPagerAdapter(getSupportFragmentManager(), getRecordsFragment());
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public TabLayout.AbstractC14773c getViewPagerOnTabSelectedListener() {
        return null;
    }

    @Override // com.callapp.contacts.recorder.recordertest.RecorderTestFragment.RecorderTestFragmentEvents
    public void onAppliedConfiguration() {
        finish();
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        RecorderTestFragment recorderTestFragment = (RecorderTestFragment) getSupportFragmentManager().m43740a(this.f23987a);
        if (recorderTestFragment != null && recorderTestFragment.isAdded()) {
            m29748b(false);
        } else if (this.f23998o) {
            onMultiSelectModeToggled(false, 0);
        } else {
            Activities.m27656b(this, new Intent(this, ContactsListActivity.class));
            super.onBackPressed();
        }
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (PhoneManager.get().isDefaultPhoneApp()) {
            getPermissionManager();
            if (!PermissionManager.m28253a("android.permission.RECORD_AUDIO")) {
                getPermissionManager().m28254a(this, new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$CN_Cn9eu8bwOW_njwbUK6NcerpY
                    @Override // java.lang.Runnable
                    public final void run() {
                        CallRecordsActivity.this.m29730l();
                    }
                }, new Runnable() { // from class: com.callapp.contacts.activity.records._$$Lambda$CallRecordsActivity$d2ZTSPDa6Dlu_Xeitu1qky5Sdro
                    @Override // java.lang.Runnable
                    public final void run() {
                        CallRecordsActivity.this.m29731k();
                    }
                }, PermissionManager.PermissionGroup.MICROPHONE);
                m29760a(2131558429, Activities.getString(2131887522));
            }
        }
        m29742e();
        m29760a(2131558429, Activities.getString(2131887522));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        this.f23997n = menu;
        getMenuInflater().inflate(2131623941, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        getLifecycle().removeObserver(this.f23989e);
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALL_RECORDING_ACTIVITY);
        EventBusManager.f25138a.m29045b(CallRecordChangedListener.f23111a, this.f23996m);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListAdapter.MultiSelectEvents
    public void onMultiSelectModeToggled(boolean z, int i) {
        Fragment item = ((RecordsViewPagerAdapter) this.f20382c.getAdapter()).getItem(this.f20382c.getCurrentItem());
        boolean z2 = item instanceof BaseMultiSelectListFragment;
        if (z2 || this.f23998o != z) {
            if (z) {
                m31469a((AnimationListenerAdapter) null);
                m29752b(2131363271);
                m29752b(2131363270);
                m29747c(2131363269);
                setToolbarTitleToShowSelectedCount(0);
                this.f20382c.setPagingEnabled(false);
                m29753a(false);
                if (z2) {
                    BaseMultiSelectListFragment baseMultiSelectListFragment = (BaseMultiSelectListFragment) item;
                    baseMultiSelectListFragment.showMultiSelect(true);
                    baseMultiSelectListFragment.setMultiSelectListener(this);
                }
            } else {
                m31468d();
                m29752b(2131363269);
                m29747c(2131363271);
                m29747c(2131363270);
                getSearchAnimationToolbar().setTitle(Activities.getString(2131887522));
                m29753a(true);
                this.f20382c.setPagingEnabled(true);
                if (z2) {
                    ((BaseMultiSelectListFragment) item).showMultiSelect(false);
                }
            }
            this.f23998o = z;
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 2131363271) {
            m31469a(new AnimationListenerAdapter() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.6
                @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    super.onAnimationEnd(animation);
                    CallRecordsActivity.this.getSearchAnimationToolbar().m26649a();
                }
            });
            return true;
        } else if (itemId != 2131363270) {
            if (itemId == 2131363269) {
                Fragment item = ((RecordsViewPagerAdapter) this.f20382c.getAdapter()).getItem(this.f20382c.getCurrentItem());
                if (item instanceof BaseMultiSelectListFragment) {
                    BaseMultiSelectListFragment baseMultiSelectListFragment = (BaseMultiSelectListFragment) item;
                    if (CollectionUtils.m26076a(baseMultiSelectListFragment.getCheckedRows())) {
                        FeedbackManager.get().m28669a(Activities.getString(2131887251), (Integer) null);
                    } else {
                        final List<BaseAdapterItemData> checkedRows = baseMultiSelectListFragment.getCheckedRows();
                        PopupManager.get().m28209a(this, new DialogSimpleMessage(Activities.getString(checkedRows.size() > 1 ? 2131887464 : 2131887461), Activities.m27697a(2131887465, Integer.valueOf(checkedRows.size())), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.9
                            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                            public void onClickListener(Activity activity) {
                                CallRecorderManager.get().m27870a(checkedRows, new ActionDoneListener() { // from class: com.callapp.contacts.activity.records.CallRecordsActivity.9.1
                                    @Override // com.callapp.contacts.action.ActionDoneListener
                                    /* renamed from: a */
                                    public final void mo27472a() {
                                    }

                                    @Override // com.callapp.contacts.action.ActionDoneListener
                                    /* renamed from: a */
                                    public final void mo27471a(boolean z) {
                                        for (CallRecorder callRecorder : checkedRows) {
                                            Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(callRecorder.getPhone(), callRecorder.contactId);
                                            if (contactDataOnlyIfAlreadyLoaded != null && contactDataOnlyIfAlreadyLoaded.first != null) {
                                                CallRecorderLoader.m27830a((ContactData) contactDataOnlyIfAlreadyLoaded.first);
                                            }
                                        }
                                        EventBusManager.f25138a.m29046a((EventType<L, EventType<CallRecordChangedListener, Object>>) CallRecordChangedListener.f23111a, (EventType<CallRecordChangedListener, Object>) EventBusManager.CallAppDataType.CALL_RECORDERS, false);
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
        } else {
            DialogList dialogList = new DialogList(null);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231593, 2131887860));
            if (Build.VERSION.SDK_INT >= 23 && PhoneManager.get().isDefaultPhoneApp()) {
                arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231878, 2131887715));
            }
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231410, 2131886403));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231638, 2131886292));
            if (Prefs.f26554gM.isNotNull() && Prefs.f26554gM.get().booleanValue()) {
                arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231860, 2131887886));
            }
            AdapterIconAndText adapterIconAndText = new AdapterIconAndText(this, 2131558570, arrayList);
            adapterIconAndText.setListener(new C68827(dialogList));
            dialogList.setAdapter(adapterIconAndText);
            PopupManager.get().m28209a(this, dialogList);
            return true;
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListAdapter.MultiSelectEvents
    public void onSelectedAmountChanged(int i) {
        setToolbarTitleToShowSelectedCount(i);
    }
}
