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
import androidx.work.C3163t;
import androidx.work.impl.C3068j;
import com.android.billingclient.api.C3341g;
import com.android.billingclient.api.C3344i;
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
import com.callapp.contacts.widget.floatingwidget.p240ui.callapp.CallAppChatHeadLifecycleObserverManager;
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
import com.google.android.gms.ads.AdActivity;
import com.google.android.play.core.missingsplits.C15092b;
import com.google.android.play.core.splitcompat.C15105a;
import com.google.android.play.core.splitcompat.SplitCompatApplication;
import com.linkedin.android.litr.AbstractC16637e;
import com.mopub.common.ViewabilityManager;
import com.mopub.network.Networking;
import com.p269e.p270a.p271a.C9332a;
import io.objectbox.AbstractC17979h;
import io.objectbox.BoxStore;
import io.objectbox.C17944a;
import io.objectbox.C17947b;
import io.objectbox.C17978g;
import io.objectbox.exception.DbException;
import io.objectbox.exception.DbExceptionListener;
import io.objectbox.exception.DbFullException;
import io.objectbox.query.AbstractC17985c;
import io.objectbox.query.Query;
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

    /* renamed from: a */
    public static boolean f19159a = false;

    /* renamed from: b */
    public static int f19160b;

    /* renamed from: c */
    public static String f19161c;

    /* renamed from: e */
    private static final HandlerThread f19162e;

    /* renamed from: f */
    private static Handler f19163f;

    /* renamed from: n */
    private static final Set<String> f19164n;

    /* renamed from: g */
    private BoxStore f19166g;

    /* renamed from: h */
    private BillingManager f19167h;

    /* renamed from: i */
    private BillingManager f19168i;

    /* renamed from: l */
    private Service f19171l;

    /* renamed from: d */
    private final Handler f19165d = new Handler();

    /* renamed from: j */
    private boolean f19169j = false;

    /* renamed from: k */
    private final Object f19170k = new Object();

    /* renamed from: m */
    private final FilteredActivityLifecycleCallback f19172m = new FilteredActivityLifecycleCallback();

    /* renamed from: com.callapp.contacts.CallAppApplication$21 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/CallAppApplication$21.class */
    public class C554021 extends Task {
        C554021() {
            CallAppApplication.this = r4;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            CallAppApplication.this.f19168i = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.CallAppApplication.21.1
                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: a */
                public final void mo26177a() {
                    if (CallAppApplication.this.f19168i != null) {
                        CallAppApplication.this.f19168i.m28298a();
                    }
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: a */
                public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: a */
                public final void mo26175a(final List<C3344i> list) {
                    CatalogManager.get().m29979a(CallAppApplication.this.f19168i, list).m29956a(new CatalogManager.OnCatalogAttributesLoaded() { // from class: com.callapp.contacts.CallAppApplication.21.1.1
                        @Override // com.callapp.contacts.activity.marketplace.catalog.CatalogManager.DoneWithPayload
                        public /* synthetic */ void onDone(CatalogManager.CatalogAttributes catalogAttributes) {
                            ArrayList arrayList = new ArrayList();
                            for (JSONStoreCallScreenThemeItem jSONStoreCallScreenThemeItem : catalogAttributes.getAvailableCallScreenThemes()) {
                                String sku = jSONStoreCallScreenThemeItem.getSku();
                                if (StringUtils.m26045b((CharSequence) sku)) {
                                    arrayList.add(sku.toLowerCase());
                                }
                            }
                            ArrayList arrayList2 = new ArrayList(Arrays.asList(Prefs.f26352cW.isNotNull() ? Prefs.f26352cW.get() : new String[0]));
                            if (CollectionUtils.m26068b(list)) {
                                for (C3344i c3344i : list) {
                                    String m38188b = c3344i.m38188b();
                                    if (StringUtils.m26045b((CharSequence) m38188b) && (CollectionUtils.m26073a(arrayList, m38188b.toLowerCase()) || CollectionUtils.m26073a(arrayList2, m38188b.toLowerCase()))) {
                                        Prefs.f26429du.set(Boolean.TRUE);
                                        break;
                                    }
                                }
                            }
                            if (CollectionUtils.m26073a(arrayList, PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE)) || CollectionUtils.m26073a(arrayList2, PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE))) {
                                Prefs.f26430dv.set(Boolean.TRUE);
                            }
                            if (CollectionUtils.m26073a(arrayList, PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.COVER)) || CollectionUtils.m26073a(arrayList2, PersonalStoreItemHelper.m30047a(PersonalStoreItemUrlData.PersonalStoreItemType.COVER))) {
                                Prefs.f26384dB.set(Boolean.TRUE);
                            }
                            if (CallAppApplication.this.f19168i != null) {
                                CallAppApplication.this.f19168i.m28290b();
                                CallAppApplication.this.f19168i = null;
                            }
                        }
                    });
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: b */
                public /* synthetic */ void mo26174b(List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                }
            });
            if (Prefs.f26427ds.isNotNull()) {
                if (!StringUtils.m26037c(Prefs.f26427ds.get(), "cst_store_pr_personal_l_v")) {
                    PersonalStoreItemDataManager.f25278a.m28916a("666666", Prefs.f26427ds.get(), Integer.MAX_VALUE, PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
                    Prefs.f26429du.set(Boolean.TRUE);
                }
                Prefs.f26427ds.set(null);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback.class */
    public static class FilteredActivityLifecycleCallback implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        CopyOnWriteArrayList<Application.ActivityLifecycleCallbacks> f19222a = new CopyOnWriteArrayList<>();

        /* renamed from: a */
        public final void m31851a(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreStarted");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreStarted(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        /* renamed from: b */
        public final void m31850b(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostStarted");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostStarted(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        /* renamed from: c */
        public final void m31849c(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityStarted");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityStarted(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        /* renamed from: d */
        public final void m31848d(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreResumed");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreResumed(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        /* renamed from: e */
        public final void m31847e(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostResumed");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostResumed(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        /* renamed from: f */
        public final void m31846f(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityResumed");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityResumed(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        /* renamed from: g */
        public final void m31845g(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPrePaused");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPrePaused(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        /* renamed from: h */
        public final void m31844h(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostPaused");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostPaused(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        /* renamed from: i */
        public final void m31843i(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPaused");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPaused(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        /* renamed from: j */
        public final void m31842j(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreStopped");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreStopped(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        /* renamed from: k */
        public final void m31841k(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostStopped");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostStopped(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        /* renamed from: l */
        public final void m31840l(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityStopped");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityStopped(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityCreated");
            if (CallAppApplication.f19164n.contains(activity.getClass().getCanonicalName())) {
                Activities.setKeyguardDismissAndScreenWindowFlags(activity);
            }
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityCreated(activity, bundle);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityDestroyed");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityDestroyed(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31843i(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityPaused skipped");
            CLog.m27606a(simpleName);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostCreated");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostCreated(activity, bundle);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostDestroyed(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostDestroyed");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostDestroyed(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostPaused(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31844h(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityPostPaused skipped");
            CLog.m27606a(simpleName);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31847e(activity);
                return;
            }
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostResumed skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostSaveInstanceState(Activity activity, Bundle bundle) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostSaveInstanceState");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPostSaveInstanceState(activity, bundle);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31850b(activity);
                return;
            }
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPostStarted skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStopped(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31841k(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityPostStopped skipped");
            CLog.m27606a(simpleName);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreCreated");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreCreated(activity, bundle);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreDestroyed");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreDestroyed(activity);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31845g(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityPrePaused skipped");
            CLog.m27606a(simpleName);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreResumed(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31848d(activity);
                return;
            }
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreResumed skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreSaveInstanceState(Activity activity, Bundle bundle) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreSaveInstanceState");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivityPreSaveInstanceState(activity, bundle);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStarted(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31851a(activity);
                return;
            }
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityPreStarted skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31842j(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityPreStopped skipped");
            CLog.m27606a(simpleName);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31846f(activity);
                return;
            }
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityResumed skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivitySaveInstanceState");
            if (CollectionUtils.m26068b(this.f19222a)) {
                Iterator<Application.ActivityLifecycleCallbacks> it2 = this.f19222a.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onActivitySaveInstanceState(activity, bundle);
                    } catch (Exception e) {
                        CLog.m27596b(CallAppApplication.class, e);
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31849c(activity);
                return;
            }
            CLog.m27611a(CallAppApplication.class, activity.getClass().getSimpleName() + ", onActivityStarted skipped");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (!(activity instanceof BaseActivity) || ((BaseActivity) activity).allowLifecycleChangesDuringCalls()) {
                m31840l(activity);
                return;
            }
            String simpleName = BaseActivity.class.getSimpleName();
            StringBuilder sb = new StringBuilder();
            sb.append(activity.getClass().getSimpleName());
            sb.append(", onActivityStopped skipped");
            CLog.m27606a(simpleName);
        }
    }

    static {
        try {
            System.loadLibrary("ccr");
            f19159a = true;
        } catch (Throwable th) {
            th.getMessage();
        }
        f19160b = 1070;
        f19161c = "CallAppApplication.leakCanaryEnabled";
        f19162e = new HandlerThread("StartCallAppService");
        f19164n = new HashSet(Arrays.asList("com.facebook.ads.AudienceNetworkActivity", "com.mopub.common.MoPubBrowser", "com.mopub.mobileads.MoPubActivity", "com.mopub.mobileads.MraidActivity", "com.mopub.mobileads.RewardedMraidActivity", "com.mopub.mobileads.MraidVideoPlayerActivity", AdActivity.CLASS_NAME, "com.inmobi.ads.rendering.InMobiAdActivity", "com.amazon.device.ads.DTBActivity", "com.criteo.view.InterstialHtmlAdActivity", "com.criteo.publisher.CriteoInterstitialActivity", "com.verizon.ads.interstitialwebadapter.WebViewActivity", "net.pubnative.lite.sdk.interstitial.activity.MraidInterstitialActivity", "net.pubnative.lite.sdk.interstitial.activity.VastInterstitialActivity", "io.bidmachine.ads.networks.mraid.MraidActivity", "io.bidmachine.nativead.view.VideoPlayerActivity"));
    }

    /* renamed from: a */
    public static void m31877a() {
        Prefs.f26516fb.set(0);
        Prefs.f26518fd.set(null);
        Prefs.f26517fc.set(null);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:418:0x0fb3 -> B:181:0x0746). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:419:0x0fb7 -> B:256:0x0b7f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:420:0x0fbb -> B:304:0x0ccf). Please submit an issue!!! */
    /* renamed from: a */
    private void m31876a(int i, int i2) {
        JobScheduler jobScheduler;
        Integer num;
        Date date;
        if (!ThemeUtils.m27376b(Prefs.f26415dg.get())) {
            Prefs.f26415dg.set("LIGHT");
        }
        Prefs.f26258ai.set(new Date());
        Prefs.f26249aZ.set(Boolean.TRUE);
        Prefs.f26253ad.set(null);
        Prefs.f26494fF.set(-1L);
        Prefs.f26495fG.set(0);
        Prefs.f26435e.set(0);
        Prefs.f26488f.set(0);
        Prefs.f26556gO.set(Boolean.FALSE);
        AdUtils.m27260c();
        if (Prefs.f26214R.get() == null) {
            Prefs.f26214R.set(Integer.valueOf(i));
        }
        if (i <= 1035) {
            Prefs.f26231aH.set(null);
            if (Prefs.f26246aW.get().booleanValue()) {
                Prefs.f26241aR.set(Prefs.f26264ao.get());
                Prefs.f26243aT.set(Boolean.TRUE);
                Prefs.f26242aS.set(Boolean.TRUE);
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
            } else {
                Prefs.f26264ao.set(null);
                Prefs.f26243aT.set(Boolean.FALSE);
                Prefs.f26242aS.set(Boolean.FALSE);
                Prefs.f26245aV.set(null);
                Prefs.f26239aP.set((String) null);
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.WELCOME);
            }
        } else if (i <= 1037 && !Prefs.f26246aW.get().booleanValue()) {
            Prefs.f26264ao.set(null);
            Prefs.f26243aT.set(Boolean.FALSE);
            Prefs.f26242aS.set(Boolean.FALSE);
            Prefs.f26245aV.set(null);
            Prefs.f26239aP.set((String) null);
            Prefs.f26240aQ.set(null);
            SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.WELCOME);
        }
        if (i <= 1037) {
            Prefs.f26260ak.set(AppRater.UserRating.NOT_YET);
            Prefs.f26221Y.set(0);
        }
        if (i <= 1044 && Prefs.f26244aU.get().intValue() > SetupWizardActivity.Stage.LINK_SOCIAL_NETWORKS.ordinal()) {
            SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
        }
        if (i <= 1048) {
            for (Integer num2 : ApiConstants.f19116c) {
                RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(num2.intValue());
                if (remoteAccountHelper != null && remoteAccountHelper.isLoggedIn()) {
                    remoteAccountHelper.m29235j();
                }
            }
            if (Prefs.f26244aU.get().intValue() > SetupWizardActivity.Stage.LINK_SOCIAL_NETWORKS.ordinal()) {
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
            }
        }
        Prefs.f26316bn.set(Boolean.TRUE);
        setWhatsNewPrefs(true);
        if (i <= 1061) {
            String str = Prefs.f26241aR.get();
            String str2 = str;
            if (StringUtils.m26059a((CharSequence) str)) {
                str2 = str;
                if (StringUtils.m26045b((CharSequence) Prefs.f26245aV.get())) {
                    String str3 = Prefs.f26264ao.get();
                    str2 = str;
                    if (StringUtils.m26045b((CharSequence) str3)) {
                        Prefs.f26241aR.set(str3);
                        str2 = str3;
                    }
                }
            }
            if (StringUtils.m26045b((CharSequence) str2) && str2.startsWith("+")) {
                Prefs.f26243aT.set(Boolean.TRUE);
            }
        }
        if (i <= f19160b) {
            List<SpeedDialActivity.SpeedDialData> m29591a = SpeedDialActivity.m29591a(Prefs.f26228aE.get());
            if (m29591a.size() < 98) {
                int size = m29591a.size() - 1;
                int digit = m29591a.get(size).getDigit() + 1;
                while (true) {
                    size++;
                    if (size >= 98) {
                        break;
                    }
                    m29591a.add(new SpeedDialActivity.SpeedDialData(digit, "", ""));
                    digit++;
                }
                SpeedDialActivity.m29592a(m29591a);
            }
        }
        if (i <= 1072) {
            CLog.m27611a(getClass(), "Verifying speed dial isn't corrupted...");
            try {
                SpeedDialActivity.m29591a(Prefs.f26228aE.get());
                CLog.m27611a(getClass(), "speed dial loadeded succesfully!");
            } catch (Throwable th) {
                CLog.m27611a(getClass(), "speed dial corrupted, resetting pref...");
                Prefs.f26228aE.set(null);
            }
        }
        if (i <= 1103) {
            Prefs.f26223a.set(Boolean.FALSE);
        }
        if (i <= 1107) {
            Prefs.f26210N.set(Integer.valueOf((int) DuringCallOverlayView.OVERLAY_Y_POS_DEFAULT_VALUE));
            Prefs.f26315bm.set(Boolean.TRUE);
        }
        if (i <= 1108) {
            Prefs.f26292bP.set(PostCallActivity.PostCallDuration.AFTER_5_SEC);
        }
        if (i <= 1162) {
            Singletons.get().getSimManager().m28162a();
            if (Prefs.f26292bP.get() == PostCallActivity.PostCallDuration.AFTER_2_SEC) {
                Prefs.f26292bP.set(PostCallActivity.PostCallDuration.AFTER_5_SEC);
            }
        }
        if (i <= 1184) {
            ThemeUtils.m27378b();
            Prefs.f26415dg.set("LIGHT");
        }
        if (i <= 1199) {
            ContactUtils.m28307c();
        }
        if (i <= 1203 && Prefs.f26210N.get().intValue() != -10000) {
            Prefs.f26210N.set(Integer.valueOf((Prefs.f26210N.get().intValue() + ((Activities.getScreenHeight(Activities.getScreenOrientation()) - ((int) getResources().getDimension(2131165990))) / 2)) - (((int) getResources().getDimension(2131165995)) * 2)));
        }
        if (i <= 1224) {
            IdentifyContactsTaskManager.m30237a();
        }
        if (i <= 1231 && GoogleHelper.get().isLoggedIn()) {
            Prefs.f26233aJ.set(Boolean.TRUE);
        }
        if (i <= 1235 && (date = Prefs.f26275az.get()) != null) {
            Prefs.f26224aA.set(new JSONDate(date));
        }
        if (i <= 1242) {
            C17944a m4727d = get().getObjectBoxStore().m4727d(FastCacheData.class);
            List<FastCacheData> m4628c = m4727d.m4700e().m4611a(FastCacheData_.photoDataSource, DataSource.device.name()).m4618a().m4628c();
            if (CollectionUtils.m26068b(m4628c)) {
                for (FastCacheData fastCacheData : m4628c) {
                    fastCacheData.setPhotoDataSource(null);
                    fastCacheData.setPhotoUrl(null);
                }
                m4727d.m4710a((Collection) m4628c);
            }
        }
        if (i <= 1246) {
            Query m4618a = this.f19166g.m4727d(FastCacheData.class).m4700e().m4611a(FastCacheData_.nameDataSource, "").m4618a();
            m4618a.m4637a(FastCacheData_.nameDataSource, "zaPersonLookup").m4624f();
            m4618a.m4637a(FastCacheData_.nameDataSource, "nzPersonLookup").m4624f();
            Query m4618a2 = this.f19166g.m4727d(FastCacheData.class).m4700e().m4611a(FastCacheData_.photoDataSource, "").m4618a();
            m4618a2.m4637a(FastCacheData_.photoDataSource, "zaPersonLookup").m4624f();
            m4618a2.m4637a(FastCacheData_.photoDataSource, "nzPersonLookup").m4624f();
        }
        if (i == 1251 && i2 == 1252) {
            Prefs.f26304bb.set(Boolean.FALSE);
        }
        if (i <= 1252) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.19
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    final ArrayList arrayList = new ArrayList();
                    CallAppApplication.this.f19166g.m4727d(ExtractedInfo.class).m4700e().m4618a().m4636a(new AbstractC17985c<ExtractedInfo>() { // from class: com.callapp.contacts.CallAppApplication.19.1
                        @Override // io.objectbox.query.AbstractC17985c
                        public /* synthetic */ void accept(ExtractedInfo extractedInfo) {
                            ExtractedInfo extractedInfo2 = extractedInfo;
                            extractedInfo2.phoneAsRaw = T9Helper.m30360a((CharSequence) extractedInfo2.phoneAsRaw);
                            arrayList.add(extractedInfo2);
                        }
                    });
                    CallAppApplication.this.f19166g.m4727d(ExtractedInfo.class).m4710a((Collection) arrayList);
                }
            }.execute();
        }
        if (i <= 1282) {
            ThemeUtils.m27378b();
        }
        if (i <= 1292 && Build.VERSION.SDK_INT >= 26) {
            NotificationManager.get().m28542b();
        }
        if (i <= 1294) {
            Prefs.f26282bF.set(new Date());
            Prefs.f26283bG.set(0);
            Prefs.f26281bE.set(4);
            Prefs.f26284bH.set(0);
            Prefs.f26285bI.set(0);
            if (Prefs.f26246aW.get().booleanValue()) {
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
            } else {
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.WELCOME);
            }
        }
        if (i <= 1326) {
            Prefs.f26408dZ.set(Boolean.valueOf(Prefs.f26393dK.isNotNull()));
        }
        if (i <= 1328 && (num = Prefs.f26214R.get()) != null && num.intValue() < 1314) {
            long m4624f = this.f19166g.m4727d(UserNegativeSocialData.class).m4700e().m4613a((C17978g) UserNegativeSocialData_.socialNetworkId, 1L).m4618a().m4624f();
            CLog.m27611a(CallAppApplication.class, "Removed " + m4624f + " Facebook negatives");
            AnalyticsManager.get().mo28444a(Constants.SOCIAL_PROFILE, "Removed Facebook negatives", String.valueOf(m4624f), (double) m4624f, new String[0]);
        }
        if (i <= 1330) {
            C17944a m4727d2 = get().getObjectBoxStore().m4727d(FastCacheData.class);
            List<FastCacheData> m4628c2 = m4727d2.m4700e().m4618a().m4628c();
            if (CollectionUtils.m26068b(m4628c2)) {
                final HashSet hashSet = new HashSet();
                for (FastCacheData fastCacheData2 : m4628c2) {
                    String photoUrl = fastCacheData2.getPhotoUrl();
                    fastCacheData2.setPhotoUrls(new PhotoUrls(photoUrl, fastCacheData2.getPhotoDataSource()));
                    fastCacheData2.setPhotoUrl(null);
                    if (StringUtils.m26045b((CharSequence) photoUrl)) {
                        hashSet.add(photoUrl);
                    }
                }
                m4727d2.m4710a((Collection) m4628c2);
                if (CollectionUtils.m26068b(hashSet)) {
                    new Task() { // from class: com.callapp.contacts.CallAppApplication.20
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            for (String str4 : hashSet) {
                                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str4);
                                glideRequestBuilder.f28239e = CallAppApplication.this;
                                glideRequestBuilder.m27019b();
                            }
                        }
                    }.execute();
                }
            }
            if (new IncognitoContactsManager().getIncognitoContactsCount() > 0) {
                Prefs.f26503fO.set(Boolean.FALSE);
            }
            Prefs.f26513fY.set(2);
        }
        if (i <= 1334 && PhoneManager.get().isDefaultPhoneApp()) {
            AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Default dialer", "true");
        }
        if (i <= 1336) {
            this.f19166g.m4727d(CacheData.class).m4700e().m4611a(CacheData_.valueType, "com.callapp.contacts.api.helper.facebook.FBJSONUserOrPage").m4618a().m4624f();
            File file = new File(getCacheDir(), "image_manager_disk_cache");
            if (file.exists() && file.isDirectory()) {
                try {
                    IoUtils.m27502c(file);
                } catch (IOException e) {
                }
            }
            NotificationManager.get().m28542b();
            C17944a m4727d3 = get().getObjectBoxStore().m4727d(FastCacheData.class);
            List<FastCacheData> m4628c3 = m4727d3.m4700e().m4614a((C17978g) FastCacheData_.f26774id, 0).m4618a().m4628c();
            HashMap hashMap = new HashMap();
            for (FastCacheData fastCacheData3 : m4628c3) {
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
                        m4727d3.m4708b(((Long) it2.next()).longValue());
                    }
                }
            }
        }
        if (i <= 1338) {
            NotificationManager.get().m28542b();
        }
        if (i <= 1344) {
            Singletons.get().getPrefsStore().m28181a("xingAccessToken", null);
            Singletons.get().getPrefsStore().m28181a("xingAccessTokenExpire", null);
            C17944a m4727d4 = this.f19166g.m4727d(FastCacheData.class);
            long m4624f2 = m4727d4.m4700e().m4601c(FastCacheData_.nameDataSource, "xing").m4618a().m4624f();
            AnalyticsManager.get().mo28444a(Constants.SOCIAL_PROFILE, "Removed xing fastCache nameDataSource ", String.valueOf(m4624f2), m4624f2, new String[0]);
            long m4624f3 = m4727d4.m4700e().m4601c(FastCacheData_.photoDataSource, "xing").m4618a().m4624f();
            AnalyticsManager.get().mo28444a(Constants.SOCIAL_PROFILE, "Removed xing fastCache photoDataSource ", String.valueOf(m4624f3), m4624f3, new String[0]);
            long m4624f4 = this.f19166g.m4727d(ChosenContactPhoto.class).m4700e().m4601c(ChosenContactPhoto_.dataSource, "xing").m4618a().m4624f();
            AnalyticsManager.get().mo28444a(Constants.SOCIAL_PROFILE, "Removed xing chosenContactPhoto data source ", String.valueOf(m4624f4), m4624f4, new String[0]);
            if (StringUtils.m26045b((CharSequence) Prefs.f26395dM.get())) {
                StringPref stringPref = Prefs.f26395dM;
                stringPref.set(StringUtils.m26019j(stringPref.get(), "gif"));
                m31870a(new Runnable() { // from class: com.callapp.contacts._$$Lambda$CallAppApplication$fx_4pKy2HieNxOaDFKwyBXMbm74
                    @Override // java.lang.Runnable
                    public final void run() {
                        CallAppApplication.this.m31855f();
                    }
                });
            }
        }
        if (i <= 1372) {
            C17944a m4727d5 = this.f19166g.m4727d(FastCacheData.class);
            long m4624f5 = m4727d5.m4700e().m4601c(FastCacheData_.nameDataSource, "linkedin").m4618a().m4624f();
            AnalyticsManager.get().mo28444a(Constants.SOCIAL_PROFILE, "Removed linkedin fastCache nameDataSource ", String.valueOf(m4624f5), m4624f5, new String[0]);
            long m4624f6 = m4727d5.m4700e().m4601c(FastCacheData_.photoDataSource, "linkedin").m4618a().m4624f();
            AnalyticsManager.get().mo28444a(Constants.SOCIAL_PROFILE, "Removed linkedin fastCache photoDataSource ", String.valueOf(m4624f6), m4624f6, new String[0]);
            long m4624f7 = this.f19166g.m4727d(ChosenContactPhoto.class).m4700e().m4601c(ChosenContactPhoto_.dataSource, "linkedin").m4618a().m4624f();
            AnalyticsManager.get().mo28444a(Constants.SOCIAL_PROFILE, "Removed linkedin chosenContactPhoto data source ", String.valueOf(m4624f7), m4624f7, new String[0]);
        }
        if (i <= 1378) {
            m31857e();
        }
        if (i <= 1408) {
            ThemeUtils.m27378b();
        }
        if (i <= 1478) {
            Prefs.f26469eh.set(Boolean.TRUE);
        }
        if (i <= 1498 || (i <= 1500 && Prefs.f26657n.get().booleanValue())) {
            C17944a m4727d6 = get().getObjectBoxStore().m4727d(MissedCallCardIds.class);
            List<MissedCallCardIds> m4703c = m4727d6.m4703c();
            if (CollectionUtils.m26068b(m4703c)) {
                for (MissedCallCardIds missedCallCardIds : m4703c) {
                    missedCallCardIds.setPhoneAsRaw(missedCallCardIds.getPhoneNumber());
                    missedCallCardIds.setPhoneNumber(PhoneManager.get().m28239a(missedCallCardIds.getPhoneNumber()).m26101a());
                }
                m4727d6.m4710a((Collection) m4703c);
            }
            C17944a m4727d7 = get().getObjectBoxStore().m4727d(CallReminderFrequentData.class);
            List<CallReminderFrequentData> m4703c2 = m4727d7.m4703c();
            HashMap hashMap2 = new HashMap();
            if (CollectionUtils.m26068b(m4703c2)) {
                m4727d7.m4701d();
                for (CallReminderFrequentData callReminderFrequentData : m4703c2) {
                    Phone m28239a = PhoneManager.get().m28239a(callReminderFrequentData.getPhoneAsGlobal());
                    CallReminderFrequentData callReminderFrequentData2 = (CallReminderFrequentData) hashMap2.get(m28239a);
                    CallReminderFrequentData callReminderFrequentData3 = callReminderFrequentData2;
                    if (callReminderFrequentData2 == null) {
                        callReminderFrequentData3 = new CallReminderFrequentData();
                        callReminderFrequentData3.setDeleteTimeStamp(callReminderFrequentData.getDeleteTimeStamp());
                        callReminderFrequentData3.setFrequentType(callReminderFrequentData.getFrequentType());
                    }
                    if (callReminderFrequentData.getDeleteTimeStamp() > callReminderFrequentData3.getDeleteTimeStamp()) {
                        callReminderFrequentData3.setDeleteTimeStamp(callReminderFrequentData.getDeleteTimeStamp());
                    }
                    callReminderFrequentData3.setPhoneAsGlobal(m28239a.m26101a());
                    hashMap2.put(m28239a, callReminderFrequentData3);
                }
                m4727d7.m4710a(hashMap2.values());
            }
        }
        if (i >= 1504 && i <= 1530 && i2 >= 1506 && i2 <= 1532) {
            Prefs.f26304bb.set(Boolean.FALSE);
        }
        if (i <= 1532) {
            try {
                C3068j.m39359b(this).mo39268a().mo39272a().get();
            } catch (InterruptedException | ExecutionException e2) {
            }
            CallAppDailyWorker.f29570a.m26173a();
            MissedCallSummaryDailyWorker.f29589a.m26152b();
            _24HourPingWorker.f29658a.m26104a();
            BirthdayDailyWorker.f29568a.m26184a();
            FetchRemoteConfigWorker.f29587a.m26161a();
            RegistrationReminderIfNeededWorker.f29631a.m26127a();
            RescheduleSyncWorker.Companion companion = RescheduleSyncWorker.f29635a;
            RescheduleSyncWorker.Companion.m26121a();
            new C554021().execute();
            NotificationManager.get().m28542b();
        }
        if (i >= 1534 && i <= 1556 && i2 >= 1536 && i2 <= 1558) {
            Prefs.f26304bb.set(Boolean.FALSE);
        }
        if (i <= 1558) {
            Prefs.f26585gr.set(Boolean.FALSE);
            Prefs.f26586gs.set(Boolean.FALSE);
            Prefs.f26587gt.set(Boolean.FALSE);
            Prefs.f26588gu.set(Boolean.FALSE);
            MissedCallManager.m29818d();
            MissedCallFrequentManager.m29833a();
            NotAnswerCallSummaryDailyWorker.f29619a.m26132b();
            new Task() { // from class: com.callapp.contacts.CallAppApplication.22
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    CallAppApplication.this.f19168i = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.CallAppApplication.22.1
                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        /* renamed from: a */
                        public final void mo26177a() {
                            if (CallAppApplication.this.f19168i != null) {
                                CallAppApplication.this.f19168i.m28298a();
                            }
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        /* renamed from: a */
                        public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
                            BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        /* renamed from: a */
                        public final void mo26175a(List<C3344i> list) {
                            if (CollectionUtils.m26068b(list)) {
                                for (C3344i c3344i : list) {
                                    if (c3344i.m38185e()) {
                                        AnalyticsManager.get().mo28444a(Constants.PURCHASE, "order info", c3344i.m38188b(), 0.0d, "orderid", c3344i.m38189a());
                                    }
                                }
                            }
                            if (CallAppApplication.this.f19168i != null) {
                                CallAppApplication.this.f19168i.m28290b();
                                CallAppApplication.this.f19168i = null;
                            }
                        }

                        @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                        /* renamed from: b */
                        public /* synthetic */ void mo26174b(List list) {
                            BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                        }
                    });
                }
            }.execute();
        }
        if (i >= 1560 && i <= 1564 && i2 >= 1562 && i2 <= 1566) {
            Prefs.f26304bb.set(Boolean.FALSE);
        }
        if (i <= 1566) {
            LocaleUtils.m27458b(this, LocaleUtils.m27460b(this), false);
        }
        if (i >= 1576 && i <= 1606 && i2 >= 1578 && i2 <= 1608) {
            Prefs.f26304bb.set(Boolean.FALSE);
        }
        if (i <= 1590) {
            m31860d();
        }
        if (i <= 1606 && (jobScheduler = (JobScheduler) getSystemService("jobscheduler")) != null) {
            List<JobInfo> allPendingJobs = jobScheduler.getAllPendingJobs();
            if (CollectionUtils.m26068b(allPendingJobs) && allPendingJobs.size() > 20) {
                jobScheduler.cancelAll();
                try {
                    C3068j.m39359b(this).mo39268a().mo39272a().get();
                } catch (InterruptedException | ExecutionException e3) {
                }
                CallAppDailyWorker.f29570a.m26173a();
                MissedCallSummaryDailyWorker.f29589a.m26152b();
                NotAnswerCallSummaryDailyWorker.f29619a.m26132b();
                _24HourPingWorker.f29658a.m26104a();
                BirthdayDailyWorker.f29568a.m26184a();
                FetchRemoteConfigWorker.f29587a.m26161a();
                RegistrationReminderIfNeededWorker.f29631a.m26127a();
                RescheduleSyncWorker.Companion companion2 = RescheduleSyncWorker.f29635a;
                RescheduleSyncWorker.Companion.m26121a();
            }
        }
        if (i <= 1610) {
            RecordConfiguration.migrateOldConfiguration();
            if (Build.VERSION.SDK_INT >= 29 && Prefs.f26447eL.get().booleanValue()) {
                Prefs.f26460eY.set(Boolean.TRUE);
            }
        }
        if (i >= 1612 && i <= 1644 && i2 >= 1614 && i2 <= 1646) {
            Prefs.f26304bb.set(Boolean.FALSE);
        }
        if (i <= 1626) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.23
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    MigrationUtils.m27454a();
                }
            }.execute();
        }
        if (i <= 1636) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.24
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    CallRecorderManager.get();
                    CallRecorderManager.m27860d();
                }
            }.execute();
        }
        if (i <= 1646) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.25
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnalyticsDataManager.m31622d();
                }
            }.execute();
        }
        if (i >= 1652 && i <= 1678 && i2 >= 1654 && i2 <= 1680) {
            Prefs.f26304bb.set(Boolean.FALSE);
        }
        if (i <= 1654) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.26
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnalyticsDataManager.m31621e();
                }
            }.execute();
        }
        if (i <= 1672) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.27
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    T9Helper.m30353a(true);
                    MigrationUtils.m27449e();
                    MigrationUtils.m27448f();
                }
            }.execute();
        }
        if (i <= 1678) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.28
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    MigrationUtils.m27447g();
                }
            }.execute();
        }
        if (i <= 1694) {
            UpdateContactsWorker.f29652a.m26107a(0L);
            UpdateContactsDescriptionWorker.f29645a.m26110a(5L);
        }
        if (i >= 1690 && i <= 1722 && i2 >= 1692 && i2 <= 1724) {
            Prefs.f26304bb.set(Boolean.FALSE);
        }
        if (i >= 1732 && i <= 1744 && i2 >= 1742 && i2 <= 1746) {
            Prefs.f26304bb.set(Boolean.FALSE);
        }
        if (i <= 1748) {
            SyncManager.resetDbAndSynchronizers();
            CacheManager.get().f25926b.evictAll();
            get().getObjectBoxStore().m4727d(CacheData.class).m4701d();
            IoUtils.m27504b(IoUtils.getCacheFolder());
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationManager.get().m28542b();
            }
        }
        if (i >= 1752 && i <= 1764 && i2 >= 1754 && i2 <= 1766) {
            Prefs.f26304bb.set(Boolean.FALSE);
        }
        if (i <= 1766) {
            if (Prefs.f26244aU.get().equals(Integer.valueOf(SetupWizardActivity.Stage.PAY_WALL.ordinal()))) {
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
            }
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationManager.get().m28542b();
            }
            MigrationUtils.m27452b();
            MigrationUtils.m27451c();
            MigrationUtils.m27450d();
            MigrationUtils.m27446h();
        }
        if (i >= 1768 && i <= 1804 && i2 >= 1770 && i2 <= 1806) {
            Prefs.f26304bb.set(Boolean.FALSE);
        }
        if (i <= 1770) {
            MigrationUtils.m27445i();
            BackupUtils.m29292b();
        }
        if (i <= 1792 && Prefs.f26562gU.get().booleanValue()) {
            Prefs.f26563gV.set(Boolean.TRUE);
        }
        CacheManager.get().m28390a(JSONClientValidationResponse.class, "message_key");
        Prefs.f26252ac.set(null);
        ValidateClientTask.m26904b();
        if (Prefs.f26246aW.get().booleanValue()) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.29
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    FcmManager.get().m28265a();
                }
            }.execute();
        }
        Prefs.f26580gm.set(Boolean.FALSE);
        Prefs.f26583gp.set(new Date());
        Prefs.f26581gn.set(Boolean.FALSE);
        if (Prefs.f26353cX.get().booleanValue()) {
            Prefs.f26353cX.set(Boolean.FALSE);
            Prefs.f26344cO.m28169b(1);
            new Task() { // from class: com.callapp.contacts.CallAppApplication.30
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnalyticsManager.get().m28450a(Constants.RETENTION, "upgraded for free gift");
                }
            }.execute();
        }
        m31877a();
    }

    /* renamed from: a */
    static /* synthetic */ void m31872a(CallAppApplication callAppApplication, final Runnable runnable) {
        callAppApplication.bindService(new Intent(callAppApplication, CallAppService.class), new ServiceConnection() { // from class: com.callapp.contacts.CallAppApplication.14
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                if (iBinder instanceof CallAppService.LocalCallAppServiceBinder) {
                    CallAppApplication.this.f19171l = ((CallAppService.LocalCallAppServiceBinder) iBinder).getService();
                    Runnable runnable2 = runnable;
                    if (runnable2 == null) {
                        return;
                    }
                    runnable2.run();
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                synchronized (CallAppApplication.this.f19170k) {
                    if (CallAppApplication.this.f19171l != null) {
                        CallAppApplication.this.f19171l.stopForeground(true);
                        CallAppApplication.this.f19171l = null;
                        CallAppApplication.this.f19169j = false;
                    }
                }
            }
        }, 1);
    }

    /* renamed from: b */
    static /* synthetic */ void m31866b() {
        List<String> m28922a = PersonalStoreItemDataManager.m28922a(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE);
        if (CollectionUtils.m26068b(m28922a)) {
            for (String str : m28922a) {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(str);
                glideRequestBuilder.f28239e = get();
                GlideUtils.GlideRequestBuilder m27026a = glideRequestBuilder.m27026a(GlideUtils.f28216a, GlideUtils.f28217b);
                m27026a.f28251q = true;
                m27026a.f28254t = true;
                m27026a.m27013d();
            }
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m31865b(CallAppApplication callAppApplication) {
        PhoneManager.m28219k();
        new Task() { // from class: com.callapp.contacts.CallAppApplication.6
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                GlideUtils.m27035b(CallAppApplication.this);
                CallAppApplication.m31866b();
            }
        }.execute();
        new Task() { // from class: com.callapp.contacts.CallAppApplication.7
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                String str = Prefs.f26264ao.get();
                String str2 = str;
                if (StringUtils.m26059a((CharSequence) str)) {
                    str2 = "+12129281245";
                }
                Phone.m26093b(str2).getPhoneNumber();
            }
        }.execute();
        new Task() { // from class: com.callapp.contacts.CallAppApplication.8
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                InstallationReceiver.m27894a(CallAppApplication.this);
            }
        }.execute();
        int versionCode = callAppApplication.getVersionCode();
        if (versionCode != 0) {
            int intValue = Prefs.f26216T.get().intValue();
            int intValue2 = Prefs.f26215S.get().intValue();
            boolean z = intValue != versionCode;
            boolean z2 = Build.VERSION.SDK_INT != intValue2;
            if (intValue == 0) {
                if (callAppApplication.getResources().getBoolean(2131034115)) {
                    Prefs.f26657n.set(Boolean.TRUE);
                }
                Prefs.f26664u.set(new Pair(10, 0));
                Prefs.f26257ah.set(new Date());
                Prefs.f26214R.set(Integer.valueOf(versionCode));
                if (Build.VERSION.SDK_INT >= 26) {
                    NotificationManager.get().m28542b();
                }
                if (!callAppApplication.isUnitTestMode()) {
                    new Task() { // from class: com.callapp.contacts.CallAppApplication.18
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            RegistrationReminderIfNeededWorker.f29631a.m26127a();
                            FetchRemoteConfigWorker.f29587a.m26161a();
                        }
                    }.execute();
                }
                _24HourPingWorker.f29658a.m26104a();
                boolean z3 = (callAppApplication.getResources().getConfiguration().uiMode & 48) == 16;
                ThemeUtils.setIsLight(z3);
                Prefs.f26417di.set(z3 ? ThemeState.WHITE : ThemeState.DARK);
            } else if (z) {
                int i = intValue;
                if (intValue < 1000) {
                    i = intValue + 1000;
                }
                try {
                    callAppApplication.m31876a(i, versionCode);
                    final int i2 = i;
                    new Task() { // from class: com.callapp.contacts.CallAppApplication.17
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            AnalyticsManager.get().m28450a("Upgrading user", String.format("From version %s", Integer.valueOf(i2)));
                        }
                    }.execute();
                    CLog.m27610a(CallAppApplication.class, "Upgraded from version %s to version %s", Integer.valueOf(i), Integer.valueOf(versionCode));
                } catch (RuntimeException e) {
                    CLog.m27586c(CallAppApplication.class, e, "Error while upgrading from %s to %s", Integer.valueOf(i), Integer.valueOf(versionCode));
                }
            }
            if (z2) {
                try {
                    int i3 = Build.VERSION.SDK_INT;
                    Prefs.f26295bS.set(null);
                    Prefs.f26297bU.set(null);
                    Prefs.f26296bT.set(null);
                    Prefs.f26489fA.set(Boolean.FALSE);
                    PhoneStateManager.get().initRingerHandlerIfNeeded();
                    CLog.m27610a(CallAppApplication.class, "Upgraded from SDK version %s to SDK version %s", Integer.valueOf(intValue2), Integer.valueOf(Build.VERSION.SDK_INT));
                } catch (RuntimeException e2) {
                    CLog.m27586c(CallAppApplication.class, e2, "Error while upgrading from SDK %s to SDK %s", Integer.valueOf(intValue2), Integer.valueOf(Build.VERSION.SDK_INT));
                }
            }
            if (z || z2) {
                Prefs.f26216T.set(Integer.valueOf(versionCode));
                Prefs.f26215S.set(Integer.valueOf(Build.VERSION.SDK_INT));
            }
        }
        CallLogContentObserver.m28107a();
        new Task() { // from class: com.callapp.contacts.CallAppApplication.9
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (!CallAppApplication.this.isUnitTestMode()) {
                    ContactUtilsContactsContentObserver.m28084a();
                    BluetoothHeadsetConnectivityManager.m28252a();
                    SmsSentReceiver.m27886a();
                    StartupReceiver.m27884a();
                    try {
                        if (GooglePlayUtils.isGooglePlayServicesAvailable()) {
                            AppsFlyerLib.getInstance().setCollectIMEI(false);
                        }
                        AppsFlyerLib.getInstance().startTracking(CallAppApplication.this, Activities.getString(2131886256));
                        if (Build.VERSION.SDK_INT < 21) {
                            return;
                        }
                        WifiStateReceiver wifiStateReceiver = WifiStateReceiver.get();
                        wifiStateReceiver.f27396a = (ConnectivityManager) Singletons.m28493a("connectivity");
                        wifiStateReceiver.f27396a.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(1).build(), wifiStateReceiver.f27397b);
                    } catch (Exception e3) {
                    }
                }
            }
        }.execute();
        if (!callAppApplication.isUnitTestMode()) {
            callAppApplication.f19167h = new BillingManager(new BillingManager.BillingUpdatesListener() { // from class: com.callapp.contacts.CallAppApplication.10
                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: a */
                public final void mo26177a() {
                    if (CallAppApplication.this.f19167h != null) {
                        CallAppApplication.this.f19167h.m28298a();
                    }
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: a */
                public /* synthetic */ void mo26176a(C3341g c3341g, List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$a(this, c3341g, list);
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: a */
                public final void mo26175a(List<C3344i> list) {
                    CallAppApplication.this.f19167h.m28290b();
                    CallAppApplication.this.f19167h = null;
                }

                @Override // com.callapp.contacts.manager.inAppBilling.BillingManager.BillingUpdatesListener
                /* renamed from: b */
                public /* synthetic */ void mo26174b(List list) {
                    BillingManager.BillingUpdatesListener._CC.$default$b(this, list);
                }
            });
        }
        if (!callAppApplication.isUnitTestMode() && !AdUtils.m27285a()) {
            callAppApplication.m31864b(new Runnable() { // from class: com.callapp.contacts.CallAppApplication.11
                @Override // java.lang.Runnable
                public void run() {
                    BaseActivity.safeRun(new Runnable() { // from class: com.callapp.contacts.CallAppApplication.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AdUtils.m27259d();
                        }
                    });
                }
            });
        }
        if (!callAppApplication.isUnitTestMode() && !Prefs.f26568ga.get().booleanValue()) {
            new Task() { // from class: com.callapp.contacts.CallAppApplication.12
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    File file = new File(CallAppApplication.this.getExternalCacheDir(), "image_manager_disk_cache");
                    if (!file.exists() || !file.isDirectory()) {
                        return;
                    }
                    File file2 = new File(file, ".nomedia");
                    if (file2.exists()) {
                        return;
                    }
                    try {
                        if (!file2.createNewFile()) {
                            return;
                        }
                        Prefs.f26568ga.set(Boolean.TRUE);
                    } catch (IOException e3) {
                        CLog.m27599a(new CallAppGlideInitializationException("Unable to create nomedia cache file " + e3.getMessage()));
                    }
                }
            }.execute();
        }
        new Task() { // from class: com.callapp.contacts.CallAppApplication.13
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (Prefs.f26246aW.get().booleanValue()) {
                    try {
                        List<C3163t> list = C3068j.m39359b(CallAppApplication.this).mo39261b(CallAppDailyWorker.f29570a.getTAG()).get();
                        CallAppDailyWorker.Companion companion = CallAppDailyWorker.f29570a;
                        if (!CallAppDailyWorker.Companion.m26172a(list)) {
                            return;
                        }
                        CallAppDailyWorker.f29570a.m26173a();
                    } catch (Exception e3) {
                    }
                }
            }
        }.execute();
    }

    /* renamed from: d */
    private void m31860d() {
        PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f25278a;
        for (PersonalStoreItemUrlData personalStoreItemUrlData : PersonalStoreItemDataManager.Companion.m28913b(PersonalStoreItemUrlData.PersonalStoreItemType.VIDEO_RINGTONE)) {
            String personalStoreItemUrl = personalStoreItemUrlData.getPersonalStoreItemUrl();
            File file = new File(personalStoreItemUrl);
            if (StringUtils.m26045b((CharSequence) personalStoreItemUrl) && !StringUtils.m26037c(personalStoreItemUrl, "_encoded") && file.exists()) {
                final HashMap hashMap = new HashMap();
                File file2 = new File(personalStoreItemUrl + "_encoded");
                final String uuid = UUID.randomUUID().toString();
                hashMap.put(uuid, new Pair(file2, file));
                new CallAppTransformation.TransformationBuilder(get(), Uri.parse(personalStoreItemUrl), file2, uuid, new AbstractC16637e() { // from class: com.callapp.contacts.CallAppApplication.31
                    @Override // com.linkedin.android.litr.AbstractC16637e
                    /* renamed from: a */
                    public final void mo6844a(String str) {
                    }

                    @Override // com.linkedin.android.litr.AbstractC16637e
                    /* renamed from: a */
                    public final void mo6843a(String str, float f) {
                    }

                    @Override // com.linkedin.android.litr.AbstractC16637e
                    /* renamed from: a */
                    public final void mo6842a(String str, Throwable th) {
                        CLog.m27599a(th);
                        Pair pair = (Pair) hashMap.get(uuid);
                        if (pair != null) {
                            IoUtils.m27504b((File) pair.first);
                        }
                    }

                    @Override // com.linkedin.android.litr.AbstractC16637e
                    /* renamed from: b */
                    public final void mo6841b(String str) {
                        Pair pair = (Pair) hashMap.get(uuid);
                        if (pair != null) {
                            ((File) pair.first).renameTo((File) pair.second);
                        }
                    }

                    @Override // com.linkedin.android.litr.AbstractC16637e
                    /* renamed from: c */
                    public final void mo6840c(String str) {
                    }
                }).m26896a();
            }
        }
    }

    /* renamed from: e */
    private void m31857e() {
        C17944a m4727d = this.f19166g.m4727d(FastCacheData.class);
        List<FastCacheData> m4628c = m4727d.m4700e().m4601c(FastCacheData_.nameDataSource, "googlePlus").m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            for (FastCacheData fastCacheData : m4628c) {
                fastCacheData.setNameDataSource(DataSource.google);
            }
            m4727d.m4710a((Collection) m4628c);
            long size = m4628c.size();
            AnalyticsManager.get().mo28444a(Constants.SOCIAL_PROFILE, "Replaced googlePlus fastCache nameDataSource ", String.valueOf(size), size, new String[0]);
        }
        List<FastCacheData> m4628c2 = m4727d.m4700e().m4601c(FastCacheData_.photoDataSource, "googlePlus").m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c2)) {
            for (FastCacheData fastCacheData2 : m4628c2) {
                fastCacheData2.setPhotoDataSource(DataSource.google);
            }
            m4727d.m4710a((Collection) m4628c2);
            long size2 = m4628c2.size();
            AnalyticsManager.get().mo28444a(Constants.SOCIAL_PROFILE, "Replaced googlePlus fastCache photoDataSource ", String.valueOf(size2), size2, new String[0]);
        }
        C17944a m4727d2 = this.f19166g.m4727d(ChosenContactPhoto.class);
        List<ChosenContactPhoto> m4628c3 = m4727d2.m4700e().m4601c(ChosenContactPhoto_.dataSource, "googlePlus").m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c3)) {
            for (ChosenContactPhoto chosenContactPhoto : m4628c3) {
                chosenContactPhoto.setDataSource(DataSource.google);
            }
            m4727d2.m4710a((Collection) m4628c3);
            long size3 = m4628c3.size();
            AnalyticsManager.get().mo28444a(Constants.SOCIAL_PROFILE, "Replaced googlePlus chosenContactPhoto data source ", String.valueOf(size3), size3, new String[0]);
        }
    }

    /* renamed from: f */
    public /* synthetic */ void m31855f() {
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(Prefs.f26395dM.get());
        glideRequestBuilder.f28239e = this;
        glideRequestBuilder.m27019b();
    }

    public static CallAppApplication get() {
        return Singletons.get().getApplication();
    }

    private void setWhatsNewPrefs(boolean z) {
        Prefs.f26304bb.set(Boolean.valueOf(z));
        Prefs.f26473el.set(Boolean.valueOf(z));
    }

    /* renamed from: a */
    public final Object m31868a(String str) {
        return super.getSystemService(str);
    }

    /* renamed from: a */
    public final void m31870a(final Runnable runnable) {
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

    /* renamed from: a */
    public final void m31869a(Runnable runnable, long j) {
        this.f19165d.postDelayed(runnable, j);
    }

    /* renamed from: a */
    public final void m31867a(final boolean z, final Intent intent) {
        if (!isUnitTestMode()) {
            final Runnable runnable = new Runnable() { // from class: com.callapp.contacts.CallAppApplication.15
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        synchronized (CallAppApplication.this.f19170k) {
                            boolean z2 = CallAppApplication.this.f19169j;
                            boolean z3 = z;
                            if (z2 != z3) {
                                CallAppApplication.this.f19169j = z3;
                                if (z) {
                                    NotificationManager.get().m28541b(12);
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        CallAppApplication.this.f19171l.startForeground(12, NotificationManager.get().getCurrentCallAppInCallNotificationBuilder().m44569b(), 4);
                                    } else {
                                        CallAppApplication.this.f19171l.startForeground(12, NotificationManager.get().getCurrentCallAppInCallNotificationBuilder().m44569b());
                                    }
                                } else {
                                    CallAppApplication.this.f19171l.stopForeground(true);
                                }
                            }
                            if (z && intent != null) {
                                try {
                                    CallAppApplication.this.f19171l.startService(intent);
                                } catch (IllegalStateException e) {
                                    intent.putExtra("start_foreground", true);
                                    CallAppApplication.this.startForegroundService(intent);
                                }
                            }
                        }
                    } catch (Exception e2) {
                        CLog.m27609a(CallAppApplication.class, e2);
                    }
                }
            };
            f19163f.post(new Runnable() { // from class: com.callapp.contacts.CallAppApplication.16
                @Override // java.lang.Runnable
                public void run() {
                    if (CallAppApplication.this.f19171l == null) {
                        CallAppApplication.m31872a(CallAppApplication.this, runnable);
                    } else {
                        runnable.run();
                    }
                }
            });
        }
    }

    @Override // com.google.android.play.core.splitcompat.SplitCompatApplication, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(LocaleUtils.m27467a(context));
        C15105a.m9460a(this);
    }

    /* renamed from: b */
    public final void m31864b(Runnable runnable) {
        this.f19165d.post(runnable);
    }

    /* renamed from: c */
    public final void m31861c(Runnable runnable) {
        this.f19165d.removeCallbacks(runnable);
    }

    /* renamed from: d */
    public final void m31858d(final Runnable runnable) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            BaseActivity.safeRun(runnable);
        } else {
            this.f19165d.post(new Runnable() { // from class: com.callapp.contacts.CallAppApplication.33
                @Override // java.lang.Runnable
                public void run() {
                    BaseActivity.safeRun(runnable);
                }
            });
        }
    }

    public long getDaysSinceInstall() {
        Date date = Prefs.f26257ah.get();
        if (date != null) {
            Date date2 = new Date();
            return (date2.getTime() - date.getTime()) / 86400000;
        }
        return 0L;
    }

    public FilteredActivityLifecycleCallback getFilteredActivityLifecycleCallback() {
        return this.f19172m;
    }

    public Handler getHandler() {
        return this.f19165d;
    }

    public BoxStore getObjectBoxStore() {
        return this.f19166g;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        StringUtils.m26058a(CallAppApplication.class);
        return (str == null || !str.equals("keyguard")) ? super.getSystemService(str) : FilteredReceiversManager.getKeyguardManager();
    }

    public String getVersion() {
        String str;
        try {
            str = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            str = "Unknown";
        }
        return str;
    }

    public int getVersionCode() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            CLog.m27584d(CallAppApplication.class, e, "Couldn't find app versionCode");
            return 0;
        }
    }

    public boolean isUnitTestMode() {
        return false;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        LocaleUtils.m27467a(this);
        Activities.m27644d();
    }

    @Override // android.app.Application
    public void onCreate() {
        if (C15092b.m9475a(this).mo9470a()) {
            return;
        }
        super.onCreate();
        super.registerActivityLifecycleCallbacks(this.f19172m);
        try {
            if (getResources().getBoolean(2131034115)) {
                if (PreferenceManager.getDefaultSharedPreferences(this).getBoolean(f19161c, false)) {
                    ReflectionUtils.m27417a("com.callapp.contacts.debug.CallAppLeakCanaryManager", "initLeakCanary", (List<Class<?>>) Collections.singletonList(Application.class), (List<Object>) Collections.singletonList(this));
                } else {
                    ReflectionUtils.m27417a("com.callapp.contacts.debug.CallAppLeakCanaryManager", "disableLeakCanary", (List<Class<?>>) null, (List<Object>) null);
                }
            }
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException | Exception e) {
        }
        CrashlyticsUtils.m27548a(this);
        try {
            C17947b builder = MyObjectBox.builder();
            builder.f62721f = C17947b.m4691a(this);
            File file = new File(C17947b.m4688b(this), "objectbox");
            if (!file.exists()) {
                file.mkdir();
                if (!file.exists()) {
                    throw new RuntimeException("Could not init Android base dir at " + file.getAbsolutePath());
                }
            }
            if (!file.isDirectory()) {
                throw new RuntimeException("Android base dir is not a dir: " + file.getAbsolutePath());
            }
            builder.f62718c = file;
            builder.f62724i = true;
            builder.f62727l = 512;
            if (builder.f62717b != null) {
                throw new IllegalArgumentException("Already has directory, cannot assign name");
            }
            builder.f62719d = "CallAppOB";
            builder.f62728m = 3;
            builder.f62734s = new AbstractC17979h() { // from class: com.callapp.contacts.CallAppApplication.1
                @Override // io.objectbox.AbstractC17979h
                /* renamed from: a */
                public final void mo4651a(Throwable th) {
                    CLog.m27609a(CallAppApplication.class, th);
                }
            };
            if (!isUnitTestMode() && getResources().getBoolean(2131034115)) {
                builder.f62723h = 12;
                builder.f62725j = true;
                StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build());
                if (Build.VERSION.SDK_INT >= 28) {
                    StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectAll().detectNonSdkApiUsage().penaltyLog().build());
                } else {
                    StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectAll().penaltyLog().build());
                }
            }
            if (!isUnitTestMode()) {
                try {
                    this.f19166g = builder.m4694a();
                } catch (Exception e2) {
                    CrashlyticsUtils.m27547a(e2);
                    Log.e(CallAppApplication.class.getSimpleName(), "objectBoxStore build", e2);
                    try {
                        BoxStore boxStore = this.f19166g;
                        if (boxStore != null) {
                            boxStore.close();
                        }
                        builder.f62731p = true;
                        this.f19166g = builder.m4694a();
                    } catch (Exception e3) {
                        CrashlyticsUtils.m27547a(e3);
                        Log.e(CallAppApplication.class.getSimpleName(), "objectBoxStore build with previous commit", e3);
                        System.exit(1);
                    }
                }
                if (this.f19166g == null) {
                    DbException dbException = new DbException("objectBoxStore is null");
                    CrashlyticsUtils.m27547a(dbException);
                    Log.e(CallAppApplication.class.getSimpleName(), dbException.getMessage(), dbException);
                    System.exit(1);
                }
                BoxStore boxStore2 = this.f19166g;
                BoxStore.nativeSetDbExceptionListener(boxStore2.f62678b, new DbExceptionListener() { // from class: com.callapp.contacts.CallAppApplication.2
                    @Override // io.objectbox.exception.DbExceptionListener
                    public void onDbException(Exception exc) {
                        DbExceptionListener._CC.cancelCurrentException();
                        if (!(exc instanceof DbFullException)) {
                            CrashlyticsUtils.m27547a(exc);
                            return;
                        }
                        StringBuilder sb = new StringBuilder();
                        for (Class<?> cls : CallAppApplication.this.f19166g.m4731c()) {
                            sb.append(cls.getSimpleName() + ": " + CallAppApplication.this.f19166g.m4727d(cls).m4709b() + ", ");
                        }
                        sb.append("Diagnose: " + BoxStore.nativeDiagnose(CallAppApplication.this.f19166g.f62678b) + ", error: " + exc.getMessage());
                        CrashlyticsUtils.m27547a(new DbException(sb.toString(), exc.getCause()));
                    }
                });
                try {
                    this.f19166g.m4727d(OBPref.class).m4700e().m4618a().m4641a();
                } catch (Exception e4) {
                    CrashlyticsUtils.m27547a(e4);
                    Log.e(CallAppApplication.class.getSimpleName(), "objectBoxStore first query", e4);
                    System.exit(1);
                }
            }
            if (Payload.SOURCE_HUAWEI.equalsIgnoreCase(Build.MANUFACTURER)) {
                C9332a.m24687a(this, new C9332a.AbstractC9336c() { // from class: com.callapp.contacts.CallAppApplication.3
                    @Override // com.p269e.p270a.p271a.C9332a.AbstractC9336c
                    /* renamed from: a */
                    public final void mo24683a() {
                    }
                });
            }
            if (!isUnitTestMode()) {
                HandlerThread handlerThread = f19162e;
                handlerThread.start();
                AndroidUtils.m27631a(handlerThread.getLooper());
                Handler handler = new Handler(handlerThread.getLooper());
                f19163f = handler;
                handler.post(new Runnable() { // from class: com.callapp.contacts.CallAppApplication.4
                    @Override // java.lang.Runnable
                    public void run() {
                        CallAppApplication.m31872a(CallAppApplication.this, (Runnable) null);
                    }
                });
            }
            ViewabilityManager.setViewabilityEnabled(false);
            final Singletons singletons = Singletons.get();
            singletons.f25797H = new WeakReference<>(this);
            singletons.getPhoneStateManager();
            singletons.getCallAppRemoteConfigManager();
            new Task() { // from class: com.callapp.contacts.manager.Singletons.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    Networking.getUserAgent(this);
                    if (!CallAppApplication.get().isUnitTestMode()) {
                        CrashlyticsUtils.m27546b(this);
                    }
                    singletons.getProximityManager();
                    singletons.getAnalyticsManager();
                    singletons.getRecordManager();
                    singletons.getRecordTestManager();
                    singletons.getCacheManager();
                    singletons.getCallAppRemoteConfigManager().m28705a();
                    singletons.getWearableClientHandler();
                }
            }.execute();
            ThemeUtils.m27389a();
            setTheme(ThemeUtils.getThemeStyleResource());
            CallAppRemoteConfigManager.get().setDefaultsIfNeeded(new Task.DoneListener() { // from class: com.callapp.contacts.CallAppApplication.5
                @Override // com.callapp.contacts.manager.task.Task.DoneListener
                public void onDone() {
                    CallAppApplication.m31865b(CallAppApplication.this);
                }
            });
        } catch (Exception e5) {
            CrashlyticsUtils.m27547a(e5);
            Log.e(CallAppApplication.class.getSimpleName(), "boxStoreBuilder failed", e5);
            System.exit(1);
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        CLog.m27611a(CallAppApplication.class, "onLowMemory called");
        Singletons.get().getCacheManager().f25926b.evictAll();
        GlideUtils.m27038a(this).onLowMemory();
        PhoneManager.get().f26072a.evictAll();
        super.onLowMemory();
    }

    @Override // android.app.Application
    public void onTerminate() {
        Singletons.SenderType[] values;
        ManagedLifecycle managedLifecycle;
        super.unregisterActivityLifecycleCallbacks(this.f19172m);
        ContactUtilsContactsContentObserver.m28077c();
        CallLogContentObserver.m28092c();
        if (!isUnitTestMode()) {
            Singletons singletons = Singletons.get();
            ActionsManager actionsManager = singletons.f25815a;
            singletons.f25815a = null;
            Singletons.m28495a(actionsManager);
            UserProfileManager userProfileManager = singletons.f25817b;
            singletons.f25817b = null;
            Singletons.m28495a(userProfileManager);
            PhoneVerifierManager phoneVerifierManager = singletons.f25818c;
            singletons.f25818c = null;
            Singletons.m28495a(phoneVerifierManager);
            ExceptionManager exceptionManager = singletons.f25798I;
            singletons.f25798I = null;
            Singletons.m28495a(exceptionManager);
            OverlayManager overlayManager = singletons.f25822g;
            singletons.f25822g = null;
            Singletons.m28495a(overlayManager);
            RecognizedContactNotificationManager recognizedContactNotificationManager = singletons.f25835t;
            singletons.f25835t = null;
            Singletons.m28495a(recognizedContactNotificationManager);
            CatalogManager catalogManager = singletons.f25836u;
            singletons.f25836u = null;
            Singletons.m28495a(catalogManager);
            PopupManager popupManager = singletons.f25824i;
            singletons.f25824i = null;
            Singletons.m28495a(popupManager);
            FcmManager fcmManager = singletons.f25825j;
            singletons.f25825j = null;
            Singletons.m28495a(fcmManager);
            PhoneManager phoneManager = singletons.f25823h;
            singletons.f25823h = null;
            Singletons.m28495a(phoneManager);
            GmailManager gmailManager = singletons.f25833r;
            singletons.f25833r = null;
            Singletons.m28495a(gmailManager);
            LockscreenKeyguardManager lockscreenKeyguardManager = singletons.f25828m;
            singletons.f25828m = null;
            Singletons.m28495a(lockscreenKeyguardManager);
            WifiLockManager wifiLockManager = singletons.f25829n;
            singletons.f25829n = null;
            Singletons.m28495a(wifiLockManager);
            ProximityManager proximityManager = singletons.f25830o;
            singletons.f25830o = null;
            Singletons.m28495a(proximityManager);
            ContactLoaderManager contactLoaderManager = singletons.f25834s;
            singletons.f25834s = null;
            Singletons.m28495a(contactLoaderManager);
            FeedbackManager feedbackManager = singletons.f25819d;
            singletons.f25819d = null;
            Singletons.m28495a(feedbackManager);
            CallAppChatHeadLifecycleObserverManager callAppChatHeadLifecycleObserverManager = singletons.f25820e;
            singletons.f25820e = null;
            Singletons.m28495a(callAppChatHeadLifecycleObserverManager);
            NotificationManager notificationManager = singletons.f25826k;
            singletons.f25826k = null;
            Singletons.m28495a(notificationManager);
            CacheManager cacheManager = singletons.f25827l;
            singletons.f25827l = null;
            Singletons.m28495a(cacheManager);
            AnalyticsManager analyticsManager = singletons.f25831p;
            singletons.f25831p = null;
            Singletons.m28495a(analyticsManager);
            PhoneStateManager phoneStateManager = singletons.f25821f;
            singletons.f25821f = null;
            Singletons.m28495a(phoneStateManager);
            LocalPrefsStore localPrefsStore = singletons.f25832q;
            singletons.f25832q = null;
            Singletons.m28495a(localPrefsStore);
            SimManager simManager = singletons.f25799J;
            singletons.f25799J = null;
            Singletons.m28495a(simManager);
            FirstTimeExperienceCallLog firstTimeExperienceCallLog = singletons.f25800K;
            singletons.f25800K = null;
            Singletons.m28495a(firstTimeExperienceCallLog);
            CallRecorderManager callRecorderManager = singletons.f25801L;
            singletons.f25801L = null;
            Singletons.m28495a(callRecorderManager);
            KeyguardActivityStateManager keyguardActivityStateManager = singletons.f25802M;
            singletons.f25802M = null;
            Singletons.m28495a(keyguardActivityStateManager);
            for (Singletons.SenderType senderType : Singletons.SenderType.values()) {
                managedLifecycle = senderType.singletonMember;
                senderType.singletonMember = null;
                Singletons.m28495a(managedLifecycle);
            }
            if (singletons.f25838w != null) {
                WhatsAppNotificationDataExtractor whatsAppNotificationDataExtractor = singletons.f25838w;
                singletons.f25838w = null;
                Singletons.m28495a(whatsAppNotificationDataExtractor);
            }
            if (singletons.f25839x != null) {
                ViberNotificationDataExtractor viberNotificationDataExtractor = singletons.f25839x;
                singletons.f25839x = null;
                Singletons.m28495a(viberNotificationDataExtractor);
            }
            if (singletons.f25840y != null) {
                TelegramNotificationDataExtractor telegramNotificationDataExtractor = singletons.f25840y;
                singletons.f25840y = null;
                Singletons.m28495a(telegramNotificationDataExtractor);
            }
            if (singletons.f25841z != null) {
                VonageNotificationDataExtractor vonageNotificationDataExtractor = singletons.f25841z;
                singletons.f25841z = null;
                Singletons.m28495a(vonageNotificationDataExtractor);
            }
            if (singletons.f25790A != null) {
                SignalNotificationDataExtractor signalNotificationDataExtractor = singletons.f25790A;
                singletons.f25790A = null;
                Singletons.m28495a(signalNotificationDataExtractor);
            }
            if (singletons.f25791B != null) {
                WearableClientHandler wearableClientHandler = singletons.f25791B;
                singletons.f25791B = null;
                Singletons.m28495a(wearableClientHandler);
            }
            if (singletons.f25792C != null) {
                CallAppRemoteConfigManager callAppRemoteConfigManager = singletons.f25792C;
                singletons.f25792C = null;
                Singletons.m28495a(callAppRemoteConfigManager);
            }
            if (singletons.f25793D != null) {
                CallAppClipboardManager callAppClipboardManager = singletons.f25793D;
                singletons.f25793D = null;
                Singletons.m28495a(callAppClipboardManager);
            }
            if (singletons.f25794E != null) {
                LocationPrefs locationPrefs = singletons.f25794E;
                singletons.f25794E = null;
                Singletons.m28495a(locationPrefs);
            }
            IncognitoCallManager incognitoCallManager = singletons.f25837v;
            singletons.f25837v = null;
            Singletons.m28495a(incognitoCallManager);
            RetentionAnalytics retentionAnalytics = singletons.f25795F;
            singletons.f25795F = null;
            Singletons.m28495a(retentionAnalytics);
            VideoCacheManager videoCacheManager = singletons.f25796G;
            singletons.f25796G = null;
            Singletons.m28495a(videoCacheManager);
            singletons.f25797H = null;
        }
        Handler handler = f19163f;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        if (Build.VERSION.SDK_INT >= 21 && !isUnitTestMode()) {
            WifiStateReceiver wifiStateReceiver = WifiStateReceiver.get();
            wifiStateReceiver.f27396a.unregisterNetworkCallback(wifiStateReceiver.f27397b);
        }
        super.onTerminate();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        if (i == 80 || i == 60 || i == 15 || i == 5) {
            try {
                Singletons.get().getCacheManager().f25926b.evictAll();
                PhoneManager.get().f26072a.evictAll();
            } catch (Exception e) {
            }
        }
        GlideUtils.m27038a(this).onTrimMemory(i);
        super.onTrimMemory(i);
    }

    @Override // android.app.Application
    public void registerActivityLifecycleCallbacks(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        StringUtils.m26058a(CallAppApplication.class);
        new StringBuilder("registerActivityLifecycleCallbacks callback=").append(activityLifecycleCallbacks);
        this.f19172m.f19222a.add(activityLifecycleCallbacks);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return super.registerReceiver(FilteredReceiversManager.m28661a(broadcastReceiver, intentFilter), intentFilter);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        return super.registerReceiver(FilteredReceiversManager.m28661a(broadcastReceiver, intentFilter), intentFilter, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler) {
        return super.registerReceiver(FilteredReceiversManager.m28661a(broadcastReceiver, intentFilter), intentFilter, str, handler);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, String str, Handler handler, int i) {
        return super.registerReceiver(FilteredReceiversManager.m28661a(broadcastReceiver, intentFilter), intentFilter, str, handler, i);
    }

    @Override // android.app.Application
    public void unregisterActivityLifecycleCallbacks(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        StringUtils.m26058a(CallAppApplication.class);
        new StringBuilder("unregisterActivityLifecycleCallbacks callback=").append(activityLifecycleCallbacks);
        this.f19172m.f19222a.remove(activityLifecycleCallbacks);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        super.unregisterReceiver(FilteredReceiversManager.m28662a(broadcastReceiver));
    }
}
