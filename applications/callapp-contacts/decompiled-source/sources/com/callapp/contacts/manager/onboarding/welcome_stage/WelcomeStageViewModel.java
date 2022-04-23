package com.callapp.contacts.manager.onboarding.welcome_stage;

import android.app.Activity;
import android.util.Pair;
import androidx.lifecycle.t;
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
    private List<LoginButton> i;

    /* renamed from: a  reason: collision with root package name */
    public t<OnboardingViewData> f15103a = new t<>();

    /* renamed from: b  reason: collision with root package name */
    public t<Void> f15104b = new t<>();

    /* renamed from: c  reason: collision with root package name */
    public t<Void> f15105c = new t<>();

    /* renamed from: d  reason: collision with root package name */
    public t<Void> f15106d = new t<>();
    public t<Void> e = new t<>();
    public t<Void> f = new t<>();
    public t<Pair<LoginButton.LoginButtonType, PermissionManager.PermissionGroup[]>> g = new t<>();
    public t<Pair<String, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES>> h = new t<>();
    private boolean j = false;

    public WelcomeStageViewModel(List<LoginButton> list) {
        this.i = list;
        for (LoginButton loginButton : list) {
            if (loginButton != null) {
                loginButton.setManager(this);
            }
        }
    }

    public static Runnable a(final Activity activity) {
        return new Runnable() { // from class: com.callapp.contacts.manager.onboarding.welcome_stage._$$Lambda$WelcomeStageViewModel$qMLhP9uYnjtmhM8yY_0F2dOgO_U
            @Override // java.lang.Runnable
            public final void run() {
                WelcomeStageViewModel.b(activity);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(Activity activity) {
        PhoneVerifierManager.get();
        PhoneVerifierManager.a(activity, true);
    }

    private void setButtonsClickable(final boolean z) {
        for (final LoginButton loginButton : this.i) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.manager.onboarding.welcome_stage.WelcomeStageViewModel.4
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

    public final void a() {
        CLog.a(SetupWizardActivity.class, "GroupId: ".concat(String.valueOf(AbTestUtils.getGroupDimension())));
        setButtonsClickable(true);
        if (!GooglePlayUtils.isGooglePlayServicesAvailable()) {
            new Task() { // from class: com.callapp.contacts.manager.onboarding.welcome_stage.WelcomeStageViewModel.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnalyticsManager.get().a(Constants.REGISTRATION, "No play services in device");
                    if (!FacebookHelper.get().isNativeAppInstalled()) {
                        AnalyticsManager.get().a(Constants.REGISTRATION, "No play services AND no Facebook in device");
                    }
                }
            }.execute();
        }
        final OnboardingViewDataManager onboardingViewDataManager = new OnboardingViewDataManager();
        new Task() { // from class: com.callapp.contacts.manager.onboarding.welcome_stage.WelcomeStageViewModel.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                OnboardingViewData defaultOnboardingViewData = onboardingViewDataManager.getDefaultOnboardingViewData();
                AnalyticsManager.get().a(Constants.REGISTRATION, "Saw welcome screen");
                AnalyticsManager.get().e("Login Page " + defaultOnboardingViewData.getScreenPrefixName());
                WelcomeStageViewModel.this.f15103a.a((t<OnboardingViewData>) defaultOnboardingViewData);
            }
        }.execute();
        new Task() { // from class: com.callapp.contacts.manager.onboarding.welcome_stage.WelcomeStageViewModel.3
            private static void a(StringBuilder sb, String str, String str2) {
                if (Activities.a(str)) {
                    if (sb.length() > 0) {
                        sb.append(",");
                    }
                    sb.append(str2);
                }
            }

            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                StringBuilder sb = new StringBuilder();
                a(sb, Constants.LINE_INTENT_COMPONENT_NAME, "Line");
                a(sb, Constants.GOSMS_INTENT_COMPONENT_NAME, "GoSMS");
                a(sb, Constants.HANDCENT_INTENT_COMPONENT_NAME, "HandCent");
                if (sb.length() > 0) {
                    AnalyticsManager.get().a(Constants.REGISTRATION, "Sms Application installed", sb.toString());
                }
                FacebookHelper.get().getHostToCheck();
                if (!HttpUtils.c()) {
                    WelcomeStageViewModel.this.f.a((t<Void>) null);
                }
            }
        }.execute();
    }

    public final void a(int i) {
        if (i == 7453) {
            setButtonsClickable(true);
        }
    }

    public final void a(SetupWizardActivity.Stage stage, SocialLoginButton socialLoginButton, SocialLoginButton socialLoginButton2, Runnable runnable) {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Saw registration reminder in Setup");
        this.j = true;
        if (stage != SetupWizardActivity.Stage.WELCOME) {
            runnable.run();
            return;
        }
        int intValue = Prefs.bz.get().intValue() % 4;
        Prefs.bz.b(1);
        if (intValue == 0 || intValue == 1) {
            socialLoginButton.callOnClick();
        } else if (intValue != 2 || !GooglePlayUtils.isGooglePlayServicesAvailable()) {
            FeedbackManager.get().a(Activities.getString(2131886630), (Integer) null);
        } else {
            socialLoginButton2.callOnClick();
        }
    }

    @Override // com.callapp.contacts.widget.login.PhoneLoginButton.Manager, com.callapp.contacts.widget.login.SocialLoginButton.Manager
    public final void a(SetupWizardActivity.TokenHelper tokenHelper) {
        if (this.j) {
            AnalyticsManager.get().a(Constants.REGISTRATION, "Registration success from login reminder");
        }
        Pair<String, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES> tokenAndSource = tokenHelper.getTokenAndSource();
        AnalyticsManager.get().a(Constants.REGISTRATION, "ConnectLoginSuccess", ((AuthenticatorsConfiguration.AUTHENTICATORS_TYPES) tokenAndSource.second).name);
        this.h.a((t<Pair<String, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES>>) tokenAndSource);
    }

    @Override // com.callapp.contacts.widget.login.PhoneLoginButton.Manager
    public final void a(LoginButton.LoginButtonType loginButtonType, PermissionManager.PermissionGroup... permissionGroupArr) {
        this.g.a((t<Pair<LoginButton.LoginButtonType, PermissionManager.PermissionGroup[]>>) Pair.create(loginButtonType, permissionGroupArr));
    }

    @Override // com.callapp.contacts.widget.login.PhoneLoginButton.Manager, com.callapp.contacts.widget.login.SocialLoginButton.Manager
    public final void b() {
        if (this.i.get(0).isClickable()) {
            setButtonsClickable(false);
            this.f15104b.a((t<Void>) null);
        }
    }

    @Override // com.callapp.contacts.widget.login.PhoneLoginButton.Manager, com.callapp.contacts.widget.login.SocialLoginButton.Manager
    public final void c() {
        this.e.a((t<Void>) null);
        setButtonsClickable(true);
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton.Manager
    public final void d() {
        this.f15105c.a((t<Void>) null);
        setButtonsClickable(true);
    }

    @Override // com.callapp.contacts.widget.login.SocialLoginButton.Manager
    public final void e() {
        setButtonsClickable(true);
        this.f15106d.a((t<Void>) null);
    }
}
