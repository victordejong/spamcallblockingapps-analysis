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
import androidx.core.content.C0790b;
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

    /* renamed from: a */
    private static boolean f24482a = false;

    /* renamed from: b */
    private ViewSwitcher f24483b;

    /* renamed from: c */
    private TextView f24484c;

    /* renamed from: d */
    private TextView f24485d;

    /* renamed from: e */
    private TextView f24486e;

    /* renamed from: f */
    private TextView f24487f;

    /* renamed from: g */
    private Button f24488g;

    /* renamed from: k */
    private SimpleProgressDialog f24491k;

    /* renamed from: l */
    private Runnable f24492l;

    /* renamed from: h */
    private List<HttpRequest> f24489h = new ArrayList();

    /* renamed from: j */
    private boolean f24490j = false;

    /* renamed from: m */
    private boolean f24493m = false;

    /* renamed from: com.callapp.contacts.activity.setup.SetupWizardProfileActivity$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardProfileActivity$1.class */
    public class C70851 extends Task {
        C70851() {
            SetupWizardProfileActivity.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m29448a() {
            PermissionManager.get();
            boolean m28256a = PermissionManager.m28256a();
            if (SetupWizardActivity.getCurrentSetupStage().equals(SetupWizardActivity.Stage.PAY_WALL)) {
                SetupWizardProfileActivity.this.startActivityForResult(new Intent(SetupWizardProfileActivity.this, OnBoardingPayWallPaymentActivity.class), 110);
            } else if (m28256a) {
                SetupWizardProfileActivity.this.m29460i();
            } else {
                SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.CORE_PERMISSIONS);
                SetupWizardProfileActivity.this.f24492l = new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$1$lev_gcyL2PqHFxyQzwtwoku3rpU
                    @Override // java.lang.Runnable
                    public final void run() {
                        SetupWizardProfileActivity.C70851.this.m29447b();
                    }
                };
                SetupWizardProfileActivity.this.f24484c.postDelayed(SetupWizardProfileActivity.this.f24492l, 1000L);
            }
        }

        /* renamed from: b */
        public /* synthetic */ void m29447b() {
            CorePermissionsNotGrantedActivity.m31792a((Context) SetupWizardProfileActivity.this);
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            final String userProfileImageUrl = UserProfileManager.get().getUserProfileImageUrl();
            if (StringUtils.m26045b((CharSequence) userProfileImageUrl) && SetupWizardProfileActivity.this.f24483b != null) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        GlideUtils.GlideRequestBuilder m27018b = new GlideUtils.GlideRequestBuilder((ImageView) SetupWizardProfileActivity.this.f24483b.getNextView(), userProfileImageUrl, SetupWizardProfileActivity.this).m27018b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), -1);
                        m27018b.f28246l = true;
                        m27018b.f28238d = SetupWizardProfileActivity.this.f24483b;
                        m27018b.m27013d();
                    }
                });
            }
            final String userProfileName = UserProfileManager.get().getUserProfileName();
            if (StringUtils.m26045b((CharSequence) userProfileName)) {
                SetupWizardProfileActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        SetupWizardProfileActivity.this.f24484c.setText(userProfileName);
                        SetupWizardProfileActivity.this.f24484c.setVisibility(0);
                    }
                });
            }
            SetupWizardProfileActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$1$uBytZsdoQ3L4TkpA8BFZx7yhKyQ
                @Override // java.lang.Runnable
                public final void run() {
                    SetupWizardProfileActivity.C70851.this.m29448a();
                }
            });
        }
    }

    /* renamed from: com.callapp.contacts.activity.setup.SetupWizardProfileActivity$12 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardProfileActivity$12.class */
    static /* synthetic */ class C709112 {

        /* renamed from: a */
        static final /* synthetic */ int[] f24502a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[SetupWizardActivity.Stage.values().length];
            f24502a = iArr;
            try {
                iArr[SetupWizardActivity.Stage.CORE_PERMISSIONS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f24502a[SetupWizardActivity.Stage.COUNTRY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f24502a[SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.callapp.contacts.activity.setup.SetupWizardProfileActivity$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardProfileActivity$2.class */
    public class C70922 extends Task {
        C70922() {
            SetupWizardProfileActivity.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m29446a() {
            SetupWizardProfileActivity.this.m29451n();
            SetupWizardProfileActivity.this.getUserConsent();
        }

        /* renamed from: b */
        public /* synthetic */ void m29445b() {
            SetupWizardProfileActivity.this.m29451n();
            SetupWizardProfileActivity.m29463g(SetupWizardProfileActivity.this);
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            if (SetupWizardProfileActivity.m29468e().second == null) {
                SetupWizardProfileActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$2$OvafEnrZ_fqWTDbazoWKZDFGFTs
                    @Override // java.lang.Runnable
                    public final void run() {
                        SetupWizardProfileActivity.C70922.this.m29445b();
                    }
                });
            } else {
                SetupWizardProfileActivity.this.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$2$ICaxICkATF2LnfMVRjrwqCWNwnY
                    @Override // java.lang.Runnable
                    public final void run() {
                        SetupWizardProfileActivity.C70922.this.m29446a();
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m29477a(Activity activity) {
        AuthenticatorsConfiguration.AUTHENTICATORS_TYPES fromNumRep = AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.f26500fL.get().intValue());
        if (fromNumRep != AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP && fromNumRep != AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH) {
            getUserConsent();
            return;
        }
        SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.WELCOME);
        Intent intent = new Intent(this, SetupWizardActivity.class);
        intent.addFlags(Activities.getIntentFlagForNewDocument());
        Activities.m27685a(this, intent);
        finish();
    }

    /* renamed from: a */
    private void m29473a(boolean z) {
        this.f24488g.setEnabled(z);
        findViewById(2131363959).setEnabled(z);
    }

    /* renamed from: d */
    public static boolean m29470d() {
        if (!f24482a) {
            return SetupWizardActivity.getCurrentSetupStage().ordinal() >= SetupWizardActivity.Stage.CORE_PERMISSIONS.ordinal() && SetupWizardActivity.getCurrentSetupStage().ordinal() < SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE.ordinal();
        }
        return true;
    }

    /* renamed from: e */
    static /* synthetic */ Pair m29468e() {
        Pair<PhoneAndCountryDeviceExtractor.ExtractedPhone, PhoneAndCountryDeviceExtractor.ExtractedCountry> phoneAndCountry = PhoneAndCountryDeviceExtractor.getPhoneAndCountry();
        PhoneAndCountryDeviceExtractor.ExtractedPhone extractedPhone = (PhoneAndCountryDeviceExtractor.ExtractedPhone) phoneAndCountry.first;
        PhoneAndCountryDeviceExtractor.ExtractedCountry extractedCountry = (PhoneAndCountryDeviceExtractor.ExtractedCountry) phoneAndCountry.second;
        if (extractedPhone != null) {
            PhoneVerifierManager.m28521a(extractedPhone, extractedPhone.isValidated());
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.m28450a(Constants.REGISTRATION, "Extracted phone, reliable: " + extractedPhone.isReliable());
        } else {
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Could not extract phone");
        }
        if (extractedCountry == null) {
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Could not extract country");
        } else {
            AnalyticsManager analyticsManager2 = AnalyticsManager.get();
            analyticsManager2.m28450a(Constants.REGISTRATION, "Extracted country, reliable: " + extractedCountry.isReliable());
            if (extractedCountry.isReliable()) {
                Prefs.f26239aP.set(extractedCountry.getCountryISO());
            } else {
                Prefs.f26240aQ.set(extractedCountry.getCountryISO());
            }
        }
        return phoneAndCountry;
    }

    /* renamed from: f */
    static /* synthetic */ void m29466f() {
        ConnectivityManager connectivityManager = (ConnectivityManager) CallAppApplication.get().getSystemService("connectivity");
        if (connectivityManager != null) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            boolean z = true;
            if (activeNetworkInfo == null || activeNetworkInfo.getType() != 1) {
                z = false;
            }
            if (!z) {
                return;
            }
            WifiStateReceiver.m27883a();
        }
    }

    /* renamed from: g */
    static /* synthetic */ void m29464g() {
        AbstractAnalyticsManager.UTM m28448d = AbstractAnalyticsManager.m28448d(Prefs.f26220X.get());
        if (m28448d == null || !StringUtils.m26045b((CharSequence) m28448d.f25896a)) {
            return;
        }
        ReferAndEarnDataManager.sendPointsToReferer(m28448d.f25896a, 1);
    }

    /* renamed from: g */
    static /* synthetic */ void m29463g(SetupWizardProfileActivity setupWizardProfileActivity) {
        SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.COUNTRY);
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Saw country screen");
        final View findViewById = setupWizardProfileActivity.findViewById(2131363164);
        findViewById.setVisibility(0);
        ((ImageView) findViewById.findViewById(2131362493)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099923), PorterDuff.Mode.SRC_IN));
        final Spinner spinner = (Spinner) findViewById.findViewById(2131362491);
        String str = Prefs.f26240aQ.get();
        if (!StringUtils.m26045b((CharSequence) str)) {
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
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Clicked OK in country screen");
                if (i == -1) {
                    FeedbackManager.get().m28669a(Activities.getString(2131887649), (Integer) 17);
                    return;
                }
                CountryList.CountryListItem countryListItem2 = (CountryList.CountryListItem) spinner.getItemAtPosition(i);
                if (StringUtils.m26044b((Object) "none", (Object) countryListItem2.getDisplayedCountry())) {
                    FeedbackManager.get().m28669a(Activities.getString(2131887649), (Integer) 17);
                    return;
                }
                Prefs.f26239aP.set(countryListItem2.getCountryCode());
                findViewById.setVisibility(8);
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Succesfully completed country screen");
                SetupWizardProfileActivity.this.getUserConsent();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
                FeedbackManager.get().m28669a(Activities.getString(2131887649), (Integer) 17);
            }
        });
    }

    public void getUserConsent() {
        SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.USER_CONSENT);
        boolean z = true;
        if (!StringUtils.m26030e(Prefs.f26241aR.get(), "+") ? !StringUtils.m26030e(Prefs.f26264ao.get(), "+") ? !Prefs.f26239aP.isNotNull() || !StringUtils.m26027f(Prefs.f26239aP.get(), "KR") : !StringUtils.m26030e(Prefs.f26264ao.get(), "+82") : !StringUtils.m26030e(Prefs.f26241aR.get(), "+82")) {
            z = false;
        }
        if (!z || Prefs.f26309bg.get().booleanValue()) {
            m29458j();
        } else {
            PopupManager.get().m28209a(this, new PrivacyConsentDialogPopup(new PrivacyConsentDialogPopup.Accept() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.4
                @Override // com.callapp.contacts.manager.popup.PrivacyConsentDialogPopup.Accept
                /* renamed from: a */
                public final void mo28186a() {
                    Prefs.f26309bg.set(Boolean.TRUE);
                    SetupWizardProfileActivity.this.m29458j();
                }
            }));
        }
    }

    /* renamed from: h */
    public void m29462h() {
        AnalyticsManager.get().mo28446a(Constants.REGISTRATION, "Wizard profile screen", (String) null, 0.0d);
        SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
        Intent intent = new Intent(CallAppApplication.get(), ContactsListActivity.class);
        intent.setAction("com.callapp.contacts.FROM_SUB_ACTIVITY");
        intent.addFlags(268435456);
        Activities.m27685a(this, intent);
        safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$HqDkHKAin2rEzJ3BwYIggMM92m0
            @Override // java.lang.Runnable
            public final void run() {
                SetupWizardProfileActivity.this.m29449p();
            }
        });
    }

    /* renamed from: i */
    public void m29460i() {
        m29452m();
        new C70922().execute();
    }

    /* renamed from: j */
    public void m29458j() {
        m29452m();
        String str = Prefs.f26499fK.get();
        AuthenticatorsConfiguration.AUTHENTICATORS_TYPES fromNumRep = AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.f26500fL.get().intValue());
        if (fromNumRep == AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.USER_GOOGLE) {
            GoogleHelper.get();
            if (GoogleHelper.m29177k()) {
                GoogleHelper googleHelper = GoogleHelper.get();
                googleHelper.setLoginListener(new RemoteAccountHelper.DefaultLoginListener(googleHelper) { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.5
                    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                    /* renamed from: a */
                    public final void mo26206a() {
                        super.mo26206a();
                        SetupWizardProfileActivity.this.m29451n();
                        SetupWizardProfileActivity.this.getUserConsent();
                    }

                    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                    /* renamed from: b */
                    public final void mo26205b() {
                        super.mo26205b();
                        SetupWizardProfileActivity.this.m29451n();
                        SetupWizardProfileActivity.this.mo27734c();
                    }

                    @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
                    /* renamed from: c */
                    public final void mo26203c() {
                        super.mo26203c();
                        SetupWizardProfileActivity.this.m29451n();
                    }
                });
                googleHelper.mo29113a(this);
                return;
            }
        }
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Registration request starts");
        new RegistrationRequest(str, fromNumRep, this).m29533a();
    }

    /* renamed from: k */
    private void m29456k() {
        Prefs.f26246aW.set(Boolean.TRUE);
        CallLogContentObserver.m28107a();
        ContactUtilsContactsContentObserver.m28084a();
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.7
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                UpdateUserProfileUtil.m27356b();
            }
        }.execute();
        ValidateClientTask.m26904b();
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.8
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                FcmManager.get().m28265a();
                CallAppDailyWorker.f29570a.m26173a();
                MissedCallSummaryDailyWorker.f29589a.m26152b();
                NotAnswerCallSummaryDailyWorker.f29619a.m26132b();
                SetupWizardProfileActivity.m29466f();
                ContactUtils.m28307c();
                PhoneStateManager.get().listenToCallState(true);
                SetupWizardProfileActivity.m29464g();
            }
        }.execute();
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.9
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                CheckQuotaLimitation.m26909a(false);
            }
        }.execute();
        m29451n();
        SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.SETUP_COMPLETED_STAGE);
        RealSyncService.m27752d();
    }

    /* renamed from: l */
    public void m29454l() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$0P2nQvNdTIk3iFQNqpxsV1oSLJ4
            @Override // java.lang.Runnable
            public final void run() {
                SetupWizardProfileActivity.this.m29450o();
            }
        });
    }

    /* renamed from: m */
    private void m29452m() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.11
            @Override // java.lang.Runnable
            public void run() {
                SimpleProgressDialog.m27939a(SetupWizardProfileActivity.this.f24491k);
                CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.11.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SetupWizardProfileActivity.this.f24491k = new SimpleProgressDialog();
                        SetupWizardProfileActivity.this.f24491k.setCancelable(false);
                        SetupWizardProfileActivity.this.f24491k.setMessage(Activities.getString(2131887415));
                        PopupManager.get().m28209a(SetupWizardProfileActivity.this, SetupWizardProfileActivity.this.f24491k);
                    }
                });
            }
        });
    }

    /* renamed from: n */
    public void m29451n() {
        SimpleProgressDialog.m27939a(this.f24491k);
        this.f24491k = null;
    }

    /* renamed from: o */
    public /* synthetic */ void m29450o() {
        this.f24488g.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.10
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                AnalyticsManager.get().m28449a(Constants.REGISTRATION, "ClickStartUsingCallApp", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.f26500fL.get().intValue()).name);
                SetupWizardProfileActivity.this.m29462h();
            }
        });
        m29473a(true);
    }

    /* renamed from: p */
    public /* synthetic */ void m29449p() {
        StringPref stringPref = Prefs.f26499fK;
        stringPref.set(stringPref.defaultValue);
        IntegerPref integerPref = Prefs.f26500fL;
        integerPref.set(integerPref.defaultValue);
        finish();
    }

    @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
    /* renamed from: a */
    public final void mo27737a() {
        this.f24489h.clear();
        SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.REGISTRATION_COMPLETED);
        String str = AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.f26500fL.get().intValue()).name;
        Prefs.f26247aX.set(str);
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Registration request success", str);
        AnalyticsManager.get().mo28431a(str);
        if (this.f24490j) {
            AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Registration success from login reminder", str);
        }
        if ((!Prefs.f26248aY.get().booleanValue() && !this.f24493m) || Prefs.f26339cJ.get().booleanValue()) {
            m29456k();
        }
        final JSONGroupType groupTypePreference = JSONGroupTypePreference.getGroupTypePreference("onBoardingPaymentConfig");
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardProfileActivity.6
            @Override // java.lang.Runnable
            public void run() {
                ViewUtils.m27320a(SetupWizardProfileActivity.this.findViewById(2131363959), C0790b.m44502a(CallAppApplication.get(), 2131232045));
                if (!BillingManager.isBillingAvailable() || Prefs.f26339cJ.get().booleanValue()) {
                    SetupWizardProfileActivity.this.m29454l();
                    return;
                }
                JSONGroupType jSONGroupType = groupTypePreference;
                if (jSONGroupType != null && jSONGroupType.getType() != 0 && !Prefs.f26248aY.get().booleanValue() && !SetupWizardProfileActivity.this.f24493m) {
                    Intent intent = new Intent(SetupWizardProfileActivity.this, OnBoardingPaymentActivity.class);
                    intent.putExtra("ONBOARDING_PAYMENT_LAYOUT_EXTRA", groupTypePreference.getType());
                    SetupWizardProfileActivity.this.startActivityForResult(intent, 109);
                } else if (!Prefs.f26248aY.get().booleanValue() && !SetupWizardProfileActivity.this.f24493m) {
                    SetupWizardProfileActivity.this.m29454l();
                } else {
                    SetupWizardActivity.setCurrentSetupStage(SetupWizardActivity.Stage.PAY_WALL);
                    SetupWizardProfileActivity.this.startActivityForResult(new Intent(SetupWizardProfileActivity.this, OnBoardingPayWallPaymentActivity.class), 110);
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
    /* renamed from: a */
    public final void mo27736a(HttpRequest httpRequest) {
        this.f24489h.add(httpRequest);
    }

    @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
    /* renamed from: b */
    public final void mo27735b() {
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Registration request error");
        m29451n();
        PopupManager.get().m28209a(this, new DialogSimpleMessage(Activities.getString(2131887355), Activities.getString(2131887557), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardProfileActivity$n_22gBjGbmojN_zyz7L_Mhdupr0
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                SetupWizardProfileActivity.this.m29477a(activity);
            }
        }, null));
    }

    @Override // com.callapp.contacts.activity.setup.RegistrationRequest.RegistrationEvents
    /* renamed from: c */
    public final void mo27734c() {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.m28450a(Constants.REGISTRATION, "Registration request error from " + getClass().getSimpleName());
        mo27735b();
    }

    @Override // android.app.Activity
    public void finish() {
        f24482a = false;
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
            m29451n();
            if (i2 == -1) {
                overridePendingTransition(17432576, 17432577);
                m29460i();
            }
        }
        if (i == 109) {
            m29451n();
            if (i2 == -1) {
                overridePendingTransition(17432576, 17432577);
                m29454l();
            }
        }
        if (i == 110) {
            m29451n();
            m29456k();
            overridePendingTransition(17432576, 17432577);
            m29454l();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        int i = C709112.f24502a[SetupWizardActivity.getCurrentSetupStage().ordinal()];
        if (i == 1) {
            PermissionManager.get();
            if (PermissionManager.m28256a()) {
                return;
            }
            this.f24484c.removeCallbacks(this.f24492l);
            CorePermissionsNotGrantedActivity.m31792a((Context) this);
        } else if (i == 2) {
            FeedbackManager.get().m28671a(Activities.getString(2131887649));
        } else if (i != 3) {
        } else {
            m29462h();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f24493m = CallAppRemoteConfigManager.get().m28698c("usePayWall");
        f24482a = true;
        AnalyticsManager.get().mo28441b(Constants.SETUP_WIZARD_PROFILE_ACTIVITY);
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, Constants.SETUP_WIZARD_PROFILE_ACTIVITY, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.f26500fL.get().intValue()).name);
        int m27386a = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);
        ViewSwitcher viewSwitcher = (ViewSwitcher) findViewById(2131363567);
        this.f24483b = viewSwitcher;
        GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder((ImageView) viewSwitcher.getNextView(), 2131232143, this).m27025a(ThemeUtils.m27386a(this, 2131100228), PorterDuff.Mode.SRC_IN);
        m27025a.f28241g = Integer.valueOf(m27386a);
        m27025a.f28238d = this.f24483b;
        GlideUtils.GlideRequestBuilder m27018b = m27025a.m27018b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), -1);
        m27018b.f28246l = true;
        m27018b.m27013d();
        this.f24485d = (TextView) findViewById(2131364130);
        this.f24486e = (TextView) findViewById(2131364030);
        this.f24487f = (TextView) findViewById(2131362127);
        this.f24484c = (TextView) findViewById(2131364496);
        Button button = (Button) findViewById(2131363960);
        this.f24488g = button;
        button.setText(Activities.getString(2131887748));
        m29473a(false);
        this.f24485d.setText(Activities.getString(2131888157));
        this.f24486e.setText(Activities.getString(2131887650));
        TextView textView = this.f24487f;
        if (textView != null) {
            textView.setText(Activities.getString(2131888155));
        }
        new C70851().execute();
        findViewById(2131363963).getLayoutParams().height = Activities.getStatusBarHeight();
        findViewById(2131363963).setVisibility(0);
        findViewById(2131363963).requestLayout();
        this.f24490j = getIntent().getBooleanExtra("CAME_FROM_SETUP_REMINDER_KEY", false);
        this.f24483b.setOutAnimation(null);
        this.f24483b.setInAnimation(null);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        m29451n();
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.SETUP_WIZARD_PROFILE_ACTIVITY);
        this.f24489h.clear();
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        f24482a = false;
        super.onPause();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        f24482a = true;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return false;
    }
}
