package com.tmobile.services.nameid.Startup;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tmobile.services.nameid.Startup.options.OnboardingOptionsActivity;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/FlowController.class */
public class FlowController {

    /* renamed from: a */
    private final Context f12972a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.Startup.FlowController$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/FlowController$1.class */
    public static /* synthetic */ class C15811 {

        /* renamed from: a */
        static final /* synthetic */ int[] f12973a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[Screen.values().length];
            f12973a = iArr;
            try {
                iArr[Screen.EULA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12973a[Screen.CM_UPGRADE_FETCH_USER_STATUS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12973a[Screen.ONBOARDING_FEATURES.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f12973a[Screen.ONBOARDING_OPTIONS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f12973a[Screen.AUTHENTICATION_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/FlowController$Screen.class */
    public enum Screen {
        EULA,
        CM_UPGRADE_FETCH_USER_STATUS,
        ONBOARDING_FEATURES,
        ONBOARDING_OPTIONS,
        AUTHENTICATION_ERROR,
        NONE
    }

    public FlowController(Context context) {
        this.f12972a = context;
    }

    /* renamed from: a */
    public Screen m7227a() {
        boolean b = PreferenceUtils.m5395b("PREF_IAM_ERROR_ON_STARTUP", false);
        boolean b2 = PreferenceUtils.m5395b("PREF_PREPAID_USER_AUTH_ERROR", false);
        boolean b3 = PreferenceUtils.m5395b("pref_first_use", true);
        boolean b4 = PreferenceUtils.m5395b("PREF_HAS_FETCHED_NEW_USER_STATUS", false);
        boolean b5 = PreferenceUtils.m5395b("pref_shown_onboarding_features", false);
        boolean b6 = PreferenceUtils.m5395b("pref_shown_onboarding_options", false);
        LogUtil.m5643d("FlowController#", "iamError? " + b + " prepaidUserAuthError? " + b2 + " firstUse? " + b3 + " hasFetchedNewUserStatus? " + b4 + " shownFeatures? " + b5 + " shownOptions? " + b6);
        return m7226b(b3, b4, b5, b6, b || b2);
    }

    /* renamed from: b */
    Screen m7226b(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return z5 ? Screen.AUTHENTICATION_ERROR : z ? Screen.EULA : !z2 ? Screen.CM_UPGRADE_FETCH_USER_STATUS : !z3 ? Screen.ONBOARDING_FEATURES : !z4 ? Screen.ONBOARDING_OPTIONS : Screen.NONE;
    }

    /* renamed from: c */
    public Class<? extends Activity> m7225c() {
        return m7224d(m7227a());
    }

    /* renamed from: d */
    Class<? extends Activity> m7224d(Screen screen) {
        int i = C15811.f12973a[screen.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? IdentifyingNumbersActivity.class : AuthenticationFailActivity.class : OnboardingOptionsActivity.class : OnboardingFeaturesActivity.class : ScamShieldUpgradeActivity.class : EULAPageActivity.class;
    }

    /* renamed from: e */
    public void m7223e() {
        Screen a = m7227a();
        PreferenceUtils.m5386k("pref_onboarding_options_was_last", false);
        LogUtil.m5632o("FlowController#goToNextStartupScreen", "New startup screen requested, going to " + a.name());
        this.f12972a.startActivity(new Intent(this.f12972a, m7224d(a)));
    }

    /* renamed from: f */
    public boolean m7222f() {
        return m7227a() != Screen.NONE;
    }
}
