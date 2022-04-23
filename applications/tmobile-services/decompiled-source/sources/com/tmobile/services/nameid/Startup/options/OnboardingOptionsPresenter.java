package com.tmobile.services.nameid.Startup.options;

import android.content.Context;
import androidx.annotation.NonNull;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.Constants;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.NotificationUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/options/OnboardingOptionsPresenter.class */
public class OnboardingOptionsPresenter {
    @NonNull

    /* renamed from: a */
    private OnboardingOptionsActivity f13023a;

    public OnboardingOptionsPresenter(OnboardingOptionsActivity onboardingOptionsActivity) {
        this.f13023a = onboardingOptionsActivity;
    }

    /* renamed from: a */
    public void m7174a() {
        this.f13023a.m7176w();
    }

    /* renamed from: b */
    public void m7173b() {
        m7172c(false);
        this.f13023a.m7186m();
    }

    /* renamed from: c */
    public void m7172c(boolean z) {
        LogUtil.m5632o("OnboardingOptionsPresentersetTrialPreference", "trial set to " + z);
        PreferenceUtils.m5386k("PREF_TRIAL_STARTED_FROM_OOBE", z);
    }

    /* renamed from: d */
    public boolean m7171d(@Nullable TmoUserStatus tmoUserStatus) {
        boolean z = true;
        if (tmoUserStatus != null) {
            LogUtil.m5643d("OnboardingOptionsPresentershouldShowTrial", "TmoUserStatus subscription status: " + TmoUserStatus.SubscriptionStatus.fromStatusText(tmoUserStatus.getStatusText()));
            z = tmoUserStatus.getStatusText() != null && tmoUserStatus.getStatusText().equalsIgnoreCase("user_not_exist") && tmoUserStatus.isEligible() && !SubscriptionHelper.m5321g(tmoUserStatus);
        }
        return z;
    }

    /* renamed from: e */
    public void m7170e() {
        if (PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false)) {
            PreferenceUtils.m5385l("PREF_TRIAL_OPT_IN_STATUS", Constants.TrialStatus.FAIL.getValue());
            LogUtil.m5632o("OnboardingOptionsPresenter", "Trial failed, showing dialog when onboarding completes");
            this.f13023a.m7186m();
            return;
        }
        Context l = MainApplication.m7528l();
        if (l != null) {
            LogUtil.m5632o("OnboardingOptionsPresenter", "Trial failed and app is backgrounded, showing notification");
            String string = l.getString(C1517R.string.subscribe_nameid_fail_subtitle);
            NotificationUtil.m5436u(l, l.getString(C1517R.string.account_trial_check_fail_notification), string, string, "ONBOARDING_KEY");
        }
    }
}
