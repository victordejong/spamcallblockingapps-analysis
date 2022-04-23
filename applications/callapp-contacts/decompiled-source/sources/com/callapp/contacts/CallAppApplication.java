package com.callapp.contacts;

import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.StrictMode;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.Pair;
import androidx.work.impl.j;
import androidx.work.t;
import com.android.billingclient.api.g;
import com.android.billingclient.api.i;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.api.ApiConstants;
import com.callapp.common.model.json.JSONClientValidationResponse;
import com.callapp.common.model.json.JSONDate;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.activity.calllog.FirstTimeExperienceCallLog;
import com.callapp.contacts.activity.contact.details.PostCallActivity;
import com.callapp.contacts.activity.contact.details.overlay.DuringCallOverlayView;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.contact.list.RetentionAnalytics;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.identify.IdentifyContactsTaskManager;
import com.callapp.contacts.activity.marketplace.PersonalStoreItemHelper;
import com.callapp.contacts.activity.marketplace.catalog.CatalogManager;
import com.callapp.contacts.activity.marketplace.catalog.JSONStoreCallScreenThemeItem;
import com.callapp.contacts.activity.missedcall.MissedCallFrequentManager;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.activity.settings.SpeedDialActivity;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.api.helper.backup.BackupUtils;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.gmail.GmailManager;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.loader.PersonalStoreItemDataManager;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.CallAppClipboardManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.ExceptionManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.FilteredReceiversManager;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.manager.IncognitoContactsManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.NotificationExtractors.SignalNotificationDataExtractor;
import com.callapp.contacts.manager.NotificationExtractors.TelegramNotificationDataExtractor;
import com.callapp.contacts.manager.NotificationExtractors.ViberNotificationDataExtractor;
import com.callapp.contacts.manager.NotificationExtractors.VonageNotificationDataExtractor;
import com.callapp.contacts.manager.NotificationExtractors.WhatsAppNotificationDataExtractor;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.OverlayManager;
import com.callapp.contacts.manager.PhoneVerifierManager;
import com.callapp.contacts.manager.ProximityManager;
import com.callapp.contacts.manager.RecognizedContactNotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.WifiLockManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.keyguard.KeyguardActivityStateManager;
import com.callapp.contacts.manager.keyguard.LockscreenKeyguardManager;
import com.callapp.contacts.manager.messaging.FcmManager;
import com.callapp.contacts.manager.phone.BluetoothHeadsetConnectivityManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.LocalPrefsStore;
import com.callapp.contacts.manager.preferences.LocationPrefs;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.MyObjectBox;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.PhotoUrls;
import com.callapp.contacts.model.objectbox.CacheData;
import com.callapp.contacts.model.objectbox.CacheData_;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto_;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.model.objectbox.FastCacheData;
import com.callapp.contacts.model.objectbox.FastCacheData_;
import com.callapp.contacts.model.objectbox.MissedCallCardIds;
import com.callapp.contacts.model.objectbox.OBPref;
import com.callapp.contacts.model.objectbox.PersonalStoreItemUrlData;
import com.callapp.contacts.model.objectbox.UserNegativeSocialData;
import com.callapp.contacts.model.objectbox.UserNegativeSocialData_;
import com.callapp.contacts.observers.CallLogContentObserver;
import com.callapp.contacts.observers.ContactUtilsContactsContentObserver;
import com.callapp.contacts.receiver.InstallationReceiver;
import com.callapp.contacts.receiver.SmsSentReceiver;
import com.callapp.contacts.receiver.StartupReceiver;
import com.callapp.contacts.receiver.WifiStateReceiver;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.service.CallAppService;
import com.callapp.contacts.sync.model.SyncManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.AppRater;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CrashlyticsUtils;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.LocaleUtils;
import com.callapp.contacts.util.MigrationUtils;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.glide.CallAppGlideInitializationException;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.servermessage.ValidateClientTask;
import com.callapp.contacts.util.video.CallAppTransformation;
import com.callapp.contacts.util.video.VideoCacheManager;
import com.callapp.contacts.wearable.WearableClientHandler;
import com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadLifecycleObserverManager;
import com.callapp.contacts.workers.BirthdayDailyWorker;
import com.callapp.contacts.workers.CallAppDailyWorker;
import com.callapp.contacts.workers.FetchRemoteConfigWorker;
import com.callapp.contacts.workers.MissedCallSummaryDailyWorker;
import com.callapp.contacts.workers.NotAnswerCallSummaryDailyWorker;
import com.callapp.contacts.workers.RegistrationReminderIfNeededWorker;
import com.callapp.contacts.workers.RescheduleSyncWorker;
import com.callapp.contacts.workers.UpdateContactsDescriptionWorker;
import com.callapp.contacts.workers.UpdateContactsWorker;
import com.callapp.contacts.workers._24HourPingWorker;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.e.a.a.a;
import com.google.android.gms.ads.AdActivity;
import com.google.android.play.core.missingsplits.b;
import com.google.android.play.core.splitcompat.SplitCompatApplication;
import com.linkedin.android.litr.e;
import com.mopub.common.ViewabilityManager;
import com.mopub.network.Networking;
import io.objectbox.BoxStore;
import io.objectbox.a;
import io.objectbox.exception.DbException;
import io.objectbox.exception.DbExceptionListener;
import io.objectbox.exception.DbFullException;
import io.objectbox.h;
import io.objectbox.query.Query;
import io.objectbox.query.c;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/CallAppApplication.class */
public class CallAppApplication extends SplitCompatApplication {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f10402a = false;

    /* renamed from: b  reason: collision with root package name */
    public static int f10403b;

    /* renamed from: c  reason: collision with root package name */
    public static String f10404c;
    private static final HandlerThread e;
    private static Handler f;
    private static final Set<String> n;
    private BoxStore g;
    private BillingManager h;
    private BillingManager i;
    private Service l;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f10405d = new Handler();
    private boolean j = false;
    private final Object k = new Object();
    private final FilteredActivityLifecycleCallback m = new FilteredActivityLifecycleCallback();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.CallAppApplication$21  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/CallAppApplication$21.class */
    public class AnonymousClass21 extends Task {
        AnonymousClass21() {
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            CallAppApplication.this.i = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.CallAppApplication.21.1
                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public final void a() {
                    if (CallAppApplication.this.i != null) {
                        CallAppApplication.this.i.a();
                    }
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public /* synthetic */ void a(g gVar, List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public final void a(final List<i> list) {
                    CatalogManager.get().a(CallAppApplication.this.i, list).a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.CallAppApplication.21.1.1
                        @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                        public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                            ArrayList arrayList = new ArrayList();
                            for (JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem : catalogAttributes.getAvailableCallScreenThemes()) {
                                String sku = jSONStoreCallScreenThemeItem.getSku();
                                if (StringUtils.b((CharSequence) sku)) {
                                    arrayList.add(sku.toLowerCase());
                                }
                            }
                            ArrayList arrayList2 = new ArrayList(Arrays.asList(Prefs.cW.isNotNull() ? Prefs.cW.get() : new String[0]));
                            if (CollectionUtils.b(list)) {
                                for (i iVar : list) {
                                    String b2 = iVar.b();
                                    if (StringUtils.b((CharSequence) b2) && (CollectionUtils.a(arrayList, b2.toLowerCase()) || CollectionUtils.a(arrayList2, b2.toLowerCase()))) {
                                        Prefs.du.set(Boolean.TRUE);
                                        break;
                                    }
                                }
                            }
                            if (CollectionUtils.a(arrayList, PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE)) || CollectionUtils.a(arrayList2, PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE))) {
                                Prefs.dv.set(Boolean.TRUE);
                            }
                            if (CollectionUtils.a(arrayList, PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.COVER)) || CollectionUtils.a(arrayList2, PersonalStoreItemHelper.a(PersonalStoreItemUrlData.PersonalStoreItemType.COVER))) {
                                Prefs.dB.set(Boolean.TRUE);
                            }
                            if (CallAppApplication.this.i != null) {
                                CallAppApplication.this.i.b();
                                CallAppApplication.this.i = null;
                            }
                        }
                    });
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public /* synthetic */ void b(List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                }
            });
            if (Prefs.ds.isNotNull()) {
                if (!StringUtils.c(Prefs.ds.get(), "cst_store_pr_personal_l_v")) {
                    PersonalStoreItemDataManager.f14492a.a("666666", Prefs.ds.get(), Integer.MAX_VALUE, PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
                    Prefs.du.set(Boolean.TRUE);
                }
                Prefs.ds.set(null);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback.class */
    public static class FilteredActivityLifecycleCallback implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a  reason: collision with root package name */
        CopyOnWriteArrayList<Application.ActivityLifecycleCallbacks> f10455a = new CopyOnWriteArrayList<>();

        public final void a(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreStarted");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreStarted(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        public final void b(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostStarted");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostStarted(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        public final void c(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityStarted");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityStarted(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        public final void d(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreResumed");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreResumed(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        public final void e(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostResumed");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostResumed(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        public final void f(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityResumed");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityResumed(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        public final void g(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPrePaused");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPrePaused(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        public final void h(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostPaused");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostPaused(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        public final void i(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPaused");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPaused(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        public final void j(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreStopped");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreStopped(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        public final void k(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostStopped");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostStopped(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        public final void l(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityStopped");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityStopped(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityCreated");
            if (CallAppApplication.n.contains(activity.getClass().getCanonicalName())) {
                Activities.setKeyguardDismissAndScreenWindowFlags(activity);
            }
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityCreated(activity, bundle);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityDestroyed");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityDestroyed(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                i(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityPaused skipped");
            CLog.a(simpleName);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostCreated");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostCreated(activity, bundle);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostDestroyed(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostDestroyed");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostDestroyed(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostPaused(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                h(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityPostPaused skipped");
            CLog.a(simpleName);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                e(activity);
                return;
            }
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostResumed skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostSaveInstanceState(Activity activity, Bundle bundle) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostSaveInstanceState");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostSaveInstanceState(activity, bundle);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                b(activity);
                return;
            }
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostStarted skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStopped(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                k(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityPostStopped skipped");
            CLog.a(simpleName);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreCreated");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreCreated(activity, bundle);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreDestroyed");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreDestroyed(activity);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                g(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityPrePaused skipped");
            CLog.a(simpleName);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreResumed(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                d(activity);
                return;
            }
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreResumed skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreSaveInstanceState(Activity activity, Bundle bundle) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreSaveInstanceState");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreSaveInstanceState(activity, bundle);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStarted(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                a(activity);
                return;
            }
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreStarted skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                j(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityPreStopped skipped");
            CLog.a(simpleName);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                f(activity);
                return;
            }
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityResumed skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivitySaveInstanceState");
            if (CollectionUtils.b(this.f10455a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f10455a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivitySaveInstanceState(activity, bundle);
                    } catch (Exception e) {
                        CLog.b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                c(activity);
                return;
            }
            CLog.a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityStarted skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                l(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityStopped skipped");
            CLog.a(simpleName);
        }
    }

    static {
        try {
            System.loadLibrary("ccr");
            f10402a = true;
        } catch (Throwable th) {
            th.getMessage();
        }
        f10403b = 1070;
        f10404c = "CallAppApplication.leakCanaryEnabled";
        e = new HandlerThread("StartCallAppService");
        n = new HashSet(Arrays.asList("com.facebook.ads.AudienceNetworkActivity", "com.mopub.common.MoPubBrowser", "com.mopub.mobileads.MoPubActivity", "com.mopub.mobileads.MraidActivity", "com.mopub.mobileads.RewardedMraidActivity", "com.mopub.mobileads.MraidVideoPlayerActivity", AdActivity.CLASS_NAME, "com.inmobi.ads.rendering.InMobiAdActivity", "com.amazon.device.ads.DTBActivity", "com.criteo.view.InterstialHtmlAdActivity", "com.criteo.publisher.CriteoInterstitialActivity", "com.verizon.ads.interstitialwebadapter.WebViewActivity", "net.pubnative.lite.sdk.interstitial.activity.MraidInterstitialActivity", "net.pubnative.lite.sdk.interstitial.activity.VastInterstitialActivity", "io.bidmachine.ads.networks.mraid.MraidActivity", "io.bidmachine.nativead.view.VideoPlayerActivity"));
    }

    public static void a() {
        Prefs.fb.set(0);
        Prefs.fd.set(null);
        Prefs.fc.set(null);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:418:0x0fb3 -> B:181:0x0746). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:419:0x0fb7 -> B:256:0x0b7f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:420:0x0fbb -> B:304:0x0ccf). Please submit an issue!!! */
    private void a(int i, int i2) {
        JobScheduler jobScheduler;
        Integer num;
        Date date;
        if (!ThemeUtils.b(Prefs.dg.get())) {
            Prefs.dg.set("LIGHT");
        }
        Prefs.ai.set(new Date());
        Prefs.aZ.set(Boolean.TRUE);
        Prefs.ad.set(null);
        Prefs.fF.set(-1L);
        Prefs.fG.set(0);
        Prefs.e.set(0);
        Prefs.f.set(0);
        Prefs.gO.set(Boolean.FALSE);
        AdUtils.c();
        if (Prefs.R.get() == null) {
            Prefs.R.set(Integer.valueOf(i));
        }
        if (i <= 1035) {
            Prefs.aH.set(null);
            if (Prefs.aW.get().booleanValue()) {
                Prefs.aR.set(Prefs.ao.get());
                Prefs.aT.set(Boolean.TRUE);
                Prefs.aS.set(Boolean.TRUE);
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
            } else {
                Prefs.ao.set(null);
                Prefs.aT.set(Boolean.FALSE);
                Prefs.aS.set(Boolean.FALSE);
                Prefs.aV.set(null);
                Prefs.aP.set((String) null);
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.WELCOME);
            }
        } else if (i <= 1037 && !Prefs.aW.get().booleanValue()) {
            Prefs.ao.set(null);
            Prefs.aT.set(Boolean.FALSE);
            Prefs.aS.set(Boolean.FALSE);
            Prefs.aV.set(null);
            Prefs.aP.set((String) null);
            Prefs.aQ.set(null);
            SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.WELCOME);
        }
        if (i <= 1037) {
            Prefs.ak.set(AppRater.UserRating.NOT_YET);
            Prefs.Y.set(0);
        }
        if (i <= 1044 && Prefs.aU.get().intValue() > SetupWizardActivity.Stage.LINK_SOCIAL_NETWORKS.ordinal()) {
            SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
        }
        if (i <= 1048) {
            for (Integer num2 : ApiConstants.f10379c) {
                RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(num2.intValue());
                if (remoteAccountHelper != null && remoteAccountHelper.isLoggedIn()) {
                    remoteAccountHelper.j();
                }
            }
            if (Prefs.aU.get().intValue() > SetupWizardActivity.Stage.LINK_SOCIAL_NETWORKS.ordinal()) {
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
            }
        }
        Prefs.bn.set(Boolean.TRUE);
        setWhatsNewPrefs(true);
        if (i <= 1061) {
            String str = Prefs.aR.get();
            String str2 = str;
            if (StringUtils.a((CharSequence) str)) {
                str2 = str;
                if (StringUtils.b((CharSequence) Prefs.aV.get())) {
                    String str3 = Prefs.ao.get();
                    str2 = str;
                    if (StringUtils.b((CharSequence) str3)) {
                        Prefs.aR.set(str3);
                        str2 = str3;
                    }
                }
            }
            if (StringUtils.b((CharSequence) str2) && str2.startsWith("+")) {
                Prefs.aT.set(Boolean.TRUE);
            }
        }
        if (i <= f10403b) {
            List<SpeedDialActivity.SpeedDialData> a2 = SpeedDialActivity.a(Prefs.aE.get());
            if (a2.size() < 98) {
                int size = a2.size() - 1;
                int digit = a2.get(size).getDigit() + 1;
                while (true) {
                    size++;
                    if (size >= 98) {
                        break;
                    }
                    a2.add(new SpeedDialActivity.SpeedDialData(digit, "", ""));
                    digit++;
                }
                SpeedDialActivity.a(a2);
            }
        }
        if (i <= 1072) {
            CLog.a(getClass(), "Verifying speed dial isn't corrupted...");
            try {
                SpeedDialActivity.a(Prefs.aE.get());
                CLog.a(getClass(), "speed dial loadeded succesfully!");
            } catch (Throwable th) {
                CLog.a(getClass(), "speed dial corrupted, resetting pref...");
                Prefs.aE.set(null);
            }
        }
        if (i <= 1103) {
            Prefs.f15233a.set(Boolean.FALSE);
        }
        if (i <= 1107) {
            Prefs.N.set(Integer.valueOf((int) DuringCallOverlayView.OVERLAY_Y_POS_DEFAULT_VALUE));
            Prefs.bm.set(Boolean.TRUE);
        }
        if (i <= 1108) {
            Prefs.bP.set(PostCallActivity.PostCallDuration.AFTER_5_SEC);
        }
        if (i <= 1162) {
            Singletons.get().getSimManager().a();
            if (Prefs.bP.get() == PostCallActivity.PostCallDuration.AFTER_2_SEC) {
                Prefs.bP.set(PostCallActivity.PostCallDuration.AFTER_5_SEC);
            }
        }
        if (i <= 1184) {
            ThemeUtils.b();
            Prefs.dg.set("LIGHT");
        }
        if (i <= 1199) {
            ContactUtils.c();
        }
        if (i <= 1203 && Prefs.N.get().intValue() != -10000) {
            Prefs.N.set(Integer.valueOf((Prefs.N.get().intValue() + ((Activities.getScreenHeight(Activities.getScreenOrientation()) - ((int) getResources().getDimension(2131165990))) / 2)) - (((int) getResources().getDimension(2131165995)) * 2)));
        }
        if (i <= 1224) {
            IdentifyContactsTaskManager.a();
        }
        if (i <= 1231 && GoogleHelper.get().isLoggedIn()) {
            Prefs.aJ.set(Boolean.TRUE);
        }
        if (i <= 1235 && (date = Prefs.az.get()) != null) {
            Prefs.aA.set(new JSONDate(date));
        }
        if (i <= 1242) {
            a d2 = get().getObjectBoxStore().d(FastCacheData.class);
            List<FastCacheData> c2 = d2.e().a(FastCacheData_.photoDataSource, DataSource.device.name()).a().c();
            if (CollectionUtils.b(c2)) {
                for (FastCacheData fastCacheData : c2) {
                    fastCacheData.setPhotoDataSource(null);
                    fastCacheData.setPhotoUrl(null);
                }
                d2.a((Collection) c2);
            }
        }
        if (i <= 1246) {
            Query a3 = this.g.d(FastCacheData.class).e().a(FastCacheData_.nameDataSource, "").a();
            a3.a(FastCacheData_.nameDataSource, "zaPersonLookup").f();
            a3.a(FastCacheData_.nameDataSource, "nzPersonLookup").f();
            Query a4 = this.g.d(FastCacheData.class).e().a(FastCacheData_.photoDataSource, "").a();
            a4.a(FastCacheData_.photoDataSource, "zaPersonLookup").f();
            a4.a(FastCacheData_.photoDataSource, "nzPersonLookup").f();
        }
        if (i == 1251 && i2 == 1252) {
            Prefs.bb.set(Boolean.FALSE);
        }
        if (i <= 1252) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.19
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    final ArrayList arrayList = new ArrayList();
                    CallAppApplication.this.g.d(ExtractedInfo.class).e().a().a(new c<ExtractedInfo>() { // from class: com.callapp.contacts.CallAppApplication.19.1
                        @Override // io.objectbox.query.c
                        public /* synthetic */ void accept(ExtractedInfo extractedInfo) {
                            ExtractedInfo extractedInfo2 = extractedInfo;
                            extractedInfo2.phoneAsRaw = T9Helper.a((CharSequence) extractedInfo2.phoneAsRaw);
                            arrayList.add(extractedInfo2);
                        }
                    });
                    CallAppApplication.this.g.d(ExtractedInfo.class).a((Collection) arrayList);
                }
            }.execute();
        }
        if (i <= 1282) {
            ThemeUtils.b();
        }
        if (i <= 1292 && Build.VERSION.SDK_INT >= 26) {
            NotificationManager.get().b();
        }
        if (i <= 1294) {
            Prefs.bF.set(new Date());
            Prefs.bG.set(0);
            Prefs.bE.set(4);
            Prefs.bH.set(0);
            Prefs.bI.set(0);
            if (Prefs.aW.get().booleanValue()) {
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
            } else {
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.WELCOME);
            }
        }
        if (i <= 1326) {
            Prefs.dZ.set(Boolean.valueOf(Prefs.dK.isNotNull()));
        }
        if (i <= 1328 && (num = Prefs.R.get()) != null && num.intValue() < 1314) {
            long f2 = this.g.d(UserNegativeSocialData.class).e().a((io.objectbox.g) UserNegativeSocialData_.socialNetworkId, 1L).a().f();
            CLog.a(CallAppApplication.class, "Removed " + f2 + " Facebook negatives");
            AnalyticsManager.get().a(Constants.SOCIAL_PROFILE, "Removed Facebook negatives", String.valueOf(f2), (double) f2, new String[0]);
        }
        if (i <= 1330) {
            a d3 = get().getObjectBoxStore().d(FastCacheData.class);
            List<FastCacheData> c3 = d3.e().a().c();
            if (CollectionUtils.b(c3)) {
                final HashSet hashSet = new HashSet();
                for (FastCacheData fastCacheData2 : c3) {
                    String photoUrl = fastCacheData2.getPhotoUrl();
                    fastCacheData2.setPhotoUrls(new PhotoUrls(photoUrl, fastCacheData2.getPhotoDataSource()));
                    fastCacheData2.setPhotoUrl(null);
                    if (StringUtils.b((CharSequence) photoUrl)) {
                        hashSet.add(photoUrl);
                    }
                }
                d3.a((Collection) c3);
                if (CollectionUtils.b(hashSet)) {
                    new Task() { // from class: com.callapp.contacts.CallAppApplication.20
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            for (String str4 : hashSet) {
                                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str4);
                                glideRequestBuilder.e = CallAppApplication.this;
                                glideRequestBuilder.b();
                            }
                        }
                    }.execute();
                }
            }
            if (new IncognitoContactsManager().getIncognitoContactsCount() > 0) {
                Prefs.fO.set(Boolean.FALSE);
            }
            Prefs.fY.set(2);
        }
        if (i <= 1334 && PhoneManager.get().isDefaultPhoneApp()) {
            AnalyticsManager.get().a(Constants.PERMISSIONS, "Default dialer", "true");
        }
        if (i <= 1336) {
            this.g.d(CacheData.class).e().a(CacheData_.valueType, "com.callapp.contacts.api.helper.facebook.FBJSONUserOrPage").a().f();
            File file = new File(getCacheDir(), "image_manager_disk_cache");
            if (file.exists() && file.isDirectory()) {
                try {
                    IoUtils.c(file);
                } catch (IOException e2) {
                }
            }
            NotificationManager.get().b();
            a d4 = get().getObjectBoxStore().d(FastCacheData.class);
            List<FastCacheData> c4 = d4.e().a((io.objectbox.g) FastCacheData_.id, 0).a().c();
            HashMap hashMap = new HashMap();
            for (FastCacheData fastCacheData3 : c4) {
                String phoneOrIdKey = fastCacheData3.getPhoneOrIdKey();
                ArrayList arrayList = (ArrayList) hashMap.get(phoneOrIdKey);
                ArrayList arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(fastCacheData3.getId());
                hashMap.put(phoneOrIdKey, arrayList2);
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                if (((ArrayList) entry.getValue()).size() > 1) {
                    ((ArrayList) entry.getValue()).remove(((ArrayList) entry.getValue()).size() - 1);
                    Iterator it2 = ((ArrayList) entry.getValue()).iterator();
                    while (it2.hasNext()) {
                        d4.b(((Long) it2.next()).longValue());
                    }
                }
            }
        }
        if (i <= 1338) {
            NotificationManager.get().b();
        }
        if (i <= 1344) {
            Singletons.get().getPrefsStore().a("xingAccessToken", null);
            Singletons.get().getPrefsStore().a("xingAccessTokenExpire", null);
            a d5 = this.g.d(FastCacheData.class);
            long f3 = d5.e().c(FastCacheData_.nameDataSource, "xing").a().f();
            AnalyticsManager.get().a(Constants.SOCIAL_PROFILE, "Removed xing fastCache nameDataSource ", String.valueOf(f3), f3, new String[0]);
            long f4 = d5.e().c(FastCacheData_.photoDataSource, "xing").a().f();
            AnalyticsManager.get().a(Constants.SOCIAL_PROFILE, "Removed xing fastCache photoDataSource ", String.valueOf(f4), f4, new String[0]);
            long f5 = this.g.d(ChosenContactPhoto.class).e().c(ChosenContactPhoto_.dataSource, "xing").a().f();
            AnalyticsManager.get().a(Constants.SOCIAL_PROFILE, "Removed xing chosenContactPhoto data source ", String.valueOf(f5), f5, new String[0]);
            if (StringUtils.b((CharSequence) Prefs.dM.get())) {
                StringPref stringPref = Prefs.dM;
                stringPref.set(StringUtils.j(stringPref.get(), "gif"));
                a(new Runnable() { // from class: com.callapp.contacts._$$Lambda$CallAppApplication$fx_4pKy2HieNxOaDFKwyBXMbm74
                    @Override // java.lang.Runnable
                    public final void run() {
                        CallAppApplication.this.f();
                    }
                });
            }
        }
        if (i <= 1372) {
            a d6 = this.g.d(FastCacheData.class);
            long f6 = d6.e().c(FastCacheData_.nameDataSource, "linkedin").a().f();
            AnalyticsManager.get().a(Constants.SOCIAL_PROFILE, "Removed linkedin fastCache nameDataSource ", String.valueOf(f6), f6, new String[0]);
            long f7 = d6.e().c(FastCacheData_.photoDataSource, "linkedin").a().f();
            AnalyticsManager.get().a(Constants.SOCIAL_PROFILE, "Removed linkedin fastCache photoDataSource ", String.valueOf(f7), f7, new String[0]);
            long f8 = this.g.d(ChosenContactPhoto.class).e().c(ChosenContactPhoto_.dataSource, "linkedin").a().f();
            AnalyticsManager.get().a(Constants.SOCIAL_PROFILE, "Removed linkedin chosenContactPhoto data source ", String.valueOf(f8), f8, new String[0]);
        }
        if (i <= 1378) {
            e();
        }
        if (i <= 1408) {
            ThemeUtils.b();
        }
        if (i <= 1478) {
            Prefs.eh.set(Boolean.TRUE);
        }
        if (i <= 1498 || (i <= 1500 && Prefs.n.get().booleanValue())) {
            a d7 = get().getObjectBoxStore().d(MissedCallCardIds.class);
            List<MissedCallCardIds> c5 = d7.c();
            if (CollectionUtils.b(c5)) {
                for (MissedCallCardIds missedCallCardIds : c5) {
                    missedCallCardIds.setPhoneAsRaw(missedCallCardIds.getPhoneNumber());
                    missedCallCardIds.setPhoneNumber(PhoneManager.get().a(missedCallCardIds.getPhoneNumber()).a());
                }
                d7.a((Collection) c5);
            }
            a d8 = get().getObjectBoxStore().d(CallReminderFrequentData.class);
            List<CallReminderFrequentData> c6 = d8.c();
            HashMap hashMap2 = new HashMap();
            if (CollectionUtils.b(c6)) {
                d8.d();
                for (CallReminderFrequentData callReminderFrequentData : c6) {
                    Phone a5 = PhoneManager.get().a(callReminderFrequentData.getPhoneAsGlobal());
                    CallReminderFrequentData callReminderFrequentData2 = (CallReminderFrequentData) hashMap2.get(a5);
                    CallReminderFrequentData callReminderFrequentData3 = callReminderFrequentData2;
                    if (callReminderFrequentData2 == null) {
                        callReminderFrequentData3 = new CallReminderFrequentData();
                        callReminderFrequentData3.setDeleteTimeStamp(callReminderFrequentData.getDeleteTimeStamp());
                        callReminderFrequentData3.setFrequentType(callReminderFrequentData.getFrequentType());
                    }
                    if (callReminderFrequentData.getDeleteTimeStamp() > callReminderFrequentData3.getDeleteTimeStamp()) {
                        callReminderFrequentData3.setDeleteTimeStamp(callReminderFrequentData.getDeleteTimeStamp());
                    }
                    callReminderFrequentData3.setPhoneAsGlobal(a5.a());
                    hashMap2.put(a5, callReminderFrequentData3);
                }
                d8.a(hashMap2.values());
            }
        }
        if (i >= 1504 && i <= 1530 && i2 >= 1506 && i2 <= 1532) {
            Prefs.bb.set(Boolean.FALSE);
        }
        if (i <= 1532) {
            try {
                j.b(this).a().a().get();
            } catch (InterruptedException | ExecutionException e3) {
            }
            CallAppDailyWorker.f17024a.a();
            MissedCallSummaryDailyWorker.f17041a.b();
            _24HourPingWorker.f17096a.a();
            BirthdayDailyWorker.f17022a.a();
            FetchRemoteConfigWorker.f17039a.a();
            RegistrationReminderIfNeededWorker.f17074a.a();
            RescheduleSyncWorker.Companion companion = RescheduleSyncWorker.f17078a;
            RescheduleSyncWorker.Companion.a();
            new AnonymousClass21().execute();
            NotificationManager.get().b();
        }
        if (i >= 1534 && i <= 1556 && i2 >= 1536 && i2 <= 1558) {
            Prefs.bb.set(Boolean.FALSE);
        }
        if (i <= 1558) {
            Prefs.gr.set(Boolean.FALSE);
            Prefs.gs.set(Boolean.FALSE);
            Prefs.gt.set(Boolean.FALSE);
            Prefs.gu.set(Boolean.FALSE);
            MissedCallManager.d();
            MissedCallFrequentManager.a();
            NotAnswerCallSummaryDailyWorker.f17062a.b();
            new Task() { // from class: com.callapp.contacts.CallAppApplication.22
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    CallAppApplication.this.i = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.CallAppApplication.22.1
                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        public final void a() {
                            if (CallAppApplication.this.i != null) {
                                CallAppApplication.this.i.a();
                            }
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        public /* synthetic */ void a(g gVar, List list) {
                            BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        public final void a(List<i> list) {
                            if (CollectionUtils.b(list)) {
                                for (i iVar : list) {
                                    if (iVar.e()) {
                                        AnalyticsManager.get().a(Constants.PURCHASE, "order info", iVar.b(), 0.0d, "orderid", iVar.a());
                                    }
                                }
                            }
                            if (CallAppApplication.this.i != null) {
                                CallAppApplication.this.i.b();
                                CallAppApplication.this.i = null;
                            }
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        public /* synthetic */ void b(List list) {
                            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                        }
                    });
                }
            }.execute();
        }
        if (i >= 1560 && i <= 1564 && i2 >= 1562 && i2 <= 1566) {
            Prefs.bb.set(Boolean.FALSE);
        }
        if (i <= 1566) {
            LocaleUtils.b(this, LocaleUtils.b(this), false);
        }
        if (i >= 1576 && i <= 1606 && i2 >= 1578 && i2 <= 1608) {
            Prefs.bb.set(Boolean.FALSE);
        }
        if (i <= 1590) {
            d();
        }
        if (i <= 1606 && (jobScheduler = (JobScheduler) getSystemService("jobscheduler")) != null) {
            List<JobInfo> allPendingJobs = jobScheduler.getAllPendingJobs();
            if (CollectionUtils.b(allPendingJobs) && allPendingJobs.size() > 20) {
                jobScheduler.cancelAll();
                try {
                    j.b(this).a().a().get();
                } catch (InterruptedException | ExecutionException e4) {
                }
                CallAppDailyWorker.f17024a.a();
                MissedCallSummaryDailyWorker.f17041a.b();
                NotAnswerCallSummaryDailyWorker.f17062a.b();
                _24HourPingWorker.f17096a.a();
                BirthdayDailyWorker.f17022a.a();
                FetchRemoteConfigWorker.f17039a.a();
                RegistrationReminderIfNeededWorker.f17074a.a();
                RescheduleSyncWorker.Companion companion2 = RescheduleSyncWorker.f17078a;
                RescheduleSyncWorker.Companion.a();
            }
        }
        if (i <= 1610) {
            RecordConfiguration.migrateOldConfiguration();
            if (Build.VERSION.SDK_INT >= 29 && Prefs.eL.get().booleanValue()) {
                Prefs.eY.set(Boolean.TRUE);
            }
        }
        if (i >= 1612 && i <= 1644 && i2 >= 1614 && i2 <= 1646) {
            Prefs.bb.set(Boolean.FALSE);
        }
        if (i <= 1626) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.23
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    MigrationUtils.a();
                }
            }.execute();
        }
        if (i <= 1636) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.24
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    CallRecorderManager.get();
                    CallRecorderManager.d();
                }
            }.execute();
        }
        if (i <= 1646) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.25
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnalyticsDataManager.d();
                }
            }.execute();
        }
        if (i >= 1652 && i <= 1678 && i2 >= 1654 && i2 <= 1680) {
            Prefs.bb.set(Boolean.FALSE);
        }
        if (i <= 1654) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.26
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnalyticsDataManager.e();
                }
            }.execute();
        }
        if (i <= 1672) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.27
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    T9Helper.a(true);
                    MigrationUtils.e();
                    MigrationUtils.f();
                }
            }.execute();
        }
        if (i <= 1678) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.28
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    MigrationUtils.g();
                }
            }.execute();
        }
        if (i <= 1694) {
            UpdateContactsWorker.f17092a.a(0L);
            UpdateContactsDescriptionWorker.f17088a.a(5L);
        }
        if (i >= 1690 && i <= 1722 && i2 >= 1692 && i2 <= 1724) {
            Prefs.bb.set(Boolean.FALSE);
        }
        if (i >= 1732 && i <= 1744 && i2 >= 1742 && i2 <= 1746) {
            Prefs.bb.set(Boolean.FALSE);
        }
        if (i <= 1748) {
            SyncManager.resetDbAndSynchronizers();
            CacheManager.get().f14993b.evictAll();
            get().getObjectBoxStore().d(CacheData.class).d();
            IoUtils.b(IoUtils.getCacheFolder());
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationManager.get().b();
            }
        }
        if (i >= 1752 && i <= 1764 && i2 >= 1754 && i2 <= 1766) {
            Prefs.bb.set(Boolean.FALSE);
        }
        if (i <= 1766) {
            if (Prefs.aU.get().equals(Integer.valueOf(SetupWizardActivity.Stage.PAY_WALL.ordinal()))) {
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
            }
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationManager.get().b();
            }
            MigrationUtils.b();
            MigrationUtils.c();
            MigrationUtils.d();
            MigrationUtils.h();
        }
        if (i >= 1768 && i <= 1804 && i2 >= 1770 && i2 <= 1806) {
            Prefs.bb.set(Boolean.FALSE);
        }
        if (i <= 1770) {
            MigrationUtils.i();
            BackupUtils.b();
        }
        if (i <= 1792 && Prefs.gU.get().booleanValue()) {
            Prefs.gV.set(Boolean.TRUE);
        }
        CacheManager.get().a(JSONClientValidationResponse.class, "message_key");
        Prefs.ac.set(null);
        ValidateClientTask.b();
        if (Prefs.aW.get().booleanValue()) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.29
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    FcmManager.get().a();
                }
            }.execute();
        }
        Prefs.gm.set(Boolean.FALSE);
        Prefs.gp.set(new Date());
        Prefs.gn.set(Boolean.FALSE);
        if (Prefs.cX.get().booleanValue()) {
            Prefs.cX.set(Boolean.FALSE);
            Prefs.cO.b(1);
            new Task() { // from class: com.callapp.contacts.CallAppApplication.30
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnalyticsManager.get().a(Constants.RETENTION, "upgraded for free gift");
                }
            }.execute();
        }
        a();
    }

    static /* synthetic */ void a(CallAppApplication callAppApplication, final Runnable runnable) {
        callAppApplication.bindService(new Intent(callAppApplication, CallAppService.class), new ServiceConnection() { // from class: com.callapp.contacts.CallAppApplication.14
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                if (iBinder instanceof CallAppService.LocalCallAppServiceBinder) {
                    CallAppApplication.this.l = ((CallAppService.LocalCallAppServiceBinder) iBinder).getService();
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                synchronized (CallAppApplication.this.k) {
                    if (CallAppApplication.this.l != null) {
                        CallAppApplication.this.l.stopForeground(true);
                        CallAppApplication.this.l = null;
                        CallAppApplication.this.j = false;
                    }
                }
            }
        }, 1);
    }

    static /* synthetic */ void b() {
        List<String> a2 = PersonalStoreItemDataManager.a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
        if (CollectionUtils.b(a2)) {
            for (String str : a2) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str);
                glideRequestBuilder.e = get();
                GlideUtils.GlideRequestBuilder a3 = glideRequestBuilder.a(GlideUtils.f16193a, GlideUtils.f16194b);
                a3.q = true;
                a3.t = true;
                a3.d();
            }
        }
    }

    static /* synthetic */ void b(CallAppApplication callAppApplication) {
        PhoneManager.k();
        new Task() { // from class: com.callapp.contacts.CallAppApplication.6
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                GlideUtils.b(CallAppApplication.this);
                CallAppApplication.b();
            }
        }.execute();
        new Task() { // from class: com.callapp.contacts.CallAppApplication.7
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                String str = Prefs.ao.get();
                String str2 = str;
                if (StringUtils.a((CharSequence) str)) {
                    str2 = "+12129281245";
                }
                Phone.b(str2).getPhoneNumber();
            }
        }.execute();
        new Task() { // from class: com.callapp.contacts.CallAppApplication.8
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                InstallationReceiver.a(CallAppApplication.this);
            }
        }.execute();
        int versionCode = callAppApplication.getVersionCode();
        if (versionCode != 0) {
            int intValue = Prefs.T.get().intValue();
            int intValue2 = Prefs.S.get().intValue();
            boolean z = intValue != versionCode;
            boolean z2 = Build.VERSION.SDK_INT != intValue2;
            if (intValue == 0) {
                if (callAppApplication.getResources().getBoolean(2131034115)) {
                    Prefs.n.set(Boolean.TRUE);
                }
                Prefs.u.set(new Pair(10, 0));
                Prefs.ah.set(new Date());
                Prefs.R.set(Integer.valueOf(versionCode));
                if (Build.VERSION.SDK_INT >= 26) {
                    NotificationManager.get().b();
                }
                if (!callAppApplication.isUnitTestMode()) {
                    new Task() { // from class: com.callapp.contacts.CallAppApplication.18
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            RegistrationReminderIfNeededWorker.f17074a.a();
                            FetchRemoteConfigWorker.f17039a.a();
                        }
                    }.execute();
                }
                _24HourPingWorker.f17096a.a();
                boolean z3 = (callAppApplication.getResources().getConfiguration().uiMode & 48) == 16;
                ThemeUtils.setIsLight(z3);
                Prefs.di.set(z3 ? ThemeState.WHITE : ThemeState.DARK);
            } else if (z) {
                final int i = intValue;
                if (intValue < 1000) {
                    i = intValue + 1000;
                }
                try {
                    callAppApplication.a(i, versionCode);
                    new Task() { // from class: com.callapp.contacts.CallAppApplication.17
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            AnalyticsManager.get().a("Upgrading user", String.format("From version %s", Integer.valueOf(i)));
                        }
                    }.execute();
                    CLog.a(CallAppApplication.class, "Upgraded from version %s to version %s", Integer.valueOf(i), Integer.valueOf(versionCode));
                } catch (RuntimeException e2) {
                    CLog.c(CallAppApplication.class, e2, "Error while upgrading from %s to %s", Integer.valueOf(i), Integer.valueOf(versionCode));
                }
            }
            if (z2) {
                try {
                    int i2 = Build.VERSION.SDK_INT;
                    Prefs.bS.set(null);
                    Prefs.bU.set(null);
                    Prefs.bT.set(null);
                    Prefs.fA.set(Boolean.FALSE);
                    PhoneStateManager.get().initRingerHandlerIfNeeded();
                    CLog.a(CallAppApplication.class, "Upgraded from SDK version %s to SDK version %s", Integer.valueOf(intValue2), Integer.valueOf(Build.VERSION.SDK_INT));
                } catch (RuntimeException e3) {
                    CLog.c(CallAppApplication.class, e3, "Error while upgrading from SDK %s to SDK %s", Integer.valueOf(intValue2), Integer.valueOf(Build.VERSION.SDK_INT));
                }
            }
            if (z || z2) {
                Prefs.T.set(Integer.valueOf(versionCode));
                Prefs.S.set(Integer.valueOf(Build.VERSION.SDK_INT));
            }
        }
        CallLogContentObserver.a();
        new Task() { // from class: com.callapp.contacts.CallAppApplication.9
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (!CallAppApplication.this.isUnitTestMode()) {
                    ContactUtilsContactsContentObserver.a();
                    BluetoothHeadsetConnectivityManager.a();
                    SmsSentReceiver.a();
                    StartupReceiver.a();
                    try {
                        if (GooglePlayUtils.isGooglePlayServicesAvailable()) {
                            AppsFlyerLib.getInstance().setCollectIMEI(false);
                        }
                        AppsFlyerLib.getInstance().startTracking(CallAppApplication.this, Activities.getString(2131886256));
                        if (Build.VERSION.SDK_INT >= 21) {
                            WifiStateReceiver wifiStateReceiver = WifiStateReceiver.get();
                            wifiStateReceiver.f15655a = (ConnectivityManager) Singletons.a("connectivity");
                            wifiStateReceiver.f15655a.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(1).build(), wifiStateReceiver.f15656b);
                        }
                    } catch (Exception e4) {
                    }
                }
            }
        }.execute();
        if (!callAppApplication.isUnitTestMode()) {
            callAppApplication.h = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.CallAppApplication.10
                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public final void a() {
                    if (CallAppApplication.this.h != null) {
                        CallAppApplication.this.h.a();
                    }
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public /* synthetic */ void a(g gVar, List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$a(this, gVar, list);
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public final void a(List<i> list) {
                    CallAppApplication.this.h.b();
                    CallAppApplication.this.h = null;
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                public /* synthetic */ void b(List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                }
            });
        }
        if (!callAppApplication.isUnitTestMode() && !AdUtils.a()) {
            callAppApplication.b(new Runnable() { // from class: com.callapp.contacts.CallAppApplication.11
                @Override // java.lang.Runnable
                public void run() {
                    BaseActivity.safeRun(new Runnable() { // from class: com.callapp.contacts.CallAppApplication.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AdUtils.d();
                        }
                    });
                }
            });
        }
        if (!callAppApplication.isUnitTestMode() && !Prefs.ga.get().booleanValue()) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.12
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    File file = new File(CallAppApplication.this.getExternalCacheDir(), "image_manager_disk_cache");
                    if (file.exists() && file.isDirectory()) {
                        File file2 = new File(file, ".nomedia");
                        if (!file2.exists()) {
                            try {
                                if (file2.createNewFile()) {
                                    Prefs.ga.set(Boolean.TRUE);
                                }
                            } catch (IOException e4) {
                                CLog.a(new CallAppGlideInitializationException("Unable to create nomedia cache file " + e4.getMessage()));
                            }
                        }
                    }
                }
            }.execute();
        }
        new Task() { // from class: com.callapp.contacts.CallAppApplication.13
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (Prefs.aW.get().booleanValue()) {
                    try {
                        List<t> list = j.b(CallAppApplication.this).b(CallAppDailyWorker.f17024a.getTAG()).get();
                        CallAppDailyWorker.Companion companion = CallAppDailyWorker.f17024a;
                        if (CallAppDailyWorker.Companion.a(list)) {
                            CallAppDailyWorker.f17024a.a();
                        }
                    } catch (Exception e4) {
                    }
                }
            }
        }.execute();
    }

    private void d() {
        PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f14492a;
        for (PersonalStoreItemUrlData personalStoreItemUrlData : PersonalStoreItemDataManager.Companion.b(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE)) {
            String personalStoreItemUrl = personalStoreItemUrlData.getPersonalStoreItemUrl();
            File file = new File(personalStoreItemUrl);
            if (StringUtils.b((CharSequence) personalStoreItemUrl) && !StringUtils.c(personalStoreItemUrl, "_encoded") && file.exists()) {
                final HashMap hashMap = new HashMap();
                File file2 = new File(personalStoreItemUrl + "_encoded");
                final String uuid = UUID.randomUUID().toString();
                hashMap.put(uuid, new Pair(file2, file));
                new CallAppTransformation.TransformationBuilder(get(), Uri.parse(personalStoreItemUrl), file2, uuid, new e() { // from class: com.callapp.contacts.CallAppApplication.31
                    @Override // com.linkedin.android.litr.e
                    public final void a(String str) {
                    }

                    @Override // com.linkedin.android.litr.e
                    public final void a(String str, float f2) {
                    }

                    @Override // com.linkedin.android.litr.e
                    public final void a(String str, Throwable th) {
                        CLog.a(th);
                        Pair pair = (Pair) hashMap.get(uuid);
                        if (pair != null) {
                            IoUtils.b((File) pair.first);
                        }
                    }

                    @Override // com.linkedin.android.litr.e
                    public final void b(String str) {
                        Pair pair = (Pair) hashMap.get(uuid);
                        if (pair != null) {
                            ((File) pair.first).renameTo((File) pair.second);
                        }
                    }

                    @Override // com.linkedin.android.litr.e
                    public final void c(String str) {
                    }
                }).a();
            }
        }
    }

    private void e() {
        a d2 = this.g.d(FastCacheData.class);
        List<FastCacheData> c2 = d2.e().c(FastCacheData_.nameDataSource, "googlePlus").a().c();
        if (CollectionUtils.b(c2)) {
            for (FastCacheData fastCacheData : c2) {
                fastCacheData.setNameDataSource(DataSource.google);
            }
            d2.a((Collection) c2);
            long size = c2.size();
            AnalyticsManager.get().a(Constants.SOCIAL_PROFILE, "Replaced googlePlus fastCache nameDataSource ", String.valueOf(size), size, new String[0]);
        }
        List<FastCacheData> c3 = d2.e().c(FastCacheData_.photoDataSource, "googlePlus").a().c();
        if (CollectionUtils.b(c3)) {
            for (FastCacheData fastCacheData2 : c3) {
                fastCacheData2.setPhotoDataSource(DataSource.google);
            }
            d2.a((Collection) c3);
            long size2 = c3.size();
            AnalyticsManager.get().a(Constants.SOCIAL_PROFILE, "Replaced googlePlus fastCache photoDataSource ", String.valueOf(size2), size2, new String[0]);
        }
        a d3 = this.g.d(ChosenContactPhoto.class);
        List<ChosenContactPhoto> c4 = d3.e().c(ChosenContactPhoto_.dataSource, "googlePlus").a().c();
        if (CollectionUtils.b(c4)) {
            for (ChosenContactPhoto chosenContactPhoto : c4) {
                chosenContactPhoto.setDataSource(DataSource.google);
            }
            d3.a((Collection) c4);
            long size3 = c4.size();
            AnalyticsManager.get().a(Constants.SOCIAL_PROFILE, "Replaced googlePlus chosenContactPhoto data source ", String.valueOf(size3), size3, new String[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(Prefs.dM.get());
        glideRequestBuilder.e = this;
        glideRequestBuilder.b();
    }

    public static CallAppApplication get() {
        return Singletons.get().getApplication();
    }

    private void setWhatsNewPrefs(boolean z) {
        Prefs.bb.set(Boolean.valueOf(z));
        Prefs.el.set(Boolean.valueOf(z));
    }

    public final Object a(String str) {
        return super.getSystemService(str);
    }

    public final void a(final Runnable runnable) {
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            BaseActivity.safeRun(runnable);
        } else {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.32
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    BaseActivity.safeRun(runnable);
                }
            }.execute();
        }
    }

    public final void a(Runnable runnable, long j) {
        this.f10405d.postDelayed(runnable, j);
    }

    public final void a(final boolean z, final Intent intent) {
        if (!isUnitTestMode()) {
            final Runnable runnable = new Runnable() { // from class: com.callapp.contacts.CallAppApplication.15
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        synchronized (CallAppApplication.this.k) {
                            boolean z2 = CallAppApplication.this.j;
                            boolean z3 = z;
                            if (z2 != z3) {
                                CallAppApplication.this.j = z3;
                                if (z) {
                                    NotificationManager.get().b(12);
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        CallAppApplication.this.l.startForeground(12, NotificationManager.get().getCurrentCallAppInCallNotificationBuilder().b(), 4);
                                    } else {
                                        CallAppApplication.this.l.startForeground(12, NotificationManager.get().getCurrentCallAppInCallNotificationBuilder().b());
                                    }
                                } else {
                                    CallAppApplication.this.l.stopForeground(true);
                                }
                            }
                            if (z && intent != null) {
                                try {
                                    CallAppApplication.this.l.startService(intent);
                                } catch (IllegalStateException e2) {
                                    intent.putExtra("start_foreground", true);
                                    CallAppApplication.this.startForegroundService(intent);
                                }
                            }
                        }
                    } catch (Exception e3) {
                        CLog.a(CallAppApplication.class, e3);
                    }
                }
            };
            f.post(new Runnable() { // from class: com.callapp.contacts.CallAppApplication.16
                @Override // java.lang.Runnable
                public void run() {
                    if (CallAppApplication.this.l == null) {
                        CallAppApplication.a(CallAppApplication.this, runnable);
                    } else {
                        runnable.run();
                    }
                }
            });
        }
    }

    @Override // com.google.android.play.core.splitcompat.SplitCompatApplication, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(LocaleUtils.a(context));
        com.google.android.play.core.splitcompat.a.a(this);
    }

    public final void b(Runnable runnable) {
        this.f10405d.post(runnable);
    }

    public final void c(Runnable runnable) {
        this.f10405d.removeCallbacks(runnable);
    }

    public final void d(final Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            BaseActivity.safeRun(runnable);
        } else {
            this.f10405d.post(new Runnable() { // from class: com.callapp.contacts.CallAppApplication.33
                @Override // java.lang.Runnable
                public void run() {
                    BaseActivity.safeRun(runnable);
                }
            });
        }
    }

    public long getDaysSinceInstall() {
        Date date = Prefs.ah.get();
        if (date == null) {
            return 0L;
        }
        Date date2 = new Date();
        return (date2.getTime() - date.getTime()) / 86400000;
    }

    public FilteredActivityLifecycleCallback getFilteredActivityLifecycleCallback() {
        return this.m;
    }

    public Handler getHandler() {
        return this.f10405d;
    }

    public BoxStore getObjectBoxStore() {
        return this.g;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        StringUtils.a(CallAppApplication.class);
        return (str == null || !str.equals("keyguard")) ? super.getSystemService(str) : FilteredReceiversManager.getKeyguardManager();
    }

    public String getVersion() {
        String str;
        try {
            str = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            str = "Unknown";
        }
        return str;
    }

    public int getVersionCode() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            CLog.d(CallAppApplication.class, e2, "Couldn't find app versionCode");
            return 0;
        }
    }

    public boolean isUnitTestMode() {
        return false;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        LocaleUtils.a(this);
        Activities.d();
    }

    @Override // android.app.Application
    public void onCreate() {
        if (!b.a(this).a()) {
            super.onCreate();
            super.registerActivityLifecycleCallbacks(this.m);
            try {
                if (getResources().getBoolean(2131034115)) {
                    if (PreferenceManager.getDefaultSharedPreferences(this).getBoolean(f10404c, false)) {
                        ReflectionUtils.a("com.callapp.contacts.debug.CallAppLeakCanaryManager", "initLeakCanary", (List<Class<?>>) Collections.singletonList(Application.class), (List<Object>) Collections.singletonList(this));
                    } else {
                        ReflectionUtils.a("com.callapp.contacts.debug.CallAppLeakCanaryManager", "disableLeakCanary", (List<Class<?>>) null, (List<Object>) null);
                    }
                }
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException | Exception e2) {
            }
            CrashlyticsUtils.a(this);
            try {
                io.objectbox.b builder = MyObjectBox.builder();
                builder.f = io.objectbox.b.a(this);
                File file = new File(io.objectbox.b.b(this), "objectbox");
                if (!file.exists()) {
                    file.mkdir();
                    if (!file.exists()) {
                        throw new RuntimeException("Could not init Android base dir at " + file.getAbsolutePath());
                    }
                }
                if (file.isDirectory()) {
                    builder.f36192c = file;
                    builder.i = true;
                    builder.l = 512;
                    if (builder.f36191b == null) {
                        builder.f36193d = "CallAppOB";
                        builder.m = 3;
                        builder.s = new h() { // from class: com.callapp.contacts.CallAppApplication.1
                            @Override // io.objectbox.h
                            public final void a(Throwable th) {
                                CLog.a(CallAppApplication.class, th);
                            }
                        };
                        if (!isUnitTestMode() && getResources().getBoolean(2131034115)) {
                            builder.h = 12;
                            builder.j = true;
                            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build());
                            if (Build.VERSION.SDK_INT >= 28) {
                                StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectAll().detectNonSdkApiUsage().penaltyLog().build());
                            } else {
                                StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectAll().penaltyLog().build());
                            }
                        }
                        if (!isUnitTestMode()) {
                            try {
                                this.g = builder.a();
                            } catch (Exception e3) {
                                CrashlyticsUtils.a(e3);
                                Log.e(CallAppApplication.class.getSimpleName(), "objectBoxStore build", e3);
                                try {
                                    BoxStore boxStore = this.g;
                                    if (boxStore != null) {
                                        boxStore.close();
                                    }
                                    builder.p = true;
                                    this.g = builder.a();
                                } catch (Exception e4) {
                                    CrashlyticsUtils.a(e4);
                                    Log.e(CallAppApplication.class.getSimpleName(), "objectBoxStore build with previous commit", e4);
                                    System.exit(1);
                                }
                            }
                            if (this.g == null) {
                                DbException dbException = new DbException("objectBoxStore is null");
                                CrashlyticsUtils.a(dbException);
                                Log.e(CallAppApplication.class.getSimpleName(), dbException.getMessage(), dbException);
                                System.exit(1);
                            }
                            BoxStore boxStore2 = this.g;
                            BoxStore.nativeSetDbExceptionListener(boxStore2.f36178b, new DbExceptionListener() { // from class: com.callapp.contacts.CallAppApplication.2
                                @Override // io.objectbox.exception.DbExceptionListener
                                public void onDbException(Exception exc) {
                                    DbExceptionListener._CC.cancelCurrentException();
                                    if (exc instanceof DbFullException) {
                                        StringBuilder sb = new StringBuilder();
                                        for (Class<?> cls : CallAppApplication.this.g.c()) {
                                            sb.append(cls.getSimpleName() + ": " + CallAppApplication.this.g.d(cls).b() + ", ");
                                        }
                                        sb.append("Diagnose: " + BoxStore.nativeDiagnose(CallAppApplication.this.g.f36178b) + ", error: " + exc.getMessage());
                                        CrashlyticsUtils.a(new DbException(sb.toString(), exc.getCause()));
                                        return;
                                    }
                                    CrashlyticsUtils.a(exc);
                                }
                            });
                            try {
                                this.g.d(OBPref.class).e().a().a();
                            } catch (Exception e5) {
                                CrashlyticsUtils.a(e5);
                                Log.e(CallAppApplication.class.getSimpleName(), "objectBoxStore first query", e5);
                                System.exit(1);
                            }
                        }
                        if (Payload.SOURCE_HUAWEI.equalsIgnoreCase(Build.MANUFACTURER)) {
                            com.e.a.a.a.a(this, new a.c() { // from class: com.callapp.contacts.CallAppApplication.3
                                @Override // com.e.a.a.a.c
                                public final void a() {
                                }
                            });
                        }
                        if (!isUnitTestMode()) {
                            HandlerThread handlerThread = e;
                            handlerThread.start();
                            AndroidUtils.a(handlerThread.getLooper());
                            Handler handler = new Handler(handlerThread.getLooper());
                            f = handler;
                            handler.post(new Runnable() { // from class: com.callapp.contacts.CallAppApplication.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    CallAppApplication.a(CallAppApplication.this, (Runnable) null);
                                }
                            });
                        }
                        ViewabilityManager.setViewabilityEnabled(false);
                        final Singletons singletons = Singletons.get();
                        singletons.H = new WeakReference<>(this);
                        singletons.getPhoneStateManager();
                        singletons.getCallAppRemoteConfigManager();
                        new Task() { // from class: com.callapp.contacts.manager.Singletons.1
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                Networking.getUserAgent(this);
                                if (!CallAppApplication.get().isUnitTestMode()) {
                                    CrashlyticsUtils.b(this);
                                }
                                singletons.getProximityManager();
                                singletons.getAnalyticsManager();
                                singletons.getRecordManager();
                                singletons.getRecordTestManager();
                                singletons.getCacheManager();
                                singletons.getCallAppRemoteConfigManager().a();
                                singletons.getWearableClientHandler();
                            }
                        }.execute();
                        ThemeUtils.a();
                        setTheme(ThemeUtils.getThemeStyleResource());
                        CallAppRemoteConfigManager.get().setDefaultsIfNeeded(new Task.DoneListener() { // from class: com.callapp.contacts.CallAppApplication.5
                            @Override // com.callapp.contacts.manager.task.Task.DoneListener
                            public void onDone() {
                                CallAppApplication.b(CallAppApplication.this);
                            }
                        });
                        return;
                    }
                    throw new IllegalArgumentException("Already has directory, cannot assign name");
                }
                throw new RuntimeException("Android base dir is not a dir: " + file.getAbsolutePath());
            } catch (Exception e6) {
                CrashlyticsUtils.a(e6);
                Log.e(CallAppApplication.class.getSimpleName(), "boxStoreBuilder failed", e6);
                System.exit(1);
            }
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        CLog.a(CallAppApplication.class, "onLowMemory called");
        Singletons.get().getCacheManager().f14993b.evictAll();
        GlideUtils.a(this).onLowMemory();
        PhoneManager.get().f15123a.evictAll();
        super.onLowMemory();
    }

    @Override // android.app.Application
    public void onTerminate() {
        Singletons.SenderType[] values;
        super.unregisterActivityLifecycleCallbacks(this.m);
        ContactUtilsContactsContentObserver.c();
        CallLogContentObserver.c();
        if (!isUnitTestMode()) {
            Singletons singletons = Singletons.get();
            ActionsManager actionsManager = singletons.f14931a;
            singletons.f14931a = null;
            Singletons.a(actionsManager);
            UserProfileManager userProfileManager = singletons.f14932b;
            singletons.f14932b = null;
            Singletons.a(userProfileManager);
            PhoneVerifierManager phoneVerifierManager = singletons.f14933c;
            singletons.f14933c = null;
            Singletons.a(phoneVerifierManager);
            ExceptionManager exceptionManager = singletons.I;
            singletons.I = null;
            Singletons.a(exceptionManager);
            OverlayManager overlayManager = singletons.g;
            singletons.g = null;
            Singletons.a(overlayManager);
            RecognizedContactNotificationManager recognizedContactNotificationManager = singletons.t;
            singletons.t = null;
            Singletons.a(recognizedContactNotificationManager);
            CatalogManager catalogManager = singletons.u;
            singletons.u = null;
            Singletons.a(catalogManager);
            PopupManager popupManager = singletons.i;
            singletons.i = null;
            Singletons.a(popupManager);
            FcmManager fcmManager = singletons.j;
            singletons.j = null;
            Singletons.a(fcmManager);
            PhoneManager phoneManager = singletons.h;
            singletons.h = null;
            Singletons.a(phoneManager);
            GmailManager gmailManager = singletons.r;
            singletons.r = null;
            Singletons.a(gmailManager);
            LockscreenKeyguardManager lockscreenKeyguardManager = singletons.m;
            singletons.m = null;
            Singletons.a(lockscreenKeyguardManager);
            WifiLockManager wifiLockManager = singletons.n;
            singletons.n = null;
            Singletons.a(wifiLockManager);
            ProximityManager proximityManager = singletons.o;
            singletons.o = null;
            Singletons.a(proximityManager);
            ContactLoaderManager contactLoaderManager = singletons.s;
            singletons.s = null;
            Singletons.a(contactLoaderManager);
            FeedbackManager feedbackManager = singletons.f14934d;
            singletons.f14934d = null;
            Singletons.a(feedbackManager);
            CallAppChatHeadLifecycleObserverManager callAppChatHeadLifecycleObserverManager = singletons.e;
            singletons.e = null;
            Singletons.a(callAppChatHeadLifecycleObserverManager);
            NotificationManager notificationManager = singletons.k;
            singletons.k = null;
            Singletons.a(notificationManager);
            CacheManager cacheManager = singletons.l;
            singletons.l = null;
            Singletons.a(cacheManager);
            AnalyticsManager analyticsManager = singletons.p;
            singletons.p = null;
            Singletons.a(analyticsManager);
            PhoneStateManager phoneStateManager = singletons.f;
            singletons.f = null;
            Singletons.a(phoneStateManager);
            LocalPrefsStore localPrefsStore = singletons.q;
            singletons.q = null;
            Singletons.a(localPrefsStore);
            SimManager simManager = singletons.J;
            singletons.J = null;
            Singletons.a(simManager);
            FirstTimeExperienceCallLog firstTimeExperienceCallLog = singletons.K;
            singletons.K = null;
            Singletons.a(firstTimeExperienceCallLog);
            CallRecorderManager callRecorderManager = singletons.L;
            singletons.L = null;
            Singletons.a(callRecorderManager);
            KeyguardActivityStateManager keyguardActivityStateManager = singletons.M;
            singletons.M = null;
            Singletons.a(keyguardActivityStateManager);
            for (Singletons.SenderType senderType : Singletons.SenderType.values()) {
                ManagedLifecycle access$1800 = Singletons.SenderType.access$1800(senderType);
                Singletons.SenderType.access$1802(senderType, null);
                Singletons.a(access$1800);
            }
            if (singletons.w != null) {
                WhatsAppNotificationDataExtractor whatsAppNotificationDataExtractor = singletons.w;
                singletons.w = null;
                Singletons.a(whatsAppNotificationDataExtractor);
            }
            if (singletons.x != null) {
                ViberNotificationDataExtractor viberNotificationDataExtractor = singletons.x;
                singletons.x = null;
                Singletons.a(viberNotificationDataExtractor);
            }
            if (singletons.y != null) {
                TelegramNotificationDataExtractor telegramNotificationDataExtractor = singletons.y;
                singletons.y = null;
                Singletons.a(telegramNotificationDataExtractor);
            }
            if (singletons.z != null) {
                VonageNotificationDataExtractor vonageNotificationDataExtractor = singletons.z;
                singletons.z = null;
                Singletons.a(vonageNotificationDataExtractor);
            }
            if (singletons.A != null) {
                SignalNotificationDataExtractor signalNotificationDataExtractor = singletons.A;
                singletons.A = null;
                Singletons.a(signalNotificationDataExtractor);
            }
            if (singletons.B != null) {
                WearableClientHandler wearableClientHandler = singletons.B;
                singletons.B = null;
                Singletons.a(wearableClientHandler);
            }
            if (singletons.C != null) {
                CallAppRemoteConfigManager callAppRemoteConfigManager = singletons.C;
                singletons.C = null;
                Singletons.a(callAppRemoteConfigManager);
            }
            if (singletons.D != null) {
                CallAppClipboardManager callAppClipboardManager = singletons.D;
                singletons.D = null;
                Singletons.a(callAppClipboardManager);
            }
            if (singletons.E != null) {
                LocationPrefs locationPrefs = singletons.E;
                singletons.E = null;
                Singletons.a(locationPrefs);
            }
            IncognitoCallManager incognitoCallManager = singletons.v;
            singletons.v = null;
            Singletons.a(incognitoCallManager);
            RetentionAnalytics retentionAnalytics = singletons.F;
            singletons.F = null;
            Singletons.a(retentionAnalytics);
            VideoCacheManager videoCacheManager = singletons.G;
            singletons.G = null;
            Singletons.a(videoCacheManager);
            singletons.H = null;
        }
        Handler handler = f;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        if (Build.VERSION.SDK_INT >= 21 && !isUnitTestMode()) {
            WifiStateReceiver wifiStateReceiver = WifiStateReceiver.get();
            wifiStateReceiver.f15655a.unregisterNetworkCallback(wifiStateReceiver.f15656b);
        }
        super.onTerminate();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i == 80 || i == 60 || i == 15 || i == 5) {
            try {
                Singletons.get().getCacheManager().f14993b.evictAll();
                PhoneManager.get().f15123a.evictAll();
            } catch (Exception e2) {
            }
        }
        GlideUtils.a(this).onTrimMemory(i);
        super.onTrimMemory(i);
    }

    @Override // android.app.Application
    public void registerActivityLifecycleCallbacks(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        StringUtils.a(CallAppApplication.class);
        new StringBuilder("registerActivityLifecycleCallbacks callback=").append(activityLifecycleCallbacks);
        this.m.f10455a.add(activityLifecycleCallbacks);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return super.registerReceiver(FilteredReceiversManager.a(broadcastReceiver, intentFilter), intentFilter);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        return super.registerReceiver(FilteredReceiversManager.a(broadcastReceiver, intentFilter), intentFilter, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        return super.registerReceiver(FilteredReceiversManager.a(broadcastReceiver, intentFilter), intentFilter, str, handler);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
        return super.registerReceiver(FilteredReceiversManager.a(broadcastReceiver, intentFilter), intentFilter, str, handler, i);
    }

    @Override // android.app.Application
    public void unregisterActivityLifecycleCallbacks(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        StringUtils.a(CallAppApplication.class);
        new StringBuilder("unregisterActivityLifecycleCallbacks callback=").append(activityLifecycleCallbacks);
        this.m.f10455a.remove(activityLifecycleCallbacks);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        super.unregisterReceiver(FilteredReceiversManager.a(broadcastReceiver));
    }
}
