package com.telguarder.features.userConsentHandling;

import android.content.Context;
import android.content.Intent;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.preferences.PreferencesManager;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/userConsentHandling/UserConsentManager.class */
public class UserConsentManager {
    private static UserConsentManager mInstance;
    private Runnable onPrivacyPolicyConsentApproved;
    private Runnable onPrivacyPolicyConsentCanceled;

    private UserConsentManager() {
    }

    public static UserConsentManager getInstance() {
        UserConsentManager userConsentManager;
        synchronized (UserConsentManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new UserConsentManager();
                }
                userConsentManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return userConsentManager;
    }

    public void askForNumberLookupUserConsent(Context context) {
        askForNumberLookupUserConsentActivity(context);
    }

    public void askForNumberLookupUserConsentActivity(Context context) {
        askForNumberLookupUserConsentActivity(context, null, null);
    }

    public void askForNumberLookupUserConsentActivity(Context context, Runnable runnable, Runnable runnable2) {
        this.onPrivacyPolicyConsentApproved = runnable;
        this.onPrivacyPolicyConsentCanceled = runnable2;
        Intent intent = new Intent().setClass(context, NumberLookupConsentActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public void onNumberLookupConsentDismiss(Context context) {
        AnalyticsManager.getInstance().sendPopupNumberLookupAction(context, null);
        Runnable runnable = this.onPrivacyPolicyConsentCanceled;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void onNumberLookupConsentNo(Context context) {
        AnalyticsManager.getInstance().sendPopupNumberLookupAction(context, false);
        Runnable runnable = this.onPrivacyPolicyConsentCanceled;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void onNumberLookupConsentYes(Context context) {
        AnalyticsManager.getInstance().sendPopupNumberLookupAction(context, true);
        PreferencesManager.getInstance().saveUserConsentForPolicy2018(true);
        Runnable runnable = this.onPrivacyPolicyConsentApproved;
        if (runnable != null) {
            runnable.run();
        }
    }

    public boolean showNumberLookupUserConsentIfNeeded(Context context) {
        if (!PreferencesManager.getInstance().getUserConsentForPolicy2018()) {
            askForNumberLookupUserConsentActivity(context);
            return true;
        }
        return false;
    }
}
