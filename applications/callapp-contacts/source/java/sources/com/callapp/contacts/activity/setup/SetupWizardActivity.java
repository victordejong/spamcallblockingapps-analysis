package com.callapp.contacts.activity.setup;

import android.animation.Animator;
import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.lifecycle.AbstractC1268u;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.common.model.json.JSONClientValidationResponse;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseFullScreenActivity;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.settings.TextualSocialLoginFragment;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.instagram.InstagramHelper;
import com.callapp.contacts.api.helper.p237vk.VKHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.PhoneVerifierManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.onboarding.welcome_stage.OnboardingViewData;
import com.callapp.contacts.manager.onboarding.welcome_stage.OnboardingViewDataManager;
import com.callapp.contacts.manager.onboarding.welcome_stage.WelcomeStageViewModel;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DeepLinkManager;
import com.callapp.contacts.model.paywall.JSONPayWallCampaignIds;
import com.callapp.contacts.popup.FollowCallAppPopup;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.receiver.InstallationReceiver;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.contacts.util.LocaleUtils;
import com.callapp.contacts.util.PowerUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.ClassParserHttpResponseHandler;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.contacts.util.servermessage.ValidateClientTask;
import com.callapp.contacts.widget.login.LoginButton;
import com.callapp.contacts.widget.login.SocialLoginButton;
import com.callapp.framework.util.CollectionUtils;
import com.facebook.applinks.C10104a;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardActivity.class */
public class SetupWizardActivity extends BaseFullScreenActivity {

    /* renamed from: a */
    private SimpleProgressDialog f24429a;

    /* renamed from: c */
    private View f24431c;

    /* renamed from: d */
    private TextualSocialLoginFragment f24432d;

    /* renamed from: f */
    private SocialLoginButton f24434f;

    /* renamed from: g */
    private SocialLoginButton f24435g;

    /* renamed from: h */
    private SocialLoginButton f24436h;

    /* renamed from: j */
    private View f24437j;

    /* renamed from: k */
    private WelcomeStageViewModel f24438k;

    /* renamed from: l */
    private String f24439l;

    /* renamed from: o */
    private LoginButton f24442o;

    /* renamed from: b */
    private Boolean f24430b = null;

    /* renamed from: e */
    private Stage f24433e = null;

    /* renamed from: m */
    private boolean f24440m = false;

    /* renamed from: n */
    private boolean f24441n = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.setup.SetupWizardActivity$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardActivity$1.class */
    public class C70551 implements Task.DoneListener {

        /* renamed from: a */
        final /* synthetic */ Bundle f24443a;

        C70551(Bundle bundle) {
            SetupWizardActivity.this = r4;
            this.f24443a = bundle;
        }

        @Override // com.callapp.contacts.manager.task.Task.DoneListener
        public void onDone() {
            final AbstractC14185h<Void> m28701a = CallAppRemoteConfigManager.get().m28701a(false, new Task.DoneListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.1.1
                @Override // com.callapp.contacts.manager.task.Task.DoneListener
                public void onDone() {
                    if (!SetupWizardActivity.this.f24440m) {
                        SetupWizardActivity.this.m29500b();
                        if (!SetupWizardActivity.this.f24441n) {
                            return;
                        }
                        SetupWizardActivity.this.f24441n = false;
                        SetupWizardActivity.this.m29515a(SetupWizardActivity.this.getIntent());
                    }
                }
            });
            CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.1.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        C14188k.m11467a(m28701a, 500L, TimeUnit.MILLISECONDS);
                    } catch (InterruptedException | ExecutionException | TimeoutException e) {
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.1.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!SetupWizardActivity.this.f24440m) {
                                    SetupWizardActivity.this.m29500b();
                                    if (!SetupWizardActivity.this.f24441n) {
                                        return;
                                    }
                                    SetupWizardActivity.this.f24441n = false;
                                    SetupWizardActivity.this.m29515a(SetupWizardActivity.this.getIntent());
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    /* renamed from: com.callapp.contacts.activity.setup.SetupWizardActivity$20 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardActivity$20.class */
    public static /* synthetic */ class C707520 {

        /* renamed from: a */
        static final /* synthetic */ int[] f24469a;

        /* renamed from: b */
        static final /* synthetic */ int[] f24470b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.values().length];
            f24470b = iArr;
            try {
                iArr[AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.FACEBOOK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f24470b[AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.USER_GOOGLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f24470b[AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.VK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[Stage.values().length];
            f24469a = iArr2;
            try {
                iArr2[Stage.WELCOME.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f24469a[Stage.LINK_SOCIAL_NETWORKS.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f24469a[Stage.SETUP_COMPLETED_STAGE.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardActivity$Stage.class */
    public enum Stage {
        WELCOME,
        LINK_SOCIAL_NETWORKS,
        CORE_PERMISSIONS,
        COUNTRY,
        USER_CONSENT,
        REGISTRATION_COMPLETED,
        PAY_WALL,
        SETUP_COMPLETED_STAGE
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper.class */
    public interface TokenHelper {
        Pair<String, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES> getTokenAndSource();
    }

    /* renamed from: a */
    public void m29517a(int i) {
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Successfuly completed social network screen", String.valueOf(i));
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.19
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (!TwitterHelper.get().isLoggedIn() || TwitterHelper.isTwitterAppInstalled()) {
                    return;
                }
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Connected to twitter but doesn't have twitter");
            }
        }.execute();
        m29486g();
    }

    /* renamed from: a */
    public static /* synthetic */ void m29516a(Activity activity) {
    }

    /* renamed from: a */
    public void m29515a(Intent intent) {
        if (intent.getBooleanExtra("CAME_FROM_SETUP_REMINDER_KEY", false)) {
            this.f24438k.m28259a(getCurrentSetupStage(), this.f24434f, this.f24435g, new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$I4IVNbvvfNUWaY3Y6LcrXGXp6AA
                @Override // java.lang.Runnable
                public final void run() {
                    SetupWizardActivity.this.onBackPressed();
                }
            });
        } else if (Prefs.f26319bq.get() != null) {
        } else {
            NotificationManager.get().m28579a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0089, code lost:
        if (com.callapp.contacts.api.helper.twitter.TwitterHelper.get().isNativeAppInstalled() != false) goto L22;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void m29514a(android.util.Pair r5) {
        /*
            r4 = this;
            r0 = r4
            r0.m29484h()
            com.callapp.contacts.manager.preferences.prefs.StringPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26499fK
            r1 = r5
            java.lang.Object r1 = r1.first
            r0.set(r1)
            com.callapp.contacts.manager.preferences.prefs.IntegerPref r0 = com.callapp.contacts.manager.preferences.Prefs.f26500fL
            r1 = r5
            java.lang.Object r1 = r1.second
            com.callapp.common.authenticators.config.AuthenticatorsConfiguration$AUTHENTICATORS_TYPES r1 = (com.callapp.common.authenticators.config.AuthenticatorsConfiguration.AUTHENTICATORS_TYPES) r1
            int r1 = r1.getNumRep()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.set(r1)
            r0 = r4
            boolean r0 = com.callapp.contacts.util.Activities.m27696a(r0)
            if (r0 == 0) goto Ld0
            com.callapp.contacts.manager.CallAppRemoteConfigManager r0 = com.callapp.contacts.manager.CallAppRemoteConfigManager.get()
            java.lang.String r1 = "skipSocialNetwork"
            boolean r0 = r0.m28698c(r1)
            if (r0 != 0) goto Lcc
            r0 = r5
            java.lang.Object r0 = r0.second
            com.callapp.common.authenticators.config.AuthenticatorsConfiguration$AUTHENTICATORS_TYPES r0 = (com.callapp.common.authenticators.config.AuthenticatorsConfiguration.AUTHENTICATORS_TYPES) r0
            r6 = r0
            com.callapp.common.authenticators.config.AuthenticatorsConfiguration$AUTHENTICATORS_TYPES r0 = com.callapp.common.authenticators.config.AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.FACEBOOK
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            r1 = r7
            if (r0 == r1) goto L5b
            r0 = r6
            com.callapp.common.authenticators.config.AuthenticatorsConfiguration$AUTHENTICATORS_TYPES r1 = com.callapp.common.authenticators.config.AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.VK
            if (r0 == r1) goto L5b
            r0 = r6
            com.callapp.common.authenticators.config.AuthenticatorsConfiguration$AUTHENTICATORS_TYPES r1 = com.callapp.common.authenticators.config.AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.USER_GOOGLE
            if (r0 == r1) goto L5b
            r0 = 1
            r9 = r0
            goto L5e
        L5b:
            r0 = 0
            r9 = r0
        L5e:
            r0 = r9
            if (r0 == 0) goto Laa
            com.callapp.contacts.manager.CallAppRemoteConfigManager r0 = com.callapp.contacts.manager.CallAppRemoteConfigManager.get()
            java.lang.String r1 = "onlyNativeSocialLogin"
            boolean r0 = r0.m28698c(r1)
            r10 = r0
            com.callapp.contacts.api.helper.facebook.FacebookHelper r0 = com.callapp.contacts.api.helper.facebook.FacebookHelper.get()
            boolean r0 = r0.isNativeAppInstalled()
            if (r0 != 0) goto L8c
            com.callapp.contacts.api.helper.vk.VKHelper r0 = com.callapp.contacts.api.helper.p237vk.VKHelper.get()
            boolean r0 = r0.isNativeAppInstalled()
            if (r0 != 0) goto L8c
            r0 = r8
            r9 = r0
            com.callapp.contacts.api.helper.twitter.TwitterHelper r0 = com.callapp.contacts.api.helper.twitter.TwitterHelper.get()
            boolean r0 = r0.isNativeAppInstalled()
            if (r0 == 0) goto L8f
        L8c:
            r0 = 1
            r9 = r0
        L8f:
            r0 = r10
            if (r0 == 0) goto La1
            r0 = r9
            if (r0 == 0) goto L9c
            goto La1
        L9c:
            r0 = r4
            r0.m29486g()
            return
        La1:
            r0 = r4
            com.callapp.contacts.activity.setup.SetupWizardActivity$Stage r1 = com.callapp.contacts.activity.setup.SetupWizardActivity.Stage.LINK_SOCIAL_NETWORKS
            r2 = 1
            r0.m29512a(r1, r2)
            return
        Laa:
            r0 = r5
            java.lang.Object r0 = r0.second
            com.callapp.common.authenticators.config.AuthenticatorsConfiguration$AUTHENTICATORS_TYPES r1 = com.callapp.common.authenticators.config.AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.USER_GOOGLE
            if (r0 != r1) goto Lcc
            boolean r0 = com.callapp.contacts.util.GooglePlayUtils.isGooglePlayServicesAvailable()
            if (r0 == 0) goto Lcc
            com.callapp.contacts.api.helper.google.GoogleHelper r0 = com.callapp.contacts.api.helper.google.GoogleHelper.get()
            boolean r0 = r0.isLoggedIn()
            if (r0 != 0) goto Lcc
            r0 = r4
            com.callapp.contacts.activity.setup.SetupWizardActivity$Stage r1 = com.callapp.contacts.activity.setup.SetupWizardActivity.Stage.LINK_SOCIAL_NETWORKS
            r2 = 1
            r0.m29512a(r1, r2)
            return
        Lcc:
            r0 = r4
            r0.m29486g()
        Ld0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.setup.SetupWizardActivity.m29514a(android.util.Pair):void");
    }

    /* renamed from: a */
    public /* synthetic */ void m29513a(View view) {
        if (this.f24442o.isEnabled()) {
            this.f24442o.callOnClick();
        }
    }

    /* renamed from: a */
    private void m29512a(Stage stage, boolean z) {
        this.f24433e = stage;
        int i = C707520.f24469a[stage.ordinal()];
        if (i == 1) {
            m29491e();
        } else if (i == 2) {
            m29494d();
            m29501a(z);
        } else if (i == 3) {
            finish();
        } else {
            m29491e();
            this.f24433e = Stage.WELCOME;
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.m28449a(Constants.REGISTRATION, "Illegal view in SetupWizardActivity", stage.ordinal() + VerificationLanguage.REGION_PREFIX + stage.name());
            StringBuilder sb = new StringBuilder("Illegal viewId ord: ");
            sb.append(stage.ordinal());
            sb.append(" name: ");
            sb.append(stage.name());
            CLog.m27606a("initView");
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m29509a(SetupWizardActivity setupWizardActivity, int i, PopupDoneListener popupDoneListener) {
        if (i == 4) {
            PopupManager.get().m28209a(setupWizardActivity, new FollowCallAppPopup(TwitterHelper.get(), popupDoneListener));
        } else if (i == 10) {
            PopupManager.get().m28209a(setupWizardActivity, new FollowCallAppPopup(VKHelper.get(), popupDoneListener));
        } else if (popupDoneListener == null) {
        } else {
            popupDoneListener.popupDone(false);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m29506a(OnboardingViewData onboardingViewData) {
        if (onboardingViewData != null) {
            setWelcomeScreenTexts(ThemeUtils.getColor(2131100228));
            ((ImageView) findViewById(2131363822)).setImageResource(onboardingViewData != null ? onboardingViewData.getScreenBackground() : new OnboardingViewDataManager().getDefaultOnboardingViewData().getScreenBackground());
            AlphaAnimation alphaAnimation = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, 1.0f);
            alphaAnimation.setDuration(750L);
            alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.10
                @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    SetupWizardActivity.this.f24431c.setVisibility(0);
                }
            });
            this.f24431c.startAnimation(alphaAnimation);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m29505a(final WelcomeStageViewModel welcomeStageViewModel) {
        PowerUtils.m27429a(this, new Task.DoneListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.8
            @Override // com.callapp.contacts.manager.task.Task.DoneListener
            public void onDone() {
                if (SetupWizardActivity.getCurrentSetupStage() == Stage.WELCOME) {
                    WelcomeStageViewModel.m28260a(SetupWizardActivity.this).run();
                }
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m29504a(final WelcomeStageViewModel welcomeStageViewModel, final Pair pair) {
        Activities.m27687a((Activity) this, true, new ActivityResult() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$ZPTuYvtd7Eknd9byrYnW_yK1NLI
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public final void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                SetupWizardActivity.this.m29503a(welcomeStageViewModel, pair, activity, i, i2, intent);
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m29503a(final WelcomeStageViewModel welcomeStageViewModel, Pair pair, Activity activity, int i, int i2, Intent intent) {
        AnalyticsManager.get().mo28446a(Constants.PERMISSIONS, "Default dailer from setup phone auth", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false", 0.0d);
        AnalyticsManager.get().m28449a(Constants.PERMISSIONS, "Default dialer", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false");
        AnalyticsManager.get().mo28434g();
        getPermissionManager().m28254a(this, new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$bGx1x2_THmK_vM0tcUSjEoUHzsc
            @Override // java.lang.Runnable
            public final void run() {
                SetupWizardActivity.this.m29505a(welcomeStageViewModel);
            }
        }, new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.9
            @Override // java.lang.Runnable
            public void run() {
                if (SetupWizardActivity.getCurrentSetupStage() == Stage.WELCOME) {
                    WelcomeStageViewModel.m28260a(SetupWizardActivity.this).run();
                }
            }
        }, (PermissionManager.PermissionGroup[]) pair.second);
    }

    /* renamed from: a */
    public /* synthetic */ void m29502a(Void r5) {
        m29484h();
        FeedbackManager.get().m28669a(Activities.getString(2131887408), (Integer) null);
    }

    /* renamed from: a */
    private void m29501a(boolean z) {
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Saw Social Networks screen");
        AnalyticsManager.get().m28439e(Constants.SOCIAL_NETWORK_SCREEN_N);
        showActionBar(false);
        setCurrentSetupStage(Stage.LINK_SOCIAL_NETWORKS);
        this.f24432d.setIsFromSetup(true);
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, Constants.SOCIAL_NETWORK_SCREEN_N, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.f26500fL.get().intValue()).name);
        this.f24432d.setDialogTheme(getDialogTheme());
        this.f24432d.m29576b();
        if (CallAppRemoteConfigManager.get().m28698c("onlyNativeSocialLogin")) {
            this.f24432d.m29572c();
        }
        this.f24432d.m29584a();
        this.f24432d.setNetworkConnectionActionListener(new TextualSocialLoginFragment.NetworkConnectionActionListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.15
            @Override // com.callapp.contacts.activity.settings.TextualSocialLoginFragment.NetworkConnectionActionListener
            /* renamed from: a */
            public final void mo29478a(final int i, boolean z2) {
                if (z2) {
                    final int numConnected = SetupWizardActivity.this.f24432d.getNumConnected();
                    if (numConnected == SetupWizardActivity.this.getMaximumPossibleConnected()) {
                        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Connected all networks");
                        SetupWizardActivity.m29509a(SetupWizardActivity.this, i, new PopupDoneListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.15.1
                            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                            public void popupDone(boolean z3) {
                                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Moving automatically from social screen");
                                SetupWizardActivity.this.m29517a(numConnected);
                            }
                        });
                    } else if (z2) {
                        SetupWizardActivity.m29509a(SetupWizardActivity.this, i, null);
                    }
                    RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(i);
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.mo28444a(Constants.REGISTRATION, "Social Networks connected to: " + remoteAccountHelper.getName(), String.valueOf(remoteAccountHelper.isNativeAppInstalled()), 0.0d, new String[0]);
                    new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.15.2
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            if (i == 4 && !TwitterHelper.isTwitterAppInstalled()) {
                                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "No twitter but connected");
                            }
                            if (i != 7 || InstagramHelper.isInstagramAppInstalled()) {
                                return;
                            }
                            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "No instagram but connected");
                        }
                    }.execute();
                }
            }
        });
        TextView textView = (TextView) findViewById(2131363819);
        textView.setText(Activities.getString(2131886095));
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        TextView textView2 = (TextView) findViewById(2131363818);
        textView2.setText(Activities.getString(2131886206));
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView3 = (TextView) findViewById(2131363919);
        textView3.setText(Activities.getString(2131886784));
        textView3.setTextColor(ThemeUtils.getColor(2131099784));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                SetupWizardActivity.this.m29488f();
            }
        });
        if (this.f24437j == null) {
            this.f24437j = findViewById(2131364549);
        }
        View findViewById = findViewById(2131364555);
        ImageView imageView = (ImageView) findViewById(2131364556);
        findViewById.setVisibility(0);
        View findViewById2 = findViewById(2131364554);
        findViewById2.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099686));
        if (z) {
            this.f24437j.animate().setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.17
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SetupWizardActivity.this.f24437j.setVisibility(8);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            }).translationY((-this.f24437j.getHeight()) - 100);
            findViewById2.startAnimation(AnimationUtils.loadAnimation(this, 2130772014));
            findViewById2.setVisibility(0);
        } else {
            this.f24437j.setVisibility(8);
            findViewById2.setVisibility(0);
            findViewById(2131363963).getLayoutParams().height = Activities.getStatusBarHeight();
            findViewById(2131363963).setVisibility(0);
            findViewById(2131363963).requestLayout();
        }
        findViewById(2131364552).setVisibility(0);
        imageView.setVisibility(8);
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.18
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                T9Helper.m30362a();
            }
        }.execute();
    }

    /* renamed from: a */
    public static boolean m29518a() {
        return getCurrentSetupStage().ordinal() < Stage.CORE_PERMISSIONS.ordinal();
    }

    /* renamed from: b */
    public void m29500b() {
        this.f24440m = true;
        this.f24439l = "privacyDefault";
        AnalyticsManager.get().mo28441b(this.f24439l);
        LinearLayout linearLayout = (LinearLayout) findViewById(2131364550);
        TextView textView = (TextView) getLayoutInflater().inflate(2131558716, linearLayout).findViewById(2131363865);
        if (textView != null) {
            textView.setText(Activities.getString(2131887692));
            textView.setVisibility(0);
        }
        this.f24436h = (SocialLoginButton) findViewById(2131364542);
        this.f24434f = (SocialLoginButton) findViewById(2131362777);
        this.f24435g = (SocialLoginButton) findViewById(2131362908);
        this.f24442o = (LoginButton) findViewById(2131363820);
        this.f24436h.setVisibility(LocaleUtils.isRussianUser() ? 0 : 8);
        setLoginType(this.f24439l);
        setButtonLayoutType(0);
        ((TextView) linearLayout.findViewById(2131363423)).setText(Activities.getString(2131887365));
        final WelcomeStageViewModel welcomeStageViewModel = new WelcomeStageViewModel(Arrays.asList(this.f24434f, this.f24435g, this.f24442o, this.f24436h));
        this.f24438k = welcomeStageViewModel;
        welcomeStageViewModel.f26048c.m43334a(this, new AbstractC1268u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$uayWgTrulOaPSqcAu9TrUyt3Yj4
            @Override // androidx.lifecycle.AbstractC1268u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.m29489e((Void) obj);
            }
        });
        welcomeStageViewModel.f26049d.m43334a(this, new AbstractC1268u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$UpTOtj0Ek5cFA3IkQurBRSv9L30
            @Override // androidx.lifecycle.AbstractC1268u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.m29492d((Void) obj);
            }
        });
        welcomeStageViewModel.f26047b.m43334a(this, new AbstractC1268u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$MKxtKayZ_SGz4O6_JHhv4iwm4R4
            @Override // androidx.lifecycle.AbstractC1268u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.m29495c((Void) obj);
            }
        });
        welcomeStageViewModel.f26050e.m43334a(this, new AbstractC1268u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$FAe1oYGbETJz24oNA4G8J9UZ7zo
            @Override // androidx.lifecycle.AbstractC1268u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.m29498b((Void) obj);
            }
        });
        welcomeStageViewModel.f26051f.m43334a(this, new AbstractC1268u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$yIS1WDfXHnWtNlgYoiaWWm1Z728
            @Override // androidx.lifecycle.AbstractC1268u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.m29502a((Void) obj);
            }
        });
        welcomeStageViewModel.f26052g.m43334a(this, new AbstractC1268u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$mfIc1_pGEafhaq0p4MfBAGxSD4s
            @Override // androidx.lifecycle.AbstractC1268u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.m29504a(welcomeStageViewModel, (Pair) obj);
            }
        });
        welcomeStageViewModel.f26046a.m43334a(this, new AbstractC1268u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$0Zvi7CGE_HIgVrtfgARwSWpzzoU
            @Override // androidx.lifecycle.AbstractC1268u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.m29506a((OnboardingViewData) obj);
            }
        });
        welcomeStageViewModel.f26053h.m43334a(this, new AbstractC1268u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$40HW28a5JclDDNm2W_rIGePCPLM
            @Override // androidx.lifecycle.AbstractC1268u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.m29514a((Pair) obj);
            }
        });
        if (this.f24433e == Stage.SETUP_COMPLETED_STAGE) {
            finish();
        } else if (this.f24433e.ordinal() >= Stage.CORE_PERMISSIONS.ordinal() && this.f24433e.ordinal() < Stage.SETUP_COMPLETED_STAGE.ordinal()) {
            m29486g();
            finish();
        }
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.11
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (Activities.m27664a("com.callapp.client", "com.callapp.client.CallAppApplication")) {
                    PopupManager.get().m28209a(SetupWizardActivity.this, new DialogSimpleMessage(Activities.getString(2131886245), Activities.getString(2131888105), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.11.1
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            SetupWizardActivity.this.finish();
                        }
                    }, null, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.11.2
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        /* renamed from: a */
                        public final void mo26209a(DialogPopup dialogPopup) {
                            SetupWizardActivity.this.finish();
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        /* renamed from: b */
                        public final void mo26208b(DialogPopup dialogPopup) {
                            SetupWizardActivity.this.finish();
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                        public void onShow(DialogInterface dialogInterface) {
                        }
                    }));
                } else {
                    SetupWizardActivity.m29487f(SetupWizardActivity.this);
                }
                if (FacebookHelper.get().isNativeAppInstalled()) {
                    AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Has Facebook");
                }
                if (InstagramHelper.isInstagramAppInstalled()) {
                    AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Has Instagram");
                }
                if (TwitterHelper.get().isNativeAppInstalled()) {
                    AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Has twitter");
                }
            }
        }.execute();
        View findViewById = findViewById(2131363823);
        this.f24431c = findViewById;
        TextView textView2 = (TextView) findViewById.findViewById(2131364495);
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(Activities.getString(2131888128));
        SpannableString spannableString = new SpannableString(Activities.getString(2131888130));
        int length = spannableStringBuilder.length() + 1;
        spannableStringBuilder.append((CharSequence) StringUtils.SPACE).append((CharSequence) spannableString);
        spannableStringBuilder.setSpan(new ClickableSpan() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.5
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                Activities.m27655b(SetupWizardActivity.this, Activities.m27697a(2131887848, HttpUtils.getCallAppDomain()));
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setColor(ThemeUtils.getColor(2131100228));
                textPaint.linkColor = ThemeUtils.getColor(2131100228);
                textPaint.setUnderlineText(true);
            }
        }, length, spannableString.length() + length, 33);
        spannableStringBuilder.append((CharSequence) StringUtils.SPACE).append((CharSequence) Activities.getString(2131888126));
        String string = Activities.getString(2131888129);
        int length2 = spannableStringBuilder.length() + 1;
        spannableStringBuilder.append((CharSequence) StringUtils.SPACE).append((CharSequence) string);
        spannableStringBuilder.setSpan(new ClickableSpan() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.6
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                Activities.m27655b(SetupWizardActivity.this, Activities.m27697a(2131887432, HttpUtils.getCallAppDomain()));
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setColor(ThemeUtils.getColor(2131100228));
                textPaint.linkColor = ThemeUtils.getColor(2131100228);
                textPaint.setUnderlineText(true);
            }
        }, length2, string.length() + length2, 33);
        String string2 = Activities.getString(2131888127);
        if (com.callapp.framework.util.StringUtils.m26028f(string2) > 1) {
            spannableStringBuilder.append((CharSequence) StringUtils.SPACE).append((CharSequence) string2);
        }
        textView2.setText(spannableStringBuilder);
        textView2.setHighlightColor(0);
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (Prefs.f26319bq.get() == null) {
                    NotificationManager.get().m28579a();
                }
            }
        }.execute();
        m29512a(this.f24433e, false);
        findViewById(2131363963).getLayoutParams().height = Activities.getStatusBarHeight();
        findViewById(2131363963).setVisibility(0);
        findViewById(2131363963).requestLayout();
        C10104a.m23394a(CallAppApplication.get(), new C10104a.AbstractC10106a() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.3
            @Override // com.facebook.applinks.C10104a.AbstractC10106a
            /* renamed from: a */
            public final void mo23389a(C10104a c10104a) {
                String uri = (c10104a == null || c10104a.f33463a == null) ? "no appLinkData" : c10104a.f33463a.toString();
                CLog.m27611a(DeepLinkManager.class, uri);
                if (c10104a == null || c10104a.f33463a == null) {
                    AnalyticsManager.get().mo28444a(Constants.INSTALLATION, "deeplink", "no appLinkData", 0.0d, "provider", "facebook");
                    return;
                }
                String[] m27892a = InstallationReceiver.m27892a(uri);
                String[] strArr = new String[22];
                strArr[0] = "provider";
                strArr[1] = "facebook";
                System.arraycopy(m27892a, 0, strArr, 2, 20);
                AnalyticsManager.get().mo28444a(Constants.INSTALLATION, "deeplink", (String) null, 0.0d, strArr);
            }
        });
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.4
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                AdvertisingIdClient.Info info;
                JsonNode jsonNode;
                JsonNode jsonNode2;
                JsonNode jsonNode3;
                JsonNode jsonNode4;
                JsonNode jsonNode5;
                String str = null;
                try {
                    info = AdvertisingIdClient.getAdvertisingIdInfo(CallAppApplication.get());
                } catch (Exception e) {
                    CLog.m27609a(SetupWizardActivity.class, e);
                    info = null;
                }
                if (info != null) {
                    str = info.getId();
                }
                if (info == null || !com.callapp.framework.util.StringUtils.m26045b((CharSequence) str)) {
                    return;
                }
                String m28703a = CallAppRemoteConfigManager.get().m28703a("payWallCampaingIds");
                if (!com.callapp.framework.util.StringUtils.m26045b((CharSequence) m28703a)) {
                    return;
                }
                ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JsonNode.class);
                HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder("https://" + HttpUtils.getCallAppServerHost() + "/conversion/eventdispatch/conversion/install/" + str + "/" + (info.isLimitAdTrackingEnabled() ? 1 : 0));
                httpRequestParamsBuilder.f28293c = classParserHttpResponseHandler;
                HttpUtils.m26971b(httpRequestParamsBuilder.m26994a());
                if (classParserHttpResponseHandler.getResult() == null || (jsonNode2 = (jsonNode = (JsonNode) classParserHttpResponseHandler.getResult()).get("attributed")) == null || !jsonNode2.asBoolean() || (jsonNode3 = jsonNode.get("ad_events")) == null || jsonNode3.size() <= 0 || (jsonNode4 = jsonNode3.get(0)) == null || (jsonNode5 = jsonNode4.get(Reporting.Key.CAMPAIGN_ID)) == null) {
                    return;
                }
                AnalyticsManager.get().m28450a(Constants.ON_BOARDING_PAYMENT_PAY_WALL, "AttributedInstall");
                String asText = jsonNode5.asText();
                JSONPayWallCampaignIds jSONPayWallCampaignIds = (JSONPayWallCampaignIds) Parser.m26917a(m28703a, new TypeReference<JSONPayWallCampaignIds>() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.4.1
                });
                if (jSONPayWallCampaignIds == null) {
                    return;
                }
                boolean m26073a = CollectionUtils.m26073a(jSONPayWallCampaignIds.getCampaingIds(), asText);
                if (m26073a) {
                    Prefs.f26248aY.set(Boolean.TRUE);
                }
                AnalyticsManager.get().m28450a(Constants.ON_BOARDING_PAYMENT_PAY_WALL, m26073a ? "SetInstallAsPayWall" : "SetInstallNotAsPayWall");
            }
        }.execute();
    }

    /* renamed from: b */
    public /* synthetic */ void m29498b(Void r8) {
        m29484h();
        FeedbackManager.get().m28671a(Activities.m27697a(2131886511, r8));
    }

    /* renamed from: c */
    private void m29497c() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.7
            @Override // java.lang.Runnable
            public void run() {
                SimpleProgressDialog.m27939a(SetupWizardActivity.this.f24429a);
                CallAppApplication.get().m31864b(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SetupWizardActivity.this.f24429a = new SimpleProgressDialog();
                        SetupWizardActivity.this.f24429a.setCancelable(false);
                        SetupWizardActivity.this.f24429a.setMessage(Activities.getString(2131887415));
                        PopupManager.get().m28209a(SetupWizardActivity.this, SetupWizardActivity.this.f24429a);
                    }
                });
            }
        });
    }

    /* renamed from: c */
    public /* synthetic */ void m29495c(Void r3) {
        m29497c();
    }

    /* renamed from: d */
    private void m29494d() {
        findViewById(2131363964).setVisibility(4);
        findViewById(2131363964).getLayoutParams().height = Activities.getStatusBarHeight();
        setStatusBarColor(ThemeUtils.m27386a(this, 2131099784));
    }

    /* renamed from: d */
    public /* synthetic */ void m29492d(Void r3) {
        m29484h();
    }

    /* renamed from: e */
    private void m29491e() {
        this.f24438k.m28262a();
        showActionBar(false);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131364553);
        if (viewGroup != null) {
            viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$odTjiQPIXuaN68JNPJi0eT0iRp0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SetupWizardActivity.this.m29513a(view);
                }
            });
            ((TextView) viewGroup.findViewById(2131364130)).setText(Activities.getString(2131887648));
        }
    }

    /* renamed from: e */
    public /* synthetic */ void m29489e(Void r12) {
        m29484h();
        PopupManager.get().m28209a(this, new DialogSimpleMessage(Activities.getString(2131887355), Activities.getString(2131887557), Activities.getString(2131886563), null, _$$Lambda$SetupWizardActivity$Myx1Yb0BCuIQoI9wSq2mvKZ4J9o.INSTANCE, null));
    }

    /* renamed from: f */
    public void m29488f() {
        if (!HttpUtils.m26985a()) {
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Clicked next in social networks: No internet");
            FeedbackManager.get().m28671a(Activities.getString(2131887407));
            return;
        }
        int numConnected = this.f24432d.getNumConnected();
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Clicked next in social networks. num connected: ".concat(String.valueOf(numConnected)));
        m29517a(numConnected);
    }

    /* renamed from: f */
    static /* synthetic */ void m29487f(SetupWizardActivity setupWizardActivity) {
        new ValidateClientTask(new ValidateClientTask.OnResultListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.12
            @Override // com.callapp.contacts.util.servermessage.ValidateClientTask.OnResultListener
            /* renamed from: a */
            public final void mo26901a(JSONClientValidationResponse jSONClientValidationResponse) {
                if (jSONClientValidationResponse.getMessageType() == 5 || jSONClientValidationResponse.getMessageType() == 4) {
                    SetupWizardActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SetupWizardActivity.this.finish();
                        }
                    });
                }
            }
        }, setupWizardActivity, Constants.REGISTRATION).execute();
    }

    /* renamed from: g */
    private void m29486g() {
        Intent intent = new Intent(CallAppApplication.get(), SetupWizardProfileActivity.class);
        intent.setFlags(268468224);
        intent.putExtra("CAME_FROM_SETUP_REMINDER_KEY", getIntent().getBooleanExtra("CAME_FROM_SETUP_REMINDER_KEY", false));
        Activities.m27685a(this, intent);
    }

    public static Stage getCurrentSetupStage() {
        int intValue = Prefs.f26244aU.get().intValue();
        Stage[] values = Stage.values();
        int i = intValue;
        if (intValue > values.length - 1) {
            i = values.length - 1;
            Prefs.f26244aU.set(Integer.valueOf(i));
        }
        return values[i];
    }

    public static int getDialogTheme() {
        return 2;
    }

    public int getMaximumPossibleConnected() {
        int i = !GooglePlayUtils.isGooglePlayServicesAvailable() ? 3 : 4;
        int i2 = i;
        if (CallAppRemoteConfigManager.get().m28698c("onlyNativeSocialLogin")) {
            int i3 = i;
            if (!FacebookHelper.get().isNativeAppInstalled()) {
                i3 = i - 1;
            }
            int i4 = i3;
            if (!TwitterHelper.get().isNativeAppInstalled()) {
                i4 = i3 - 1;
            }
            i2 = i4;
            if (!VKHelper.get().isNativeAppInstalled()) {
                i2 = i4 - 1;
            }
        }
        return i2;
    }

    /* renamed from: h */
    private void m29484h() {
        SimpleProgressDialog.m27939a(this.f24429a);
        this.f24429a = null;
    }

    private void setButtonLayoutType(int i) {
        this.f24434f.setButtonLayoutType(i);
        this.f24435g.setButtonLayoutType(i);
        this.f24442o.setButtonLayoutType(i);
        this.f24436h.setButtonLayoutType(i);
    }

    public static void setCurrentSetupStage(Stage stage) {
        Prefs.f26244aU.set(Integer.valueOf(stage.ordinal()));
    }

    private void setLoginType(String str) {
        this.f24434f.setLoginType(str);
        this.f24435g.setLoginType(str);
        this.f24442o.setLoginType(str);
        this.f24436h.setLoginType(str);
    }

    private void setWelcomeScreenTexts(int i) {
        TextView textView = (TextView) findViewById(2131364130);
        textView.setTextColor(i);
        textView.setText(Activities.getString(2131887648));
        TextView textView2 = (TextView) findViewById(2131364030);
        textView2.setText(Activities.getString(2131886825));
        textView2.setTextColor(i);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558455;
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getStatusBarColor() {
        Stage stage = this.f24433e;
        if (stage == null || stage == Stage.WELCOME) {
            return 0;
        }
        return super.getStatusBarColor();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (SocialNetworksSearchUtil.m29233a(i, i2, intent)) {
            return;
        }
        if (!this.f24440m) {
            m29500b();
        }
        if (i != 7453) {
            return;
        }
        if (i2 != -1) {
            m29484h();
            this.f24438k.m28261a(i);
            return;
        }
        m29484h();
        this.f24438k.m28261a(i);
        int intExtra = intent.getIntExtra("EXTRA_NETWORK_TYPE", -1);
        if (intent.getIntExtra("EXTRA_NETWORK_TYPE", -1) != -1) {
            int i3 = C707520.f24470b[AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(intExtra).ordinal()];
            if (i3 == 1) {
                this.f24434f.callOnClick();
                return;
            } else if (i3 == 2) {
                this.f24435g.callOnClick();
                return;
            } else if (i3 != 3) {
                return;
            } else {
                this.f24436h.callOnClick();
                return;
            }
        }
        m29497c();
        String stringExtra = intent.getStringExtra("RESULT_USER_PHONE_NUMBER");
        String stringExtra2 = intent.getStringExtra("RESULT_USER_CALLAPP_TOKEN");
        String stringExtra3 = intent.getStringExtra("RESULT_USER_CALLAPP_TOKEN_TYPE");
        if (stringExtra3 == null) {
            return;
        }
        if (stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH.name())) {
            PhoneVerifierManager.get().m28519a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH);
        } else if (!stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP.name())) {
        } else {
            PhoneVerifierManager.get().m28519a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        final Stage currentSetupStage = getCurrentSetupStage();
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Back pressed stage ".concat(String.valueOf(currentSetupStage)));
        int i = C707520.f24469a[currentSetupStage.ordinal()];
        if (i == 1) {
            LoginButton loginButton = this.f24442o;
            if (loginButton == null || !loginButton.isEnabled()) {
                return;
            }
            this.f24442o.callOnClick();
        } else if (i != 2) {
        } else {
            if (!HttpUtils.m26985a()) {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "back-press in social, No internet");
                PopupManager.get().m28209a(this, new DialogSimpleMessage(Activities.getString(2131887862), Activities.getString(2131886630), Activities.getString(2131888244), Activities.getString(2131888245), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.13
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        AnalyticsManager analyticsManager = AnalyticsManager.get();
                        analyticsManager.m28450a(Constants.REGISTRATION, "Back pressed in setup. Chose to complete." + currentSetupStage);
                    }
                }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.14
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        AnalyticsManager analyticsManager = AnalyticsManager.get();
                        analyticsManager.m28450a(Constants.REGISTRATION, "Back pressed in setup. Chose to quit." + currentSetupStage);
                        SetupWizardActivity.super.onBackPressed();
                    }
                }));
                return;
            }
            int numConnected = this.f24432d.getNumConnected();
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "completed social screen using back button");
            m29517a(numConnected);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f24433e = getCurrentSetupStage();
        this.f24432d = (TextualSocialLoginFragment) getSupportFragmentManager().m43719c(2131364106);
        CallAppRemoteConfigManager.get().setDefaultsIfNeeded(new C70551(bundle));
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131623937, menu);
        MenuItem findItem = menu.findItem(2131361964);
        if (findItem != null) {
            findItem.setTitle(Activities.getString(2131887300));
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, this.f24439l);
        LoginButton loginButton = this.f24442o;
        if (loginButton != null) {
            loginButton.mo26379a();
        }
        SocialLoginButton socialLoginButton = this.f24434f;
        if (socialLoginButton != null) {
            socialLoginButton.mo26379a();
        }
        SocialLoginButton socialLoginButton2 = this.f24435g;
        if (socialLoginButton2 != null) {
            socialLoginButton2.mo26379a();
        }
        SocialLoginButton socialLoginButton3 = this.f24436h;
        if (socialLoginButton3 != null) {
            socialLoginButton3.mo26379a();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if (this.f24440m) {
            m29515a(intent);
        } else {
            this.f24441n = true;
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        AndroidUtils.m27635a((Activity) this);
        if (C707520.f24469a[this.f24433e.ordinal()] != 2) {
            return super.onOptionsItemSelected(menuItem);
        }
        m29488f();
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        MenuItem item = menu.getItem(0);
        if (C707520.f24469a[this.f24433e.ordinal()] != 2) {
            item.setVisible(false);
        } else {
            item.setTitle(Activities.getString(2131887703));
            item.setVisible(true);
        }
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (getCurrentSetupStage() == Stage.SETUP_COMPLETED_STAGE) {
            finish();
        }
    }

    public void onTextNextToSwitchClicked(View view) {
        ViewUtils.m27334a(this, view);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return false;
    }
}
