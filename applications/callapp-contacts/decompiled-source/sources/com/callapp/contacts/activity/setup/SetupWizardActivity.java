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
import androidx.lifecycle.u;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.common.model.json.JSONClientValidationResponse;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseFullScreenActivity;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.settings.TextualSocialLoginFragment;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.api.helper.instagram.InstagramHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
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
import com.facebook.applinks.a;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardActivity.class */
public class SetupWizardActivity extends BaseFullScreenActivity {

    /* renamed from: a  reason: collision with root package name */
    private SimpleProgressDialog f13874a;

    /* renamed from: c  reason: collision with root package name */
    private View f13876c;

    /* renamed from: d  reason: collision with root package name */
    private TextualSocialLoginFragment f13877d;
    private SocialLoginButton f;
    private SocialLoginButton g;
    private SocialLoginButton h;
    private View j;
    private WelcomeStageViewModel k;
    private String l;
    private LoginButton o;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f13875b = null;
    private Stage e = null;
    private boolean m = false;
    private boolean n = false;

    /* renamed from: com.callapp.contacts.activity.setup.SetupWizardActivity$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardActivity$1.class */
    class AnonymousClass1 implements Task.DoneListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bundle f13878a;

        AnonymousClass1(Bundle bundle) {
            this.f13878a = bundle;
        }

        @Override // com.callapp.contacts.manager.task.Task.DoneListener
        public void onDone() {
            final h<Void> a2 = CallAppRemoteConfigManager.get().a(false, new Task.DoneListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.1.1
                @Override // com.callapp.contacts.manager.task.Task.DoneListener
                public void onDone() {
                    if (!SetupWizardActivity.this.m) {
                        SetupWizardActivity.this.b();
                        if (SetupWizardActivity.this.n) {
                            SetupWizardActivity.this.n = false;
                            SetupWizardActivity.this.a(SetupWizardActivity.this.getIntent());
                        }
                    }
                }
            });
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.1.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        k.a(a2, 500L, TimeUnit.MILLISECONDS);
                    } catch (InterruptedException | ExecutionException | TimeoutException e) {
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.1.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!SetupWizardActivity.this.m) {
                                    SetupWizardActivity.this.b();
                                    if (SetupWizardActivity.this.n) {
                                        SetupWizardActivity.this.n = false;
                                        SetupWizardActivity.this.a(SetupWizardActivity.this.getIntent());
                                    }
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.setup.SetupWizardActivity$20  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/SetupWizardActivity$20.class */
    public static /* synthetic */ class AnonymousClass20 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13904a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f13905b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.values().length];
            f13905b = iArr;
            try {
                iArr[AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.FACEBOOK.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13905b[AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.USER_GOOGLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13905b[AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.VK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[Stage.values().length];
            f13904a = iArr2;
            try {
                iArr2[Stage.WELCOME.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f13904a[Stage.LINK_SOCIAL_NETWORKS.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f13904a[Stage.SETUP_COMPLETED_STAGE.ordinal()] = 3;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Successfuly completed social network screen", String.valueOf(i));
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.19
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (TwitterHelper.get().isLoggedIn() && !TwitterHelper.isTwitterAppInstalled()) {
                    AnalyticsManager.get().a(Constants.REGISTRATION, "Connected to twitter but doesn't have twitter");
                }
            }
        }.execute();
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Intent intent) {
        if (intent.getBooleanExtra("CAME_FROM_SETUP_REMINDER_KEY", false)) {
            this.k.a(getCurrentSetupStage(), this.f, this.g, new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$I4IVNbvvfNUWaY3Y6LcrXGXp6AA
                @Override // java.lang.Runnable
                public final void run() {
                    SetupWizardActivity.this.onBackPressed();
                }
            });
        } else if (Prefs.bq.get() == null) {
            NotificationManager.get().a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Pair pair) {
        h();
        Prefs.fK.set(pair.first);
        Prefs.fL.set(Integer.valueOf(((AuthenticatorsConfiguration.AUTHENTICATORS_TYPES) pair.second).getNumRep()));
        if (Activities.a((Activity) this)) {
            if (!CallAppRemoteConfigManager.get().c("skipSocialNetwork")) {
                AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types = (AuthenticatorsConfiguration.AUTHENTICATORS_TYPES) pair.second;
                boolean z = false;
                if ((authenticators_types == AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.FACEBOOK || authenticators_types == AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.VK || authenticators_types == AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.USER_GOOGLE) ? false : true) {
                    boolean c2 = CallAppRemoteConfigManager.get().c("onlyNativeSocialLogin");
                    if (FacebookHelper.get().isNativeAppInstalled() || VKHelper.get().isNativeAppInstalled() || TwitterHelper.get().isNativeAppInstalled()) {
                        z = true;
                    }
                    if (!c2 || z) {
                        a(Stage.LINK_SOCIAL_NETWORKS, true);
                        return;
                    } else {
                        g();
                        return;
                    }
                } else if (pair.second == AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.USER_GOOGLE && GooglePlayUtils.isGooglePlayServicesAvailable() && !GoogleHelper.get().isLoggedIn()) {
                    a(Stage.LINK_SOCIAL_NETWORKS, true);
                    return;
                }
            }
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        if (this.o.isEnabled()) {
            this.o.callOnClick();
        }
    }

    private void a(Stage stage, boolean z) {
        this.e = stage;
        int i = AnonymousClass20.f13904a[stage.ordinal()];
        if (i == 1) {
            e();
        } else if (i == 2) {
            d();
            a(z);
        } else if (i != 3) {
            e();
            this.e = Stage.WELCOME;
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.a(Constants.REGISTRATION, "Illegal view in SetupWizardActivity", stage.ordinal() + VerificationLanguage.REGION_PREFIX + stage.name());
            StringBuilder sb = new StringBuilder("Illegal viewId ord: ");
            sb.append(stage.ordinal());
            sb.append(" name: ");
            sb.append(stage.name());
            CLog.a("initView");
        } else {
            finish();
        }
    }

    static /* synthetic */ void a(SetupWizardActivity setupWizardActivity, int i, PopupDoneListener popupDoneListener) {
        if (i == 4) {
            PopupManager.get().a(setupWizardActivity, new FollowCallAppPopup(TwitterHelper.get(), popupDoneListener));
        } else if (i == 10) {
            PopupManager.get().a(setupWizardActivity, new FollowCallAppPopup(VKHelper.get(), popupDoneListener));
        } else if (popupDoneListener != null) {
            popupDoneListener.popupDone(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(OnboardingViewData onboardingViewData) {
        if (onboardingViewData != null) {
            setWelcomeScreenTexts(ThemeUtils.getColor(2131100228));
            ((ImageView) findViewById(2131363822)).setImageResource(onboardingViewData != null ? onboardingViewData.getScreenBackground() : new OnboardingViewDataManager().getDefaultOnboardingViewData().getScreenBackground());
            AlphaAnimation alphaAnimation = new AlphaAnimation((float) BitmapDescriptorFactory.HUE_RED, 1.0f);
            alphaAnimation.setDuration(750L);
            alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.10
                @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    SetupWizardActivity.this.f13876c.setVisibility(0);
                }
            });
            this.f13876c.startAnimation(alphaAnimation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final WelcomeStageViewModel welcomeStageViewModel) {
        PowerUtils.a(this, new Task.DoneListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.8
            @Override // com.callapp.contacts.manager.task.Task.DoneListener
            public void onDone() {
                if (SetupWizardActivity.getCurrentSetupStage() == Stage.WELCOME) {
                    WelcomeStageViewModel.a(SetupWizardActivity.this).run();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final WelcomeStageViewModel welcomeStageViewModel, final Pair pair) {
        Activities.a((Activity) this, true, new ActivityResult() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$ZPTuYvtd7Eknd9byrYnW_yK1NLI
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public final void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                SetupWizardActivity.this.a(welcomeStageViewModel, pair, activity, i, i2, intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final WelcomeStageViewModel welcomeStageViewModel, Pair pair, Activity activity, int i, int i2, Intent intent) {
        String str = "true";
        AnalyticsManager.get().a(Constants.PERMISSIONS, "Default dailer from setup phone auth", PhoneManager.get().isDefaultSystemPhoneApp() ? "true" : "false", 0.0d);
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        if (!PhoneManager.get().isDefaultSystemPhoneApp()) {
            str = "false";
        }
        analyticsManager.a(Constants.PERMISSIONS, "Default dialer", str);
        AnalyticsManager.get().g();
        getPermissionManager().a(this, new Runnable() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$bGx1x2_THmK_vM0tcUSjEoUHzsc
            @Override // java.lang.Runnable
            public final void run() {
                SetupWizardActivity.this.a(welcomeStageViewModel);
            }
        }, new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.9
            @Override // java.lang.Runnable
            public void run() {
                if (SetupWizardActivity.getCurrentSetupStage() == Stage.WELCOME) {
                    WelcomeStageViewModel.a(SetupWizardActivity.this).run();
                }
            }
        }, (PermissionManager.PermissionGroup[]) pair.second);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Void r5) {
        h();
        FeedbackManager.get().a(Activities.getString(2131887408), (Integer) null);
    }

    private void a(boolean z) {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Saw Social Networks screen");
        AnalyticsManager.get().e(Constants.SOCIAL_NETWORK_SCREEN_N);
        showActionBar(false);
        setCurrentSetupStage(Stage.LINK_SOCIAL_NETWORKS);
        this.f13877d.setIsFromSetup(true);
        AnalyticsManager.get().a(Constants.REGISTRATION, Constants.SOCIAL_NETWORK_SCREEN_N, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(Prefs.fL.get().intValue()).name);
        this.f13877d.setDialogTheme(getDialogTheme());
        this.f13877d.b();
        if (CallAppRemoteConfigManager.get().c("onlyNativeSocialLogin")) {
            this.f13877d.c();
        }
        this.f13877d.a();
        this.f13877d.setNetworkConnectionActionListener(new TextualSocialLoginFragment.NetworkConnectionActionListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.15
            @Override // com.callapp.contacts.activity.settings.TextualSocialLoginFragment.NetworkConnectionActionListener
            public final void a(final int i, boolean z2) {
                if (z2) {
                    final int numConnected = SetupWizardActivity.this.f13877d.getNumConnected();
                    if (numConnected == SetupWizardActivity.this.getMaximumPossibleConnected()) {
                        AnalyticsManager.get().a(Constants.REGISTRATION, "Connected all networks");
                        SetupWizardActivity.a(SetupWizardActivity.this, i, new PopupDoneListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.15.1
                            @Override // com.callapp.contacts.manager.popup.PopupDoneListener
                            public void popupDone(boolean z3) {
                                AnalyticsManager.get().a(Constants.REGISTRATION, "Moving automatically from social screen");
                                SetupWizardActivity.this.a(numConnected);
                            }
                        });
                    } else if (z2) {
                        SetupWizardActivity.a(SetupWizardActivity.this, i, null);
                    }
                    RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(i);
                    AnalyticsManager analyticsManager = AnalyticsManager.get();
                    analyticsManager.a(Constants.REGISTRATION, "Social Networks connected to: " + remoteAccountHelper.getName(), String.valueOf(remoteAccountHelper.isNativeAppInstalled()), 0.0d, new String[0]);
                    new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.15.2
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            if (i == 4 && !TwitterHelper.isTwitterAppInstalled()) {
                                AnalyticsManager.get().a(Constants.REGISTRATION, "No twitter but connected");
                            }
                            if (i == 7 && !InstagramHelper.isInstagramAppInstalled()) {
                                AnalyticsManager.get().a(Constants.REGISTRATION, "No instagram but connected");
                            }
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
                AndroidUtils.a(view, 1);
                SetupWizardActivity.this.f();
            }
        });
        if (this.j == null) {
            this.j = findViewById(2131364549);
        }
        View findViewById = findViewById(2131364555);
        ImageView imageView = (ImageView) findViewById(2131364556);
        findViewById.setVisibility(0);
        View findViewById2 = findViewById(2131364554);
        findViewById2.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099686));
        if (z) {
            this.j.animate().setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.17
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SetupWizardActivity.this.j.setVisibility(8);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }
            }).translationY((-this.j.getHeight()) - 100);
            findViewById2.startAnimation(AnimationUtils.loadAnimation(this, 2130772014));
            findViewById2.setVisibility(0);
        } else {
            this.j.setVisibility(8);
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
                T9Helper.a();
            }
        }.execute();
    }

    public static boolean a() {
        return getCurrentSetupStage().ordinal() < Stage.CORE_PERMISSIONS.ordinal();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.m = true;
        this.l = "privacyDefault";
        AnalyticsManager.get().b(this.l);
        LinearLayout linearLayout = (LinearLayout) findViewById(2131364550);
        TextView textView = (TextView) getLayoutInflater().inflate(2131558716, linearLayout).findViewById(2131363865);
        if (textView != null) {
            textView.setText(Activities.getString(2131887692));
            textView.setVisibility(0);
        }
        this.h = (SocialLoginButton) findViewById(2131364542);
        this.f = (SocialLoginButton) findViewById(2131362777);
        this.g = (SocialLoginButton) findViewById(2131362908);
        this.o = (LoginButton) findViewById(2131363820);
        this.h.setVisibility(LocaleUtils.isRussianUser() ? 0 : 8);
        setLoginType(this.l);
        setButtonLayoutType(0);
        ((TextView) linearLayout.findViewById(2131363423)).setText(Activities.getString(2131887365));
        final WelcomeStageViewModel welcomeStageViewModel = new WelcomeStageViewModel(Arrays.asList(this.f, this.g, this.o, this.h));
        this.k = welcomeStageViewModel;
        welcomeStageViewModel.f15105c.a(this, new u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$uayWgTrulOaPSqcAu9TrUyt3Yj4
            @Override // androidx.lifecycle.u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.e((Void) obj);
            }
        });
        welcomeStageViewModel.f15106d.a(this, new u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$UpTOtj0Ek5cFA3IkQurBRSv9L30
            @Override // androidx.lifecycle.u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.d((Void) obj);
            }
        });
        welcomeStageViewModel.f15104b.a(this, new u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$MKxtKayZ_SGz4O6_JHhv4iwm4R4
            @Override // androidx.lifecycle.u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.c((Void) obj);
            }
        });
        welcomeStageViewModel.e.a(this, new u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$FAe1oYGbETJz24oNA4G8J9UZ7zo
            @Override // androidx.lifecycle.u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.b((Void) obj);
            }
        });
        welcomeStageViewModel.f.a(this, new u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$yIS1WDfXHnWtNlgYoiaWWm1Z728
            @Override // androidx.lifecycle.u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.a((Void) obj);
            }
        });
        welcomeStageViewModel.g.a(this, new u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$mfIc1_pGEafhaq0p4MfBAGxSD4s
            @Override // androidx.lifecycle.u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.a(welcomeStageViewModel, (Pair) obj);
            }
        });
        welcomeStageViewModel.f15103a.a(this, new u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$0Zvi7CGE_HIgVrtfgARwSWpzzoU
            @Override // androidx.lifecycle.u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.a((OnboardingViewData) obj);
            }
        });
        welcomeStageViewModel.h.a(this, new u() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$40HW28a5JclDDNm2W_rIGePCPLM
            @Override // androidx.lifecycle.u
            public final void onChanged(Object obj) {
                SetupWizardActivity.this.a((Pair) obj);
            }
        });
        if (this.e == Stage.SETUP_COMPLETED_STAGE) {
            finish();
        } else if (this.e.ordinal() >= Stage.CORE_PERMISSIONS.ordinal() && this.e.ordinal() < Stage.SETUP_COMPLETED_STAGE.ordinal()) {
            g();
            finish();
        }
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.11
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (Activities.a("com.callapp.client", "com.callapp.client.CallAppApplication")) {
                    PopupManager.get().a(SetupWizardActivity.this, new DialogSimpleMessage(Activities.getString(2131886245), Activities.getString(2131888105), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.11.1
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            SetupWizardActivity.this.finish();
                        }
                    }, null, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.11.2
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        public final void a(DialogPopup dialogPopup) {
                            SetupWizardActivity.this.finish();
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        public final void b(DialogPopup dialogPopup) {
                            SetupWizardActivity.this.finish();
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                        public void onShow(DialogInterface dialogInterface) {
                        }
                    }));
                } else {
                    SetupWizardActivity.f(SetupWizardActivity.this);
                }
                if (FacebookHelper.get().isNativeAppInstalled()) {
                    AnalyticsManager.get().a(Constants.REGISTRATION, "Has Facebook");
                }
                if (InstagramHelper.isInstagramAppInstalled()) {
                    AnalyticsManager.get().a(Constants.REGISTRATION, "Has Instagram");
                }
                if (TwitterHelper.get().isNativeAppInstalled()) {
                    AnalyticsManager.get().a(Constants.REGISTRATION, "Has twitter");
                }
            }
        }.execute();
        View findViewById = findViewById(2131363823);
        this.f13876c = findViewById;
        TextView textView2 = (TextView) findViewById.findViewById(2131364495);
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(Activities.getString(2131888128));
        SpannableString spannableString = new SpannableString(Activities.getString(2131888130));
        int length = spannableStringBuilder.length() + 1;
        spannableStringBuilder.append((CharSequence) StringUtils.SPACE).append((CharSequence) spannableString);
        spannableStringBuilder.setSpan(new ClickableSpan() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.5
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                Activities.b(SetupWizardActivity.this, Activities.a(2131887848, HttpUtils.getCallAppDomain()));
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
                AndroidUtils.a(view, 1);
                Activities.b(SetupWizardActivity.this, Activities.a(2131887432, HttpUtils.getCallAppDomain()));
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setColor(ThemeUtils.getColor(2131100228));
                textPaint.linkColor = ThemeUtils.getColor(2131100228);
                textPaint.setUnderlineText(true);
            }
        }, length2, string.length() + length2, 33);
        String string2 = Activities.getString(2131888127);
        if (com.callapp.framework.util.StringUtils.f(string2) > 1) {
            spannableStringBuilder.append((CharSequence) StringUtils.SPACE).append((CharSequence) string2);
        }
        textView2.setText(spannableStringBuilder);
        textView2.setHighlightColor(0);
        new Task() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.2
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                if (Prefs.bq.get() == null) {
                    NotificationManager.get().a();
                }
            }
        }.execute();
        a(this.e, false);
        findViewById(2131363963).getLayoutParams().height = Activities.getStatusBarHeight();
        findViewById(2131363963).setVisibility(0);
        findViewById(2131363963).requestLayout();
        a.a(CallAppApplication.get(), new a.AbstractC0392a() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.3
            @Override // com.facebook.applinks.a.AbstractC0392a
            public final void a(a aVar) {
                String uri = (aVar == null || aVar.f19672a == null) ? "no appLinkData" : aVar.f19672a.toString();
                CLog.a(DeepLinkManager.class, uri);
                if (aVar == null || aVar.f19672a == null) {
                    AnalyticsManager.get().a(Constants.INSTALLATION, "deeplink", "no appLinkData", 0.0d, "provider", "facebook");
                    return;
                }
                String[] a2 = InstallationReceiver.a(uri);
                String[] strArr = new String[22];
                strArr[0] = "provider";
                strArr[1] = "facebook";
                System.arraycopy(a2, 0, strArr, 2, 20);
                AnalyticsManager.get().a(Constants.INSTALLATION, "deeplink", (String) null, 0.0d, strArr);
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
                    CLog.a(SetupWizardActivity.class, e);
                    info = null;
                }
                if (info != null) {
                    str = info.getId();
                }
                if (info != null && com.callapp.framework.util.StringUtils.b((CharSequence) str)) {
                    String a2 = CallAppRemoteConfigManager.get().a("payWallCampaingIds");
                    if (com.callapp.framework.util.StringUtils.b((CharSequence) a2)) {
                        ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JsonNode.class);
                        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder("https://" + HttpUtils.getCallAppServerHost() + "/conversion/eventdispatch/conversion/install/" + str + "/" + (info.isLimitAdTrackingEnabled() ? 1 : 0));
                        httpRequestParamsBuilder.f16228c = classParserHttpResponseHandler;
                        HttpUtils.b(httpRequestParamsBuilder.a());
                        if (classParserHttpResponseHandler.getResult() != null && (jsonNode2 = (jsonNode = (JsonNode) classParserHttpResponseHandler.getResult()).get("attributed")) != null && jsonNode2.asBoolean() && (jsonNode3 = jsonNode.get("ad_events")) != null && jsonNode3.size() > 0 && (jsonNode4 = jsonNode3.get(0)) != null && (jsonNode5 = jsonNode4.get(Reporting.Key.CAMPAIGN_ID)) != null) {
                            AnalyticsManager.get().a(Constants.ON_BOARDING_PAYMENT_PAY_WALL, "AttributedInstall");
                            String asText = jsonNode5.asText();
                            JSONPayWallCampaignIds jSONPayWallCampaignIds = (JSONPayWallCampaignIds) Parser.a(a2, new TypeReference<JSONPayWallCampaignIds>() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.4.1
                            });
                            if (jSONPayWallCampaignIds != null) {
                                boolean a3 = CollectionUtils.a(jSONPayWallCampaignIds.getCampaingIds(), asText);
                                if (a3) {
                                    Prefs.aY.set(Boolean.TRUE);
                                }
                                AnalyticsManager.get().a(Constants.ON_BOARDING_PAYMENT_PAY_WALL, a3 ? "SetInstallAsPayWall" : "SetInstallNotAsPayWall");
                            }
                        }
                    }
                }
            }
        }.execute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Void r8) {
        h();
        FeedbackManager.get().a(Activities.a(2131886511, r8));
    }

    private void c() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.7
            @Override // java.lang.Runnable
            public void run() {
                SimpleProgressDialog.a(SetupWizardActivity.this.f13874a);
                CallAppApplication.get().b(new Runnable() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SetupWizardActivity.this.f13874a = new SimpleProgressDialog();
                        SetupWizardActivity.this.f13874a.setCancelable(false);
                        SetupWizardActivity.this.f13874a.setMessage(Activities.getString(2131887415));
                        PopupManager.get().a(SetupWizardActivity.this, SetupWizardActivity.this.f13874a);
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Void r3) {
        c();
    }

    private void d() {
        findViewById(2131363964).setVisibility(4);
        findViewById(2131363964).getLayoutParams().height = Activities.getStatusBarHeight();
        setStatusBarColor(ThemeUtils.a(this, 2131099784));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(Void r3) {
        h();
    }

    private void e() {
        this.k.a();
        showActionBar(false);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131364553);
        if (viewGroup != null) {
            viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup._$$Lambda$SetupWizardActivity$odTjiQPIXuaN68JNPJi0eT0iRp0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SetupWizardActivity.this.a(view);
                }
            });
            ((TextView) viewGroup.findViewById(2131364130)).setText(Activities.getString(2131887648));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(Void r12) {
        h();
        PopupManager.get().a(this, new DialogSimpleMessage(Activities.getString(2131887355), Activities.getString(2131887557), Activities.getString(2131886563), null, _$$Lambda$SetupWizardActivity$Myx1Yb0BCuIQoI9wSq2mvKZ4J9o.INSTANCE, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (!HttpUtils.a()) {
            AnalyticsManager.get().a(Constants.REGISTRATION, "Clicked next in social networks: No internet");
            FeedbackManager.get().a(Activities.getString(2131887407));
            return;
        }
        int numConnected = this.f13877d.getNumConnected();
        AnalyticsManager.get().a(Constants.REGISTRATION, "Clicked next in social networks. num connected: ".concat(String.valueOf(numConnected)));
        a(numConnected);
    }

    static /* synthetic */ void f(SetupWizardActivity setupWizardActivity) {
        new ValidateClientTask(new ValidateClientTask.OnResultListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.12
            @Override // com.callapp.contacts.util.servermessage.ValidateClientTask.OnResultListener
            public final void a(JSONClientValidationResponse jSONClientValidationResponse) {
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

    private void g() {
        Intent intent = new Intent(CallAppApplication.get(), SetupWizardProfileActivity.class);
        intent.setFlags(268468224);
        intent.putExtra("CAME_FROM_SETUP_REMINDER_KEY", getIntent().getBooleanExtra("CAME_FROM_SETUP_REMINDER_KEY", false));
        Activities.a(this, intent);
    }

    public static Stage getCurrentSetupStage() {
        int intValue = Prefs.aU.get().intValue();
        Stage[] values = Stage.values();
        int i = intValue;
        if (intValue > values.length - 1) {
            i = values.length - 1;
            Prefs.aU.set(Integer.valueOf(i));
        }
        return values[i];
    }

    public static int getDialogTheme() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMaximumPossibleConnected() {
        int i = !GooglePlayUtils.isGooglePlayServicesAvailable() ? 3 : 4;
        int i2 = i;
        if (CallAppRemoteConfigManager.get().c("onlyNativeSocialLogin")) {
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

    private void h() {
        SimpleProgressDialog.a(this.f13874a);
        this.f13874a = null;
    }

    private void setButtonLayoutType(int i) {
        this.f.setButtonLayoutType(i);
        this.g.setButtonLayoutType(i);
        this.o.setButtonLayoutType(i);
        this.h.setButtonLayoutType(i);
    }

    public static void setCurrentSetupStage(Stage stage) {
        Prefs.aU.set(Integer.valueOf(stage.ordinal()));
    }

    private void setLoginType(String str) {
        this.f.setLoginType(str);
        this.g.setLoginType(str);
        this.o.setLoginType(str);
        this.h.setLoginType(str);
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
        Stage stage = this.e;
        if (stage == null || stage == Stage.WELCOME) {
            return 0;
        }
        return super.getStatusBarColor();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (!SocialNetworksSearchUtil.a(i, i2, intent)) {
            if (!this.m) {
                b();
            }
            if (i == 7453) {
                if (i2 == -1) {
                    h();
                    this.k.a(i);
                    int intExtra = intent.getIntExtra("EXTRA_NETWORK_TYPE", -1);
                    if (intent.getIntExtra("EXTRA_NETWORK_TYPE", -1) != -1) {
                        int i3 = AnonymousClass20.f13905b[AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.fromNumRep(intExtra).ordinal()];
                        if (i3 == 1) {
                            this.f.callOnClick();
                        } else if (i3 == 2) {
                            this.g.callOnClick();
                        } else if (i3 == 3) {
                            this.h.callOnClick();
                        }
                    } else {
                        c();
                        String stringExtra = intent.getStringExtra("RESULT_USER_PHONE_NUMBER");
                        String stringExtra2 = intent.getStringExtra("RESULT_USER_CALLAPP_TOKEN");
                        String stringExtra3 = intent.getStringExtra("RESULT_USER_CALLAPP_TOKEN_TYPE");
                        if (stringExtra3 == null) {
                            return;
                        }
                        if (stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH.name())) {
                            PhoneVerifierManager.get().a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH);
                        } else if (stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP.name())) {
                            PhoneVerifierManager.get().a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP);
                        }
                    }
                } else {
                    h();
                    this.k.a(i);
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        final Stage currentSetupStage = getCurrentSetupStage();
        AnalyticsManager.get().a(Constants.REGISTRATION, "Back pressed stage ".concat(String.valueOf(currentSetupStage)));
        int i = AnonymousClass20.f13904a[currentSetupStage.ordinal()];
        if (i == 1) {
            LoginButton loginButton = this.o;
            if (loginButton != null && loginButton.isEnabled()) {
                this.o.callOnClick();
            }
        } else if (i == 2) {
            if (!HttpUtils.a()) {
                AnalyticsManager.get().a(Constants.REGISTRATION, "back-press in social, No internet");
                PopupManager.get().a(this, new DialogSimpleMessage(Activities.getString(2131887862), Activities.getString(2131886630), Activities.getString(2131888244), Activities.getString(2131888245), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.13
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        AnalyticsManager analyticsManager = AnalyticsManager.get();
                        analyticsManager.a(Constants.REGISTRATION, "Back pressed in setup. Chose to complete." + currentSetupStage);
                    }
                }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup.SetupWizardActivity.14
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity) {
                        AnalyticsManager analyticsManager = AnalyticsManager.get();
                        analyticsManager.a(Constants.REGISTRATION, "Back pressed in setup. Chose to quit." + currentSetupStage);
                        SetupWizardActivity.super.onBackPressed();
                    }
                }));
                return;
            }
            int numConnected = this.f13877d.getNumConnected();
            AnalyticsManager.get().a(Constants.REGISTRATION, "completed social screen using back button");
            a(numConnected);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.e = getCurrentSetupStage();
        this.f13877d = (TextualSocialLoginFragment) getSupportFragmentManager().c(2131364106);
        CallAppRemoteConfigManager.get().setDefaultsIfNeeded(new AnonymousClass1(bundle));
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
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, this.l);
        LoginButton loginButton = this.o;
        if (loginButton != null) {
            loginButton.a();
        }
        SocialLoginButton socialLoginButton = this.f;
        if (socialLoginButton != null) {
            socialLoginButton.a();
        }
        SocialLoginButton socialLoginButton2 = this.g;
        if (socialLoginButton2 != null) {
            socialLoginButton2.a();
        }
        SocialLoginButton socialLoginButton3 = this.h;
        if (socialLoginButton3 != null) {
            socialLoginButton3.a();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        if (this.m) {
            a(intent);
        } else {
            this.n = true;
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        AndroidUtils.a((Activity) this);
        if (AnonymousClass20.f13904a[this.e.ordinal()] != 2) {
            return super.onOptionsItemSelected(menuItem);
        }
        f();
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        MenuItem item = menu.getItem(0);
        if (AnonymousClass20.f13904a[this.e.ordinal()] != 2) {
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
        ViewUtils.a(this, view);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return false;
    }
}
