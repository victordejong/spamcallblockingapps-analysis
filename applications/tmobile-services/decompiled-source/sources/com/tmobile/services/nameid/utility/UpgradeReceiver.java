package com.tmobile.services.nameid.utility;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.MetroApiWrapper;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.LicenseResponse;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.IamWrapper;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import io.reactivex.functions.Consumer;
import io.realm.ImportFlag;
import io.realm.Realm;
import java.util.Date;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/UpgradeReceiver.class */
public class UpgradeReceiver extends BroadcastReceiver {
    /* renamed from: a */
    private void m5286a(final Context context) {
        LogUtil.m5632o("UpgradeReceiver#", "Attempting migration in background");
        if (!PreferenceUtils.m5396a()) {
            if (PreferenceUtils.m5395b("PREF_EULA_ACCEPTED", false)) {
                TmoApiWrapper.m6621s(context, null);
            }
        } else if (PreferenceUtils.m5395b("PREF_DID_MIGRATION", false)) {
            LogUtil.m5632o("UpgradeReceiver#", "Has already done migration, aborting migration");
        } else {
            TmoApiWrapper.m6620t(new Consumer() { // from class: com.tmobile.services.nameid.utility.u1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    UpgradeReceiver.m5285b(context, (TmoUserStatus) obj);
                }
            }, new Consumer() { // from class: com.tmobile.services.nameid.utility.x1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    UpgradeReceiver.m5277j(context, (Throwable) obj);
                }
            }, null);
            LogUtil.m5639h("UpgradeReceiver#", "end migration");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m5285b(final Context context, TmoUserStatus tmoUserStatus) throws Exception {
        final Realm e;
        LogUtil.m5639h("UpgradeReceiver#", "Successful retrieval of TmoUserStatus");
        if (!BuildUtils.m5850d() || !MigrationHelper.m5516p(context)) {
            e = MigrationHelper.m5527e();
            if (e != null) {
                try {
                    MigrationHelper.m5529c(context, e);
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            if (e != null) {
                e.close();
            }
        } else {
            LogUtil.m5643d("UpgradeReceiver#goToNextScreen", "Found package: com.privacystar.android.metro");
            e = Realm.m3064G0();
            try {
                if (e.m3053Q0(LicenseResponseItem.class).m2918E().size() == 0) {
                    LogUtil.m5643d("UpgradeReceiver#attemptMigration", "Registering with FO backend - Attempting migration but need license");
                    PreferenceUtils.m5386k("PREF_APK_UPGRADE_REGISTRATION", true);
                    FoRegistrationHelper.m5702d(new Consumer() { // from class: com.tmobile.services.nameid.utility.a2
                        @Override // io.reactivex.functions.Consumer
                        public final void accept(Object obj) {
                            UpgradeReceiver.m5280g(Realm.this, context, (LicenseResponse) obj);
                        }
                    });
                } else {
                    MigrationHelper.m5515q(context);
                }
                if (e != null) {
                    e.close();
                }
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        m5276k(context, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static /* synthetic */ void m5283d(LicenseResponseItem licenseResponseItem, Realm realm) {
        realm.m3053Q0(LicenseResponseItem.class).m2918E().m3099d();
        realm.m3045v0(licenseResponseItem, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static /* synthetic */ void m5282e(Context context, LicenseResponse licenseResponse) throws Exception {
        PreferenceUtils.m5383n("PREF_PSTAR_USER_TOKEN", licenseResponse.getToken());
        LogUtil.m5643d("UpgradeReceiver#onReceive", "token is " + licenseResponse.getToken());
        final LicenseResponseItem licenseResponseItem = new LicenseResponseItem();
        licenseResponseItem.setToken(licenseResponse.getToken());
        licenseResponseItem.setTokenTtl(licenseResponse.getTokenTtl());
        licenseResponseItem.setLicenseState(licenseResponse.getLicState().getDisplayName());
        licenseResponseItem.setLicenseTrialEnd(licenseResponse.getLicTrialEnd());
        licenseResponseItem.setLicenseExpireDate(licenseResponse.getLicExpireDate());
        licenseResponseItem.setLicenseFeatures(licenseResponse.getLicFeatures());
        licenseResponseItem.setBillingSoc(licenseResponse.getBillingSoc());
        licenseResponseItem.setAdsAvailable(licenseResponse.getAdsAvailable().booleanValue());
        licenseResponseItem.setLastUpdated(new Date(System.currentTimeMillis()));
        try {
            Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.b2
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    UpgradeReceiver.m5283d(LicenseResponseItem.this, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("UpgradeReceiver#", "Error updating LicenseResponseItem:", e);
        }
        if (BuildUtils.m5850d()) {
            if (MigrationHelper.m5516p(context)) {
                LogUtil.m5643d("UpgradeReceiver#goToNextScreen", "Found package: com.privacystar.android.metro");
                MigrationHelper.m5515q(context);
            }
            SubscriptionHelper.State e2 = SubscriptionHelper.m5323e();
            if (!e2.equals(SubscriptionHelper.State.NONE)) {
                LogUtil.m5643d("UpgradeReceiver#goToNextScreen", "Check subscription");
                MetroApiWrapper.m6731d(context, e2, SubscriptionHelper.m5310r(SubscriptionHelper.m5325c()), false);
            }
            ApiUtils.m6841p0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static /* synthetic */ void m5281f(LicenseResponseItem licenseResponseItem, Realm realm) {
        realm.m3053Q0(LicenseResponseItem.class).m2918E().m3099d();
        realm.m3045v0(licenseResponseItem, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ void m5280g(Realm realm, Context context, LicenseResponse licenseResponse) throws Exception {
        PreferenceUtils.m5383n("PREF_PSTAR_USER_TOKEN", licenseResponse.getToken());
        LogUtil.m5643d("UpgradeReceiver#attemptMigration", "token is " + licenseResponse.getToken());
        final LicenseResponseItem licenseResponseItem = new LicenseResponseItem();
        licenseResponseItem.setToken(licenseResponse.getToken());
        licenseResponseItem.setTokenTtl(licenseResponse.getTokenTtl());
        licenseResponseItem.setLicenseState(licenseResponse.getLicState().getDisplayName());
        licenseResponseItem.setLicenseTrialEnd(licenseResponse.getLicTrialEnd());
        licenseResponseItem.setLicenseExpireDate(licenseResponse.getLicExpireDate());
        licenseResponseItem.setLicenseFeatures(licenseResponse.getLicFeatures());
        licenseResponseItem.setBillingSoc(licenseResponse.getBillingSoc());
        licenseResponseItem.setAdsAvailable(licenseResponse.getAdsAvailable().booleanValue());
        licenseResponseItem.setLastUpdated(new Date(System.currentTimeMillis()));
        realm.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.w1
            @Override // io.realm.Realm.Transaction
            /* renamed from: a */
            public final void mo3037a(Realm realm2) {
                UpgradeReceiver.m5281f(LicenseResponseItem.this, realm2);
            }
        });
        MigrationHelper.m5515q(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public static void m5277j(Context context, Throwable th) {
        LogUtil.m5641f("UpgradeReceiver#", "", th);
        m5276k(context, false);
    }

    /* renamed from: k */
    private static void m5276k(Context context, boolean z) {
        String str;
        String str2;
        if (!PreferenceUtils.m5395b("PREF_APP_UPGRADE_HAS_FINISHED", false)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Will be showing notification where update is ");
            sb.append(z ? "successful" : "unsuccessful");
            LogUtil.m5643d("UpgradeReceiver#showNotification", sb.toString());
            if (z) {
                str2 = context.getString(C1517R.string.migration_success_notification_title);
                str = context.getString(C1517R.string.migration_success_notification_subtitle);
            } else {
                str2 = context.getString(C1517R.string.migration_fail_notification_title);
                str = context.getString(C1517R.string.migration_fail_notification_subtitle);
            }
            NotificationUtil.m5436u(context, str2, str, str2, "ONBOARDING_KEY");
            PreferenceUtils.m5386k("PREF_APP_UPGRADE_HAS_FINISHED", true);
            return;
        }
        LogUtil.m5643d("UpgradeReceiver#showNotification", "Already upgraded from phase-1 or user is only updating APK");
    }

    /* renamed from: l */
    private static void m5275l(Context context) {
        String str;
        String str2;
        PreferenceUtils.m5386k("PREF_ACTIVITY_JUMP_TO_MESSAGES", true);
        if (!SubscriptionHelper.m5317k() || SubscriptionHelper.m5308t() || !Feature.PNB_MESSAGING.isOwned()) {
            str2 = context.getString(C1517R.string.notif_whats_new_title_unpaid);
            str = context.getString(C1517R.string.notif_whats_new_text_unpaid);
        } else {
            str2 = context.getString(C1517R.string.notif_whats_new_title);
            str = context.getString(C1517R.string.notif_whats_new_text);
        }
        NotificationUtil.m5434w(context, str2, str, str2, "STARTUP_KEY_BASIC");
    }

    /* renamed from: h */
    public /* synthetic */ void m5279h(final Context context, IamWrapper.IamResponse iamResponse) throws Exception {
        if (iamResponse != IamWrapper.IamResponse.SUCCESS) {
            LogUtil.m5632o("UpgradeReceiver#", "Encountered error while getting SIT");
            m5276k(context, false);
            return;
        }
        PreferenceUtils.m5386k("PREF_ALLOW_REGISTER_UPSTREAMS", true);
        String g = PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN");
        if (g == null || g.isEmpty()) {
            LogUtil.m5643d("UpgradeReceiver#onReceive", "MSISDN is empty - skipping upstreams and registration");
        } else {
            LogUtil.m5632o("UpgradeReceiver#", "registering upstream for " + g);
            FcmService.m5707i(g);
            if (PreferenceUtils.m5395b("PREF_EULA_ACCEPTED", false)) {
                LogUtil.m5643d("UpgradeReceiver#onReceive", "Registering with FO backend - APK version changed or App installed with elevated permissions");
                PreferenceUtils.m5386k("PREF_APK_UPGRADE_REGISTRATION", true);
                FoRegistrationHelper.m5702d(new Consumer() { // from class: com.tmobile.services.nameid.utility.y1
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        UpgradeReceiver.m5282e(context, (LicenseResponse) obj);
                    }
                });
            } else {
                LogUtil.m5643d("UpgradeReceiver#onReceive", "EULA not accepted - skipping registration");
            }
        }
        m5286a(context);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, Intent intent) {
        if (DeviceInfoUtils.m5752l(context) && BuildUtils.m5844j() && Feature.PNB_MESSAGING.isOwned()) {
            m5275l(context);
        }
        if (PreferenceUtils.m5389h("PREF_ANALYTICS_IID", "").isEmpty()) {
            PreferenceUtils.m5383n("PREF_ANALYTICS_IID", UUID.randomUUID().toString());
        }
        MainApplication.m7538b(true);
        PreferenceUtils.m5386k("PREF_UPDATE_ANALYTIC_FROM_BROADCAST", true);
        IamWrapper.m5684d(context, null).subscribe(new Consumer() { // from class: com.tmobile.services.nameid.utility.v1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                UpgradeReceiver.this.m5279h(context, (IamWrapper.IamResponse) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.utility.z1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                UpgradeReceiver.m5277j(context, (Throwable) obj);
            }
        });
    }
}
