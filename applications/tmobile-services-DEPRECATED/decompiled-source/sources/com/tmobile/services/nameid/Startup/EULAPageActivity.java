package com.tmobile.services.nameid.Startup;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.api.MetroApiWrapper;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.api.TmoSubscriptionCheck;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.LicenseResponse;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.p007ui.NameIDTextView;
import com.tmobile.services.nameid.p007ui.dialog_fragment.CustomInfoDialogFragment;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.DeviceInfoUtils;
import com.tmobile.services.nameid.utility.FcmService;
import com.tmobile.services.nameid.utility.FoRegistrationHelper;
import com.tmobile.services.nameid.utility.IamWrapper;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.MigrationHelper;
import com.tmobile.services.nameid.utility.NetworkChecks;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.realm.ImportFlag;
import io.realm.Realm;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/EULAPageActivity.class */
public class EULAPageActivity extends AppCompatActivity {

    /* renamed from: o */
    private static int f12962o = 1;
    @Nullable

    /* renamed from: f */
    NameIDTextView f12963f;

    /* renamed from: g */
    NameIDButton f12964g;
    @Nullable

    /* renamed from: h */
    private DialogFragment f12965h;

    /* renamed from: j */
    private String f12967j;

    /* renamed from: i */
    private FlowController f12966i = new FlowController(this);

    /* renamed from: k */
    private int f12968k = 0;

    /* renamed from: l */
    private int f12969l = 0;

    /* renamed from: m */
    private int f12970m = 0;

    /* renamed from: n */
    private boolean f12971n = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public static /* synthetic */ void m7252A(LicenseResponseItem licenseResponseItem, Realm realm) {
        realm.m3053Q0(LicenseResponseItem.class).m2918E().m3099d();
        realm.m3045v0(licenseResponseItem, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: E */
    public static /* synthetic */ void m7248E(Context context, LicenseResponse licenseResponse) throws Exception {
        PreferenceUtils.m5383n("PREF_PSTAR_USER_TOKEN", licenseResponse.getToken());
        LogUtil.m5643d("EULAPageActivity#goToNextScreen", "token is " + licenseResponse.getToken());
        final LicenseResponseItem licenseResponseItem = new LicenseResponseItem();
        licenseResponseItem.setToken(licenseResponse.getToken());
        licenseResponseItem.setTokenTtl(licenseResponse.getTokenTtl());
        licenseResponseItem.setLicenseState(licenseResponse.getLicState().getDisplayName());
        licenseResponseItem.setLicenseTrialEnd(licenseResponse.getLicTrialEnd());
        licenseResponseItem.setLicenseExpireDate(licenseResponse.getLicExpireDate());
        licenseResponseItem.setPending(false);
        licenseResponseItem.setPendingCheckError(false);
        licenseResponseItem.setLicenseFeatures(licenseResponse.getLicFeatures());
        licenseResponseItem.setBillingSoc(licenseResponse.getBillingSoc());
        licenseResponseItem.setAdsAvailable(licenseResponse.getAdsAvailable().booleanValue());
        licenseResponseItem.setLastUpdated(new Date(System.currentTimeMillis()));
        Realm G0 = Realm.m3064G0();
        try {
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.Startup.n
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    EULAPageActivity.m7252A(LicenseResponseItem.this, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
            if (BuildUtils.m5850d()) {
                if (MigrationHelper.m5516p(context)) {
                    LogUtil.m5643d("EULAPageActivity#goToNextScreen", "Found package: com.privacystar.android.metro");
                    MigrationHelper.m5515q(context);
                }
                SubscriptionHelper.State e = SubscriptionHelper.m5323e();
                if (!e.equals(SubscriptionHelper.State.NONE)) {
                    LogUtil.m5643d("EULAPageActivity#goToNextScreen", "Check subscription");
                    MetroApiWrapper.m6731d(context, e, SubscriptionHelper.m5310r(SubscriptionHelper.m5325c()), false);
                }
                ApiUtils.m6841p0();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: G */
    public static void m7246G(final Context context) {
        LogUtil.m5643d("EULAPageActivity#doInitialRegistration", "Registering with FO backend - initial registration");
        FoRegistrationHelper.m5705a(context);
        FoRegistrationHelper.m5702d(new Consumer() { // from class: com.tmobile.services.nameid.Startup.o
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                EULAPageActivity.m7248E(context, (LicenseResponse) obj);
            }
        });
    }

    /* renamed from: H */
    static void m7245H() {
        Context l = MainApplication.m7528l();
        if (l != null) {
            FoRegistrationHelper.m5705a(l);
            boolean z = false;
            z = true;
            if ("".equals(PreferenceUtils.m5390g("PREF_PSTAR_USER_TOKEN"))) {
                LogUtil.m5643d("EULAPageActivity#checkRegistrationData", "Registering with FO backend - FO Token is empty");
                z = true;
            }
            if (!PreferenceUtils.m5390g("PREF_DEVICE_ID").isEmpty() && !DeviceInfoUtils.m5762b(l).equals(PreferenceUtils.m5390g("PREF_DEVICE_ID"))) {
                String b = DeviceInfoUtils.m5762b(l);
                if (!b.isEmpty()) {
                    LogUtil.m5643d("EULAPageActivity#checkRegistrationData", "Registering with FO backend - Device ID changed");
                    PreferenceUtils.m5383n("PREF_DEVICE_ID", b);
                }
            }
            if (z) {
                FoRegistrationHelper.m5693m(l);
            }
        }
    }

    /* renamed from: i */
    public static void m7244i(final Context context) {
        String g = PreferenceUtils.m5390g("PREF_TMO_ACCOUNT_MSISDN");
        if (g == null || g.isEmpty()) {
            LogUtil.m5631p("EULAPageActivity#", "Tried to do FCM upstream, but did not find MSISDN");
        } else {
            FcmService.m5707i(g);
            FcmService.m5714b(g);
        }
        if (!PreferenceUtils.m5395b("PREF_APK_UPGRADE_REGISTRATION", false)) {
            Observable.timer(250L, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.m4448c()).subscribe(new Consumer() { // from class: com.tmobile.services.nameid.Startup.h
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Long l = (Long) obj;
                    EULAPageActivity.m7246G(context);
                }
            });
        } else {
            LogUtil.m5643d("EULAPageActivity#doInitialRegistration", "Already registered after APK upgrade via UpgradeReceiver, skipping registration");
            PreferenceUtils.m5386k("PREF_APK_UPGRADE_REGISTRATION", false);
            m7245H();
        }
        AnalyticsWrapper.m5866n();
    }

    /* renamed from: j */
    private static void m7243j() {
        LogUtil.m5632o("EULAPageActivity#", "Get at least 30 days worth of call log.");
        Observable<List<ApiUtils.ActivityFromCaller>> k = ApiWrapper.m6769k(1, Caller.shouldSuppressCategory(), Caller.shouldSuppressName());
        if (k != null) {
            k.subscribeOn(Schedulers.m3239b()).subscribe(C1598m.f13008f, C1594i.f13004f);
        } else {
            LogUtil.m5631p("EULAPageActivity#", "Call log observable was null. Cannot fetch call log.");
        }
    }

    /* renamed from: k */
    private void m7242k() {
        DialogFragment dialogFragment = this.f12965h;
        if (dialogFragment == null || !dialogFragment.isVisible()) {
            this.f12965h = WidgetUtils.m5245a0(getSupportFragmentManager(), C1517R.string.progress_dialog_authenticating, true);
        }
        LogUtil.m5643d("EULAPageActivity#getSit", "Attempting to retrieve SIT Token");
        IamWrapper.m5684d(this, this.f12967j).subscribeOn(AndroidSchedulers.m4448c()).observeOn(AndroidSchedulers.m4448c()).subscribe(new Consumer() { // from class: com.tmobile.services.nameid.Startup.t
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                EULAPageActivity.this.m7232u((IamWrapper.IamResponse) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.Startup.p
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                EULAPageActivity.this.m7231v((Throwable) obj);
            }
        });
    }

    /* renamed from: l */
    private void m7241l() {
        TmoApiWrapper.m6620t(new Consumer() { // from class: com.tmobile.services.nameid.Startup.s
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                EULAPageActivity.this.m7230w((TmoUserStatus) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.Startup.q
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                EULAPageActivity.this.m7229x((Throwable) obj);
            }
        }, this.f12967j);
    }

    /* renamed from: o */
    private void m7238o() {
        if (!this.f12971n) {
            boolean b = PreferenceUtils.m5395b("PREF_GOT_INITIAL_SIT", false);
            boolean b2 = PreferenceUtils.m5395b("PREF_GOT_INITIAL_USER_STATUS", false);
            LogUtil.m5632o("EULAPageActivity#", "Attempting to go to next screen, has sit? " + b + " has user status? " + b2);
            if (b && b2) {
                LogUtil.m5632o("EULAPageActivity#", "Going to next page");
                AnalyticsWrapper.m5876d(this.f12967j, 0, this.f12968k, this.f12969l, this.f12970m);
                this.f12971n = true;
                this.f12964g.setEnabled(false);
                m7236q();
                m7244i(this);
                m7237p(this);
                PreferenceUtils.m5386k("pref_first_use", false);
                PreferenceUtils.m5386k("pref_just_showed_startup", true);
                this.f12966i.m7223e();
                finish();
            }
        }
    }

    /* renamed from: p */
    public static void m7237p(Context context) {
        if (BuildUtils.m5851c()) {
            SubscriptionHelper.State state = SubscriptionHelper.State.NONE;
            Realm G0 = Realm.m3064G0();
            try {
                TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
                if (tmoUserStatus != null) {
                    state = TmoApiWrapper.m6626n0(tmoUserStatus);
                }
                if (G0 != null) {
                    G0.close();
                }
                if (state != SubscriptionHelper.State.NONE) {
                    new TmoSubscriptionCheck().m6597a(context, state, false, false, false);
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (G0 != null) {
                        try {
                            G0.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
    }

    /* renamed from: q */
    public static void m7236q() {
        Realm G0 = Realm.m3064G0();
        try {
            LogUtil.m5632o("EULAPageActivity#", "Inserting initial empty license");
            if (G0.m3053Q0(LicenseResponseItem.class).m2896f() <= 0) {
                final LicenseResponseItem licenseResponseItem = new LicenseResponseItem();
                licenseResponseItem.setLicenseState("inactive");
                licenseResponseItem.setPending(false);
                licenseResponseItem.setPendingCheckError(false);
                licenseResponseItem.setBillingSoc(null);
                licenseResponseItem.setLicenseTrialEnd(null);
                licenseResponseItem.setLicenseExpireDate(null);
                licenseResponseItem.setTokenTtl(null);
                licenseResponseItem.setToken(null);
                licenseResponseItem.setLastUpdated(new Date(System.currentTimeMillis()));
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.Startup.k
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        EULAPageActivity.m7228y(LicenseResponseItem.this, realm);
                    }
                });
                if (G0 != null) {
                    G0.close();
                }
            } else if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public static /* synthetic */ void m7228y(LicenseResponseItem licenseResponseItem, Realm realm) {
        LicenseResponseItem licenseResponseItem2 = (LicenseResponseItem) realm.m3045v0(licenseResponseItem, new ImportFlag[0]);
    }

    /* renamed from: B */
    public /* synthetic */ void m7251B(View view) {
        m7247F();
    }

    /* renamed from: C */
    public /* synthetic */ void m7250C(View view) {
        m7239n();
    }

    /* renamed from: F */
    public void m7247F() {
        LogUtil.m5632o("EULAPageActivity#onGetStartedClick", "EULA accepted");
        MainApplication.m7553C("app_startup", new String[]{"eula_status"}, new String[]{"accept"});
        AnalyticsWrapper.m5883E("EULAPageActivity", "continue");
        PreferenceUtils.m5386k("PREF_APP_JUST_INSTALLED", true);
        PreferenceUtils.m5386k("PREF_ALLOW_REGISTER_UPSTREAMS", true);
        PreferenceUtils.m5386k("PREF_EULA_ACCEPTED", true);
        PreferenceUtils.m5386k("PREF_NOTIFICATION_SCAM_BLOCKED", true);
        PreferenceUtils.m5386k("PREF_NOTIFICATION_BLOCK_LIST_BLOCKED", false);
        if (!NetworkChecks.f14407b.m5479d(this, NetworkChecks.NetworkType.Any.f14409b)) {
            NameIDDialogBuilder.f13943m.m6132l(this).m6160b(getSupportFragmentManager());
            LogUtil.m5643d("EULAPageActivity#onGetStartedClick", "User is not connected to a network");
            return;
        }
        this.f12967j = UUID.randomUUID().toString();
        m7242k();
    }

    /* renamed from: m */
    void m7240m() {
        if (!this.f12971n) {
            LogUtil.m5632o("EULAPageActivity#", "Going to AuthenticationFailActivity since SIT error occurred");
            if (this.f12970m == 0) {
                this.f12970m = NetworkChecks.f14407b.m5479d(this, NetworkChecks.NetworkType.VPN.f14411b) ? 11 : 12;
            }
            AnalyticsWrapper.m5876d(this.f12967j, 0, this.f12968k, this.f12969l, this.f12970m);
            this.f12971n = true;
            PreferenceUtils.m5386k("pref_first_use", false);
            PreferenceUtils.m5386k("pref_just_showed_startup", true);
            PreferenceUtils.m5386k("PREF_IAM_ERROR_ON_STARTUP", true);
            startActivity(new Intent(this, AuthenticationFailActivity.class));
            finish();
        }
    }

    /* renamed from: n */
    public void m7239n() {
        AnalyticsWrapper.m5883E("EULAPageActivity", "external_link");
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getString(C1517R.string.eula_link))));
        LogUtil.m5643d("EULAPageActivity#goToLink", "User clicked Eula Link: " + getString(C1517R.string.eula_link));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MainApplication.m7553C("app_startup", new String[]{"eula_status"}, new String[]{"reject"});
        finishAffinity();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.m5632o("EULAPageActivity#onCreate", "created");
        ((MainApplication) getApplication()).m7551E(this, NameIDPage.OnboardingPage.Eula.f12682b);
        if (!PreferenceUtils.m5396a()) {
            setContentView(C1517R.layout.activity_eulapage);
        } else {
            LogUtil.m5632o("EULAPageActivity#onCreate", "This is a phase 1 user.");
            setContentView(C1517R.layout.activity_eulapage_upgrade);
        }
        NameIDButton nameIDButton = (NameIDButton) findViewById(C1517R.C1520id.button_get_started);
        this.f12964g = nameIDButton;
        nameIDButton.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Startup.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EULAPageActivity.this.m7251B(view);
            }
        });
        NameIDTextView nameIDTextView = (NameIDTextView) findViewById(C1517R.C1520id.textview_agreement_line_2);
        this.f12963f = nameIDTextView;
        if (nameIDTextView != null) {
            nameIDTextView.setMovementMethod(LinkMovementMethod.getInstance());
            this.f12963f.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Startup.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    EULAPageActivity.this.m7250C(view);
                }
            });
        }
        f12962o = 1;
        if (Build.VERSION.SDK_INT >= 21) {
            getWindow().setStatusBarColor(ContextCompat.m19675d(this, C1517R.C1518color.black_or_deep_purple));
        }
        boolean b = PreferenceUtils.m5395b("PREF_HAS_SHOWN_SCAM_SHIELD_UPGRADE", false);
        LogUtil.m5643d("EULAPageActivity#", "has shown Scam Freedom intro? " + b);
        if (!b) {
            PreferenceUtils.m5386k("PREF_HAS_SHOWN_SCAM_SHIELD_UPGRADE", true);
            LogUtil.m5643d("EULAPageActivity#", "Showing Scam Shield upgrade modal");
            CustomInfoDialogFragment.f13921i.m6179a(getSupportFragmentManager(), C1517R.layout.modal_app_upgrade, C1597l.f13007f);
        }
        LogUtil.m5643d("EULAPageActivity#", "Validate link - EULA - " + getString(C1517R.string.eula_link));
    }

    /* renamed from: u */
    public /* synthetic */ void m7232u(IamWrapper.IamResponse iamResponse) throws Exception {
        LogUtil.m5643d("EULAPageActivity#", "IAM response = " + iamResponse.name());
        if (iamResponse == IamWrapper.IamResponse.ERROR || iamResponse == IamWrapper.IamResponse.ERROR_NO_NETWORK || iamResponse == IamWrapper.IamResponse.ERROR_EXPIRED) {
            PreferenceUtils.m5386k("PREF_ENCOUNTERED_IAM_NETWORK_ERROR", iamResponse == IamWrapper.IamResponse.ERROR_NO_NETWORK);
            LogUtil.m5631p("EULAPageActivity#", "IAM encountered " + iamResponse.name());
            if (f12962o == 0) {
                m7240m();
                return;
            }
            LogUtil.m5631p("EULAPageActivity#", "retrying getIamToken");
            f12962o--;
            m7242k();
            return;
        }
        LogUtil.m5643d("EULAPageActivity#getSit", "Got SIT, going to next screen");
        PreferenceUtils.m5386k("PREF_GOT_INITIAL_SIT", true);
        this.f12968k = 1;
        m7241l();
        m7243j();
    }

    /* renamed from: v */
    public /* synthetic */ void m7231v(Throwable th) throws Exception {
        if (f12962o == 0) {
            m7240m();
        } else {
            LogUtil.m5631p("EULAPageActivity#", "retrying getIamToken - " + th.getMessage());
            f12962o = f12962o - 1;
            m7242k();
        }
        LogUtil.m5641f("EULAPageActivity#", "error getting SIT", th);
    }

    /* renamed from: w */
    public /* synthetic */ void m7230w(TmoUserStatus tmoUserStatus) throws Exception {
        LogUtil.m5643d("EULAPageActivity#", "Got user status");
        this.f12969l = 1;
        PreferenceUtils.m5386k("PREF_GOT_INITIAL_USER_STATUS", true);
        PreferenceUtils.m5386k("PREF_HAS_FETCHED_NEW_USER_STATUS", true);
        if (Objects.equals(tmoUserStatus.getCustomerType(), TmoUserStatus.CUSTOMER_TYPE_PREPAID)) {
            PreferenceUtils.m5386k("PREF_PREPAID_USER_AUTH_ERROR", true);
            this.f12970m = 21;
            m7240m();
            return;
        }
        this.f12970m = 1;
        m7238o();
    }

    /* renamed from: x */
    public /* synthetic */ void m7229x(Throwable th) throws Exception {
        LogUtil.m5641f("EULAPageActivity#", "", th);
        m7240m();
    }
}
