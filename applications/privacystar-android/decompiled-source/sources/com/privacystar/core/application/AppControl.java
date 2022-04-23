package com.privacystar.core.application;

import android.content.Context;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.activity_log.LogGrouping;
import com.privacystar.core.data.blocking.BlockDataCollator;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.EventControlRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.realm.RealmController;
import com.privacystar.core.data.sqlite.RealmConverter;
import com.privacystar.core.data.sqlite.SQLiteMigration;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.blocking.CallBlockingUtil;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.WebServices;
import com.privacystar.core.service.network.handler.AFAnalyticConfigHandler;
import com.privacystar.core.service.network.handler.BlockListPutHandler;
import com.privacystar.core.service.network.handler.ConnectivityHandler;
import com.privacystar.core.service.network.handler.FullShortNameHandler;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.privacystar.core.service.ping.PingUtil;
import com.privacystar.core.service.workers.CampaignWorkerManager;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.FirebaseUtil;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.Text;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/application/AppControl.class */
public class AppControl {
    private static Runnable cacheBlockingInformationRunnable = AppControl$$Lambda$1.$instance;

    private static void attemptRegistration(Context context) {
        if (PermissionUtils.hasMinimumPermissions(context)) {
            RegistrationHandler.getInstance().checkRegistration(context);
        } else {
            Timber.m37d("Server registration postponed - app permissions have not been granted.", new Object[0]);
        }
        FirebaseUtil.subscribeToOffenderDeltaTopic(context);
    }

    public static void cacheBlockingInformation() {
        new Thread(cacheBlockingInformationRunnable).start();
    }

    private static void checkSubscriptionStatus(Context context) {
        PreferenceUtil.putArePurchasesDoubleChecked(false);
        if (!PreferenceUtil.getPSPurchasesCached()) {
            Timber.m37d("Caching PlayStore Purchases into an empty Realm.", new Object[0]);
            BillingHelper.checkPurchases(context);
            PreferenceUtil.putPSPurchasesCached(true);
            return;
        }
        Timber.m37d("Checking to see if any purchases need to be restored.", new Object[0]);
        BillingHelper.checkPurchases(context);
    }

    private static void firePreemptive204Checks() {
        ArrayList<PSBackendEndpoint.PSEndpointInterface> arrayList = new ArrayList();
        arrayList.add(PSBackendEndpoint.PSEndpointInterface.SERVICES);
        for (final PSBackendEndpoint.PSEndpointInterface pSEndpointInterface : arrayList) {
            new Thread(new Runnable(pSEndpointInterface) { // from class: com.privacystar.core.application.AppControl$$Lambda$0
                private final PSBackendEndpoint.PSEndpointInterface arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = pSEndpointInterface;
                }

                @Override // java.lang.Runnable
                public void run() {
                    AppControl.lambda$firePreemptive204Checks$1$AppControl(this.arg$1);
                }
            }).start();
        }
    }

    public static void handleMessagesOnStartup(Realm realm) {
        if (PreferenceUtil.getIsFirstRun()) {
            CampaignWorkerManager.INSTANCE.scheduleOnInstallMessages();
        }
        CampaignWorkerManager.INSTANCE.scheduleInactiveMessage();
        if (PreferenceUtil.getNumberOfApplicationVisits() >= 4) {
            Timber.m37d("> 4 visits", new Object[0]);
            if (SubscriptionRealm.isSubscriptionFreeUser(realm)) {
                Timber.m37d("Free user", new Object[0]);
                if (!PreferenceUtil.getIsFreeUserBiweeklyMessageScheduled()) {
                    Timber.m37d("Biweekly not scheduled yet", new Object[0]);
                    CampaignWorkerManager.INSTANCE.scheduleBiweeklyMessage();
                    PreferenceUtil.putIsFreeUserBiweeklyMessagesScheduled(true);
                }
            } else if (PreferenceUtil.getIsFreeUserBiweeklyMessageScheduled()) {
                Timber.m37d("Subscribed user, but still has biweekly messages scheduled (not anymore)", new Object[0]);
                CampaignWorkerManager.INSTANCE.cancelBiweeklyMessage();
                PreferenceUtil.putIsFreeUserBiweeklyMessagesScheduled(false);
            }
        }
    }

    public static void initialize(Context context) {
        if (BuildUtil.INSTANCE.isAF()) {
            AFAnalyticConfigHandler.INSTANCE.getConfig();
        }
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            processFirstRun(context, defaultInstance);
            processAssets(defaultInstance);
            setDefaultPreferences();
            checkSubscriptionStatus(context);
            setupDatabase(context, defaultInstance);
            updatePhoneCache(context);
            attemptRegistration(context);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$firePreemptive204Checks$1$AppControl(PSBackendEndpoint.PSEndpointInterface pSEndpointInterface) {
        try {
            ConnectivityHandler.checkConnectivity(pSEndpointInterface);
        } catch (Throwable th) {
            Timber.m23w(th, "encountered an error while performing 204 check.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$static$0$AppControl() {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            CallBlockingUtil.cacheInformation(PSApplication.context(), defaultInstance);
            BlockDataCollator.refreshEventControl();
            BlockingManager.getInstance().clearEventControlManagers();
            EventControlRealm.manageEventControlTable();
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    private static void processAssets(Realm realm) {
        if (PreferenceUtil.getFetchingOffenderDeltaTime() + 1200000 < System.currentTimeMillis()) {
            FullShortNameHandler.getInstance().generateAndSendRequest();
        }
        PreferenceUtil.putFetchingOffenderDeltaTime(0L);
    }

    private static void processFirstRun(Context context, Realm realm) {
        AnalyticsManager.INSTANCE.fire(new Event.StartupApplicationEvent(PreferenceUtil.getIsFirstRun()));
        AnalyticsManager.INSTANCE.fire(new Event.NetworkTypeEvent(WebServices.isNetworkAvailable(PSApplication.context().getApplicationContext())));
        PreferenceUtil.putAreStartupMessagesEnabled(true);
        PingUtil.startDailyPings(context);
        processInstallation(context, realm);
        trackApplicationVisit();
        if (context.getResources().getBoolean(C1566R.bool.variant_has_local_notifications)) {
            handleMessagesOnStartup(realm);
        }
        PreferenceUtil.putIsFirstRun(false);
        if (PreferenceUtil.getLastAppUpgradeTime() == 0) {
            PreferenceUtil.putLastAppUpgradeTime(System.currentTimeMillis());
        }
    }

    private static void processInstallation(Context context, Realm realm) {
        if (context.getResources().getBoolean(C1566R.bool.offline_subscription_enabled) && PreferenceUtil.getIsFirstRun()) {
            Timber.m37d("Initializing offline license subscription.", new Object[0]);
            SubscriptionRealm.initializeOfflineSubscription(realm);
        }
        if (!PreferenceUtil.getHasBlockListBeenPut()) {
            List<String> blockListNumbersIfActive = BlockListRealm.getBlockListNumbersIfActive(realm, BlockListRealm.BlockListActive.ACTIVE);
            if (!blockListNumbersIfActive.isEmpty()) {
                BlockListPutHandler.getInstance().generateAndEnqueueRequest(blockListNumbersIfActive);
            } else {
                PreferenceUtil.putHasBlockListBeenPut(true);
            }
        }
    }

    private static void setDefaultPreferences() {
        PreferenceUtil.putCallerGroupingEnabled(false);
        PreferenceUtil.putPsServiceDisabledDialogShowing(false);
        PreferenceUtil.putActivityLogGrouping(LogGrouping.ADJACENT_CALLER_EVENTS);
    }

    private static void setupDatabase(Context context, Realm realm) {
        RealmController.initializeRealmData();
        if (PreferenceUtil.getWasSQLiteMigrated()) {
            Timber.m37d("Legacy SQLite database was already migrated.", new Object[0]);
        } else if (!SQLiteMigration.doesSQLiteDatabaseExist(context)) {
            Timber.m37d("No legacy SQLite database was detected.", new Object[0]);
            PreferenceUtil.putWasSQLiteMigrated(true);
        } else {
            Timber.m37d("Legacy 2.0 SQLite database detected. Preparing to migrate to final 2.0 schema and then convert to Realm.", new Object[0]);
            SQLiteMigration.from().getDatabaseHelper(context);
            Timber.m37d("Finished SQLite migrations. Preparing to convert to Realm.", new Object[0]);
            RealmConverter.convertSQLiteToRealm(context, realm);
            PreferenceUtil.putWasSQLiteMigrated(true);
        }
    }

    public static void trackApplicationVisit() {
        int numberOfApplicationVisits = PreferenceUtil.getNumberOfApplicationVisits() + 1;
        Timber.m37d("visits = %d", Integer.valueOf(numberOfApplicationVisits));
        PreferenceUtil.putNumberOfApplicationVisits(numberOfApplicationVisits);
        PreferenceUtil.putIsFirstHomeActivityVisitThisLaunch(true);
    }

    private static void updatePhoneCache(Context context) {
        if (!PreferenceUtil.getHasCydNumberBeenCached()) {
            updatePhoneCacheImpl(context, PreferenceUtil.getUserNumberToVerify(), InformationUtil.getPhoneNumber(context));
            PreferenceUtil.putHasCydNumberBeenCached(true);
        }
    }

    private static void updatePhoneCacheImpl(Context context, String str, String str2) {
        if (Text.isBlank(str2) || !str2.equals(str)) {
            Timber.m37d("SIM number missing, using ENGAGE-supplied number [%s] to register.", str);
            attemptRegistration(context);
            return;
        }
        Timber.m37d("ENGAGE number was found to be previously used in registration.", new Object[0]);
    }
}
