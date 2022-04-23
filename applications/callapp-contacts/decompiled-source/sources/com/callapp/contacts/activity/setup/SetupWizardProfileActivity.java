package com.callapp.contacts.activity.setup;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import androidx.core.content.b;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.CorePermissionsNotGrantedActivity;
import com.callapp.contacts.activity.base.BaseFullScreenActivity;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.activity.setup.CountryList;
import com.callapp.contacts.activity.setup.PhoneAndCountryDeviceExtractor;
import com.callapp.contacts.activity.setup.RegistrationRequest;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.activity.setup.SetupWizardProfileActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.PhoneVerifierManager;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.analytics.AbstractAnalyticsManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.messaging.FcmManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.popup.PrivacyConsentDialogPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.IntegerPref;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.observers.CallLogContentObserver;
import com.callapp.contacts.observers.ContactUtilsContactsContentObserver;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.receiver.WifiStateReceiver;
import com.callapp.contacts.sync.service.RealSyncService;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.JSONGroupType;
import com.callapp.contacts.util.JSONGroupTypePreference;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.UpdateUserProfileUtil;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.contacts.util.servermessage.CheckQuotaLimitation;
import com.callapp.contacts.util.servermessage.ValidateClientTask;
import com.callapp.contacts.workers.CallAppDailyWorker;
import com.callapp.contacts.workers.MissedCallSummaryDailyWorker;
import com.callapp.contacts.workers.NotAnswerCallSummaryDailyWorker;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardProfileActivity.class */
public class SetupWizardProfileActivity extends BaseFullScreenActivity implements RegistrationRequest.RegistrationEvents {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f13917a = false;

    /* renamed from: b  reason: collision with root package name */
    private ViewSwitcher f13918b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f13919c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f13920d;
    private TextView e;
    private TextView f;
    private Button g;
    private SimpleProgressDialog k;
    private Runnable l;
    private List<HttpRequest> h = new ArrayList();
    private boolean j = false;
    private boolean m = false;

    /* renamed from: com.callapp.contacts.activity.setup.SetupWizardProfileActivity$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardProfileActivity$1.class */
    class AnonymousClass1 extends Task {
        AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            PermissionManager.get();
            boolean a2 = PermissionManager.a();
            if (SetupWizardActivity.getCurrentSetupStage().equals(SetupWizardActivity.Stage.PAY_WALL)) {
                SetupWizardProfileActivity.this.startActivityForResult(new Intent(SetupWizardProfileActivity.this, OnBoardingPayWallPaymentActivity.class), 110);
            } else if (a2) {
                SetupWizardProfileActivity.this.i();
            } else {
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.CORE_PERMISSIONS);
                SetupWizardProfileActivity.this.l = new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$1$lev_gcyL2PqHFxyQzwtwoku3rpU
                    @Override // java.lang.Runnable
                    public final void run() {
                        SetupWizardProfileActivity.AnonymousClass1.this.b();
                    }
                };
                SetupWizardProfileActivity.this.f13919c.postDelayed(SetupWizardProfileActivity.this.l, 1000L);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            CorePermissionsNotGrantedActivity.a((Context) SetupWizardProfileActivity.this);
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            final String userProfileImageUrl = UserProfileManager.get().getUserProfileImageUrl();
            if (StringUtils.b((CharSequence) userProfileImageUrl) && SetupWizardProfileActivity.this.f13918b != null) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        GlideUtils.GlideRequestBuilder b2 = new GlideUtils.GlideRequestBuilder((ImageView) SetupWizardProfileActivity.this.f13918b.getNextView(), userProfileImageUrl, SetupWizardProfileActivity.this).b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), -1);
                        b2.l = true;
                        b2.f16207d = SetupWizardProfileActivity.this.f13918b;
                        b2.d();
                    }
                });
            }
            final String userProfileName = UserProfileManager.get().getUserProfileName();
            if (StringUtils.b((CharSequence) userProfileName)) {
                SetupWizardProfileActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SetupWizardProfileActivity.this.f13919c.setText(userProfileName);
                        SetupWizardProfileActivity.this.f13919c.setVisibility(0);
                    }
                });
            }
            SetupWizardProfileActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$1$uBytZsdoQ3L4TkpA8BFZx7yhKyQ
                @Override // java.lang.Runnable
                public final void run() {
                    SetupWizardProfileActivity.AnonymousClass1.this.a();
                }
            });
        }
    }

    /* renamed from: com.callapp.contacts.activity.setup.SetupWizardProfileActivity$12  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardProfileActivity$12.class */
    static /* synthetic */ class AnonymousClass12 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13929a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[SetupWizardActivity.Stage.values().length];
            f13929a = iArr;
            try {
                iArr[SetupWizardActivity.Stage.CORE_PERMISSIONS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13929a[SetupWizardActivity.Stage.COUNTRY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13929a[SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.setup.SetupWizardProfileActivity$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardProfileActivity$2.class */
    public class AnonymousClass2 extends Task {
        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            SetupWizardProfileActivity.this.n();
            SetupWizardProfileActivity.this.getUserConsent();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            SetupWizardProfileActivity.this.n();
            SetupWizardProfileActivity.g(SetupWizardProfileActivity.this);
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            if (SetupWizardProfileActivity.e().second == null) {
                SetupWizardProfileActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$2$OvafEnrZ_fqWTDbazoWKZDFGFTs
                    @Override // java.lang.Runnable
                    public final void run() {
                        SetupWizardProfileActivity.AnonymousClass2.this.b();
                    }
                });
            } else {
                SetupWizardProfileActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$2$ICaxICkATF2LnfMVRjrwqCWNwnY
                    @Override // java.lang.Runnable
                    public final void run() {
                        SetupWizardProfileActivity.AnonymousClass2.this.a();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Activity activity) {
        AuthenticatorsConfiguration.AUTHENTICATORS_TYPES fromNumRep = AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.fL.get().intValue());
        if (fromNumRep == AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP || fromNumRep == AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH) {
            SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.WELCOME);
            Intent intent = new Intent(this, SetupWizardActivity.class);
            intent.addFlags(Activities.getIntentFlagForNewDocument());
            Activities.a(this, intent);
            finish();
            return;
        }
        getUserConsent();
    }

    private void a(boolean z) {
        this.g.setEnabled(z);
        findViewById(2131363959).setEnabled(z);
    }

    public static boolean d() {
        if (!f13917a) {
            return SetupWizardActivity.getCurrentSetupStage().ordinal() >= SetupWizardActivity.Stage.CORE_PERMISSIONS.ordinal() && SetupWizardActivity.getCurrentSetupStage().ordinal() < SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE.ordinal();
        }
        return true;
    }

    static /* synthetic */ Pair e() {
        Pair<PhoneAndCountryDeviceExtractor.ExtractedPhone, PhoneAndCountryDeviceExtractor.ExtractedCountry> phoneAndCountry = PhoneAndCountryDeviceExtractor.getPhoneAndCountry();
        PhoneAndCountryDeviceExtractor.ExtractedPhone extractedPhone = (PhoneAndCountryDeviceExtractor.ExtractedPhone) phoneAndCountry.first;
        PhoneAndCountryDeviceExtractor.ExtractedCountry extractedCountry = (PhoneAndCountryDeviceExtractor.ExtractedCountry) phoneAndCountry.second;
        if (extractedPhone != null) {
            PhoneVerifierManager.a(extractedPhone, extractedPhone.isValidated());
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.a(Constants.REGISTRATION, "Extracted phone, reliable: " + extractedPhone.isReliable());
        } else {
            AnalyticsManager.get().a(Constants.REGISTRATION, "Could not extract phone");
        }
        if (extractedCountry == null) {
            AnalyticsManager.get().a(Constants.REGISTRATION, "Could not extract country");
        } else {
            AnalyticsManager analyticsManager2 = AnalyticsManager.get();
            analyticsManager2.a(Constants.REGISTRATION, "Extracted country, reliable: " + extractedCountry.isReliable());
            if (extractedCountry.isReliable()) {
                Prefs.aP.set(extractedCountry.getCountryISO());
            } else {
                Prefs.aQ.set(extractedCountry.getCountryISO());
            }
        }
        return phoneAndCountry;
    }

    static /* synthetic */ void f() {
        ConnectivityManager connectivityManager = (ConnectivityManager) CallAppApplication.get().getSystemService("connectivity");
        if (connectivityManager != null) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            boolean z = true;
            if (activeNetworkInfo == null || activeNetworkInfo.getType() != 1) {
                z = false;
            }
            if (z) {
                WifiStateReceiver.a();
            }
        }
    }

    static /* synthetic */ void g() {
        AbstractAnalyticsManager.UTM d2 = AbstractAnalyticsManager.d(Prefs.X.get());
        if (d2 != null && StringUtils.b((CharSequence) d2.f14975a)) {
            ReferAndEarnDataManager.sendPointsToReferer(d2.f14975a, 1);
        }
    }

    static /* synthetic */ void g(SetupWizardProfileActivity setupWizardProfileActivity) {
        SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.COUNTRY);
        AnalyticsManager.get().a(Constants.REGISTRATION, "Saw country screen");
        final View findViewById = setupWizardProfileActivity.findViewById(2131363164);
        findViewById.setVisibility(0);
        ((ImageView) findViewById.findViewById(2131362493)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099923), PorterDuff.Mode.SRC_IN));
        final Spinner spinner = (Spinner) findViewById.findViewById(2131362491);
        String str = Prefs.aQ.get();
        if (!StringUtils.b((CharSequence) str)) {
            str = null;
        }
        CountryList countryList = new CountryList(str, null);
        List<CountryList.CountryListItem> countryList2 = countryList.getCountryList();
        CountryList.CountryListItem countryListItem = new CountryList.CountryListItem("NONE", "N/A", "NONE", -1);
        countryList2.add(countryListItem);
        ArrayAdapter arrayAdapter = new ArrayAdapter(setupWizardProfileActivity, 17367043, countryList2);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        Integer autoSelectedIndex = countryList.getAutoSelectedIndex();
        if (autoSelectedIndex != null) {
            spinner.setSelection(autoSelectedIndex.intValue());
        } else {
            int position = arrayAdapter.getPosition(countryListItem);
            if (position >= 0) {
                spinner.setSelection(position);
            }
        }
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.3
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                AnalyticsManager.get().a(Constants.REGISTRATION, "Clicked OK in country screen");
                if (i != -1) {
                    CountryList.CountryListItem countryListItem2 = (CountryList.CountryListItem) spinner.getItemAtPosition(i);
                    if (!StringUtils.b((Object) "none", (Object) countryListItem2.getDisplayedCountry())) {
                        Prefs.aP.set(countryListItem2.getCountryCode());
                        findViewById.setVisibility(8);
                        AnalyticsManager.get().a(Constants.REGISTRATION, "Succesfully completed country screen");
                        SetupWizardProfileActivity.this.getUserConsent();
                        return;
                    }
                    FeedbackManager.get().a(Activities.getString(2131887649), (Integer) 17);
                    return;
                }
                FeedbackManager.get().a(Activities.getString(2131887649), (Integer) 17);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
                FeedbackManager.get().a(Activities.getString(2131887649), (Integer) 17);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getUserConsent() {
        SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.USER_CONSENT);
        boolean z = true;
        if (!StringUtils.e(Prefs.aR.get(), "+") ? !StringUtils.e(Prefs.ao.get(), "+") ? !Prefs.aP.isNotNull() || !StringUtils.f(Prefs.aP.get(), "KR") : !StringUtils.e(Prefs.ao.get(), "+82") : !StringUtils.e(Prefs.aR.get(), "+82")) {
            z = false;
        }
        if (!z || Prefs.bg.get().booleanValue()) {
            j();
        } else {
            PopupManager.get().a(this, new PrivacyConsentDialogPopup(new PrivacyConsentDialogPopup.Accept() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.4
                @Override // com.callapp.contacts.manager.popup.PrivacyConsentDialogPopup.Accept
                public final void a() {
                    Prefs.bg.set(Boolean.TRUE);
                    SetupWizardProfileActivity.this.j();
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Wizard profile screen", (String) null, 0.0d);
        SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
        Intent intent = new Intent(CallAppApplication.get(), ContactsListActivity.class);
        intent.setAction("com.callapp.contacts.FROM_SUB_ACTIVITY");
        intent.addFlags(268435456);
        Activities.a(this, intent);
        safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$HqDkHKAin2rEzJ3BwYIggMM92m0
            @Override // java.lang.Runnable
            public final void run() {
                SetupWizardProfileActivity.this.p();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        m();
        new AnonymousClass2().execute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        m();
        String str = Prefs.fK.get();
        AuthenticatorsConfiguration.AUTHENTICATORS_TYPES fromNumRep = AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.fL.get().intValue());
        if (fromNumRep == AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.USER_GOOGLE) {
            GoogleHelper.get();
            if (GoogleHelper.k()) {
                GoogleHelper googleHelper = GoogleHelper.get();
                googleHelper.setLoginListener(new RemoteAccountHelper.DefaultLoginListener(googleHelper) { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.5
                    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                    public final void a() {
                        super.a();
                        SetupWizardProfileActivity.this.n();
                        SetupWizardProfileActivity.this.getUserConsent();
                    }

                    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                    public final void b() {
                        super.b();
                        SetupWizardProfileActivity.this.n();
                        SetupWizardProfileActivity.this.c();
                    }

                    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                    public final void c() {
                        super.c();
                        SetupWizardProfileActivity.this.n();
                    }
                });
                googleHelper.a(this);
                return;
            }
        }
        AnalyticsManager.get().a(Constants.REGISTRATION, "Registration request starts");
        new RegistrationRequest(str, fromNumRep, this).a();
    }

    private void k() {
        Prefs.aW.set(Boolean.TRUE);
        CallLogContentObserver.a();
        ContactUtilsContactsContentObserver.a();
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.7
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                UpdateUserProfileUtil.b();
            }
        }.execute();
        ValidateClientTask.b();
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.8
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                FcmManager.get().a();
                CallAppDailyWorker.f17024a.a();
                MissedCallSummaryDailyWorker.f17041a.b();
                NotAnswerCallSummaryDailyWorker.f17062a.b();
                SetupWizardProfileActivity.f();
                ContactUtils.c();
                PhoneStateManager.get().listenToCallState(true);
                SetupWizardProfileActivity.g();
            }
        }.execute();
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.9
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                CheckQuotaLimitation.a(false);
            }
        }.execute();
        n();
        SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
        RealSyncService.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$0P2nQvNdTIk3iFQNqpxsV1oSLJ4
            @Override // java.lang.Runnable
            public final void run() {
                SetupWizardProfileActivity.this.o();
            }
        });
    }

    private void m() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.11
            @Override // java.lang.Runnable
            public void run() {
                SimpleProgressDialog.a(SetupWizardProfileActivity.this.k);
                CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.11.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SetupWizardProfileActivity.this.k = new SimpleProgressDialog();
                        SetupWizardProfileActivity.this.k.setCancelable(false);
                        SetupWizardProfileActivity.this.k.setMessage(Activities.getString(2131887415));
                        PopupManager.get().a(SetupWizardProfileActivity.this, SetupWizardProfileActivity.this.k);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        SimpleProgressDialog.a(this.k);
        this.k = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        this.g.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.10
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                AnalyticsManager.get().a(Constants.REGISTRATION, "ClickStartUsingCallApp", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.fL.get().intValue()).name);
                SetupWizardProfileActivity.this.h();
            }
        });
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        StringPref stringPref = Prefs.fK;
        stringPref.set(stringPref.defaultValue);
        IntegerPref integerPref = Prefs.fL;
        integerPref.set(integerPref.defaultValue);
        finish();
    }

    @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
    public final void a() {
        this.h.clear();
        SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.REGISTRATION_COMPLETED);
        String str = AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.fL.get().intValue()).name;
        Prefs.aX.set(str);
        AnalyticsManager.get().a(Constants.REGISTRATION, "Registration request success", str);
        AnalyticsManager.get().a(str);
        if (this.j) {
            AnalyticsManager.get().a(Constants.REGISTRATION, "Registration success from login reminder", str);
        }
        if ((!Prefs.aY.get().booleanValue() && !this.m) || Prefs.cJ.get().booleanValue()) {
            k();
        }
        final JSONGroupType groupTypePreference = JSONGroupTypePreference.getGroupTypePreference("onBoardingPaymentConfig");
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.6
            @Override // java.lang.Runnable
            public void run() {
                ViewUtils.a(SetupWizardProfileActivity.this.findViewById(2131363959), b.a(CallAppApplication.get(), 2131232045));
                if (!BillingManager.isBillingAvailable() || Prefs.cJ.get().booleanValue()) {
                    SetupWizardProfileActivity.this.l();
                    return;
                }
                JSONGroupType jSONGroupType = groupTypePreference;
                if (jSONGroupType != null && jSONGroupType.getType() != 0 && !Prefs.aY.get().booleanValue() && !SetupWizardProfileActivity.this.m) {
                    Intent intent = new Intent(SetupWizardProfileActivity.this, OnBoardingPaymentActivity.class);
                    intent.putExtra("ONBOARDING_PAYMENT_LAYOUT_EXTRA", groupTypePreference.getType());
                    SetupWizardProfileActivity.this.startActivityForResult(intent, 109);
                } else if (Prefs.aY.get().booleanValue() || SetupWizardProfileActivity.this.m) {
                    SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.PAY_WALL);
                    SetupWizardProfileActivity.this.startActivityForResult(new Intent(SetupWizardProfileActivity.this, OnBoardingPayWallPaymentActivity.class), 110);
                } else {
                    SetupWizardProfileActivity.this.l();
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
    public final void a(HttpRequest httpRequest) {
        this.h.add(httpRequest);
    }

    @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
    public final void b() {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Registration request error");
        n();
        PopupManager.get().a(this, new DialogSimpleMessage(Activities.getString(2131887355), Activities.getString(2131887557), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$n_22gBjGbmojN_zyz7L_Mhdupr0
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                SetupWizardProfileActivity.this.a(activity);
            }
        }, null));
    }

    @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
    public final void c() {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.a(Constants.REGISTRATION, "Registration request error from " + getClass().getSimpleName());
        b();
    }

    @Override // android.app.Activity
    public void finish() {
        f13917a = false;
        super.finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558731;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 12345) {
            n();
            if (i2 == -1) {
                overridePendingTransition(17432576, 17432577);
                i();
            }
        }
        if (i == 109) {
            n();
            if (i2 == -1) {
                overridePendingTransition(17432576, 17432577);
                l();
            }
        }
        if (i == 110) {
            n();
            k();
            overridePendingTransition(17432576, 17432577);
            l();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        int i = AnonymousClass12.f13929a[SetupWizardActivity.getCurrentSetupStage().ordinal()];
        if (i == 1) {
            PermissionManager.get();
            if (!PermissionManager.a()) {
                this.f13919c.removeCallbacks(this.l);
                CorePermissionsNotGrantedActivity.a((Context) this);
            }
        } else if (i == 2) {
            FeedbackManager.get().a(Activities.getString(2131887649));
        } else if (i == 3) {
            h();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.m = CallAppRemoteConfigManager.get().c("usePayWall");
        f13917a = true;
        AnalyticsManager.get().b(Constants.SETUP_WIZARD_PROFILE_ACTIVITY);
        AnalyticsManager.get().a(Constants.REGISTRATION, Constants.SETUP_WIZARD_PROFILE_ACTIVITY, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.fL.get().intValue()).name);
        int a2 = ThemeUtils.a(CallAppApplication.get(), 2131099784);
        ViewSwitcher viewSwitcher = (ViewSwitcher) findViewById(2131363567);
        this.f13918b = viewSwitcher;
        GlideUtils.GlideRequestBuilder a3 = new GlideUtils.GlideRequestBuilder((ImageView) viewSwitcher.getNextView(), 2131232143, this).a(ThemeUtils.a(this, 2131100228), PorterDuff.Mode.SRC_IN);
        a3.g = Integer.valueOf(a2);
        a3.f16207d = this.f13918b;
        GlideUtils.GlideRequestBuilder b2 = a3.b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), -1);
        b2.l = true;
        b2.d();
        this.f13920d = (TextView) findViewById(2131364130);
        this.e = (TextView) findViewById(2131364030);
        this.f = (TextView) findViewById(2131362127);
        this.f13919c = (TextView) findViewById(2131364496);
        Button button = (Button) findViewById(2131363960);
        this.g = button;
        button.setText(Activities.getString(2131887748));
        a(false);
        this.f13920d.setText(Activities.getString(2131888157));
        this.e.setText(Activities.getString(2131887650));
        TextView textView = this.f;
        if (textView != null) {
            textView.setText(Activities.getString(2131888155));
        }
        new AnonymousClass1().execute();
        findViewById(2131363963).getLayoutParams().height = Activities.getStatusBarHeight();
        findViewById(2131363963).setVisibility(0);
        findViewById(2131363963).requestLayout();
        this.j = getIntent().getBooleanExtra("CAME_FROM_SETUP_REMINDER_KEY", false);
        this.f13918b.setOutAnimation(null);
        this.f13918b.setInAnimation(null);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        n();
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.SETUP_WIZARD_PROFILE_ACTIVITY);
        this.h.clear();
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        f13917a = false;
        super.onPause();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        f13917a = true;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return false;
    }
}
