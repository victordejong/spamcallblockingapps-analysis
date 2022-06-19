package com.callapp.contacts.manager.onboarding.welcome_stage;

import android.app.Activity;
import android.util.Pair;
import androidx.lifecycle.C1267t;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.PhoneVerifierManager;
import com.callapp.contacts.manager.analytics.AbTestUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.widget.login.LoginButton;
import com.callapp.contacts.widget.login.PhoneLoginButton;
import com.callapp.contacts.widget.login.SocialLoginButton;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel.class */
public class WelcomeStageViewModel implements PhoneLoginButton.Manager, SocialLoginButton.Manager {

    /* renamed from: i */
    private List<LoginButton> f26054i;

    /* renamed from: a */
    public C1267t<OnboardingViewData> f26046a = new C1267t<>();

    /* renamed from: b */
    public C1267t<Void> f26047b = new C1267t<>();

    /* renamed from: c */
    public C1267t<Void> f26048c = new C1267t<>();

    /* renamed from: d */
    public C1267t<Void> f26049d = new C1267t<>();

    /* renamed from: e */
    public C1267t<Void> f26050e = new C1267t<>();

    /* renamed from: f */
    public C1267t<Void> f26051f = new C1267t<>();

    /* renamed from: g */
    public C1267t<Pair<LoginButton.LoginButtonType, PermissionManager.PermissionGroup[]>> f26052g = new C1267t<>();

    /* renamed from: h */
    public C1267t<Pair<String, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES>> f26053h = new C1267t<>();

    /* renamed from: j */
    private boolean f26055j = false;

    public WelcomeStageViewModel(List<LoginButton> list) {
        this.f26054i = list;
        for (LoginButton loginButton : list) {
            if (loginButton != null) {
                loginButton.setManager(this);
            }
        }
    }

    /* renamed from: a */
    public static Runnable m28260a(final Activity activity) {
        return new Runnable() { // from class: com.callapp.contacts.manager.onboarding.welcome_stage._$$Lambda$WelcomeStageViewModel$qMLhP9uYnjtmhM8yY_0F2dOgO_U
            @Override // java.lang.Runnable
            public final void run() {
                WelcomeStageViewModel.m28258b(activity);
            }
        };
    }

    /* renamed from: b */
    public static /* synthetic */ void m28258b(Activity activity) {
        PhoneVerifierManager.get();
        PhoneVerifierManager.m28522a(activity, true);
    }

    private void setButtonsClickable(final boolean z) {
        for (final LoginButton loginButton : this.f26054i) {
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.manager.onboarding.welcome_stage.WelcomeStageViewModel.4
                @Override // java.lang.Runnable
                public void run() {
                    LoginButton loginButton2 = loginButton;
                    if (loginButton2 != null) {
                        loginButton2.setEnabled(z);
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public final void m28262a() {
        CLog.m27611a(SetupWizardActivity.class, "GroupId: ".concat(String.valueOf(AbTestUtils.getGroupDimension())));
        setButtonsClickable(true);
        if (!GooglePlayUtils.isGooglePlayServicesAvailable()) {
            new Task() { // from class: com.callapp.contacts.manager.onboarding.welcome_stage.WelcomeStageViewModel.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnalyticsManager.get().m28450a(Constants.REGISTRATION, "No play services in device");
                    if (!FacebookHelper.get().isNativeAppInstalled()) {
                        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "No play services AND no Facebook in device");
                    }
                }
            }.execute();
        }
        final OnboardingViewDataManager onboardingViewDataManager = new OnboardingViewDataManager();
        new Task() { // from class: com.callapp.contacts.manager.onboarding.welcome_stage.WelcomeStageViewModel.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                OnboardingViewData defaultOnboardingViewData = onboardingViewDataManager.getDefaultOnboardingViewData();
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Saw welcome screen");
                AnalyticsManager.get().m28439e("Login Page " + defaultOnboardingViewData.getScreenPrefixName());
                WelcomeStageViewModel.this.f26046a.mo43287a((C1267t<OnboardingViewData>) defaultOnboardingViewData);
            }
        }.execute();
        new Task() { // from class: com.callapp.contacts.manager.onboarding.welcome_stage.WelcomeStageViewModel.3
            /* renamed from: a */
            private static void m28257a(StringBuilder sb, String str, String str2) {
                if (Activities.m27665a(str)) {
                    if (sb.length() > 0) {
                        sb.append(",");
                    }
                    sb.append(str2);
                }
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                StringBuilder sb = new StringBuilder();
                m28257a(sb, Constants.LINE_INTENT_COMPONENT_NAME, "Line");
                m28257a(sb, Constants.GOSMS_INTENT_COMPONENT_NAME, "GoSMS");
                m28257a(sb, Constants.HANDCENT_INTENT_COMPONENT_NAME, "HandCent");
                if (sb.length() > 0) {
                    AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Sms Application installed", sb.toString());
                }
                FacebookHelper.get().getHostToCheck();
                if (!HttpUtils.m26967c()) {
                    WelcomeStageViewModel.this.f26051f.mo43287a((C1267t<Void>) null);
                }
            }
        }.execute();
    }

    /* renamed from: a */
    public final void m28261a(int i) {
        if (i == 7453) {
            setButtonsClickable(true);
        }
    }

    /* renamed from: a */
    public final void m28259a(SetupWizardActivity.Stage stage, SocialLoginButton socialLoginButton, SocialLoginButton socialLoginButton2, Runnable runnable) {
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Saw registration reminder in Setup");
        this.f26055j = true;
        if (stage != SetupWizardActivity.Stage.WELCOME) {
            runnable.run();
            return;
        }
        int intValue = Prefs.f26328bz.get().intValue() % 4;
        Prefs.f26328bz.m28169b(1);
        if (intValue == 0 || intValue == 1) {
            socialLoginButton.callOnClick();
        } else if (intValue != 2 || !GooglePlayUtils.isGooglePlayServicesAvailable()) {
            FeedbackManager.get().m28669a(Activities.getString(2131886630), (Integer) null);
        } else {
            socialLoginButton2.callOnClick();
        }
    }

    @Override // com.callapp.contacts.widget.login.PhoneLoginButton.Manager, com.callapp.contacts.widget.login.SocialLoginButton.Manager
    /* renamed from: a */
    public final void mo26370a(SetupWizardActivity.TokenHelper tokenHelper) {
        if (this.f26055j) {
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Registration success from login reminder");
        }
        Pair<String, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES> tokenAndSource = tokenHelper.getTokenAndSource();
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "ConnectLoginSuccess", ((AuthenticatorsConfiguration.AUTHENTICATORS_TYPES) tokenAndSource.second).name);
        this.f26053h.mo43287a((C1267t<Pair<String, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES>>) tokenAndSource);
    }

    @Override // com.callapp.contacts.widget.login.PhoneLoginButton.Manager
    /* renamed from: a */
    public final void mo26374a(LoginButton.LoginButtonType loginButtonType, PermissionManager.PermissionGroup... permissionGroupArr) {
        this.f26052g.mo43287a((C1267t<Pair<LoginButton.LoginButtonType, PermissionManager.PermissionGroup[]>>) Pair.create(loginButtonType, permissionGroupArr));
    }

    @Override // com.callapp.contacts.widget.login.PhoneLoginButton.Manager, com.callapp.contacts.widget.login.SocialLoginButton.Manager
    /* renamed from: b */
    public final void mo26369b() {
        if (this.f26054i.get(0).isClickable()) {
            setButtonsClickable(false);
            this.f26047b.mo43287a((C1267t<Void>) null);
        }
    }

    @Override // com.callapp.contacts.widget.login.PhoneLoginButton.Manager, com.callapp.contacts.widget.login.SocialLoginButton.Manager
    /* renamed from: c */
    public final void mo26368c() {
        this.f26050e.mo43287a((C1267t<Void>) null);
        setButtonsClickable(true);
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton.Manager
    /* renamed from: d */
    public final void mo26367d() {
        this.f26048c.mo43287a((C1267t<Void>) null);
        setButtonsClickable(true);
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton.Manager
    /* renamed from: e */
    public final void mo26366e() {
        setButtonsClickable(true);
        this.f26049d.mo43287a((C1267t<Void>) null);
    }
}
