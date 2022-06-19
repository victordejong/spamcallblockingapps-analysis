package com.telguarder.features.userConsentHandling;

import android.app.Activity;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;
import com.telguarder.helpers.analytics.AnalyticsManager;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/userConsentHandling/TcfConsentManager.class */
public class TcfConsentManager {
    private static TcfConsentManager mInstance;
    private ConsentInformation consentInformation;
    private ConsentForm mConsentForm;

    private TcfConsentManager() {
    }

    public static TcfConsentManager getInstance() {
        TcfConsentManager tcfConsentManager;
        synchronized (TcfConsentManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new TcfConsentManager();
                }
                tcfConsentManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return tcfConsentManager;
    }

    public static /* synthetic */ void lambda$loadConsentForm$4(Runnable runnable, FormError formError) {
        AnalyticsManager.getInstance().sendTcfConsentLoadFormError();
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void lambda$requestConsent$1(Runnable runnable, FormError formError) {
        AnalyticsManager.getInstance().sendTcfConsentInfoReqError();
        if (runnable != null) {
            runnable.run();
        }
    }

    private void loadConsentForm(final Activity activity, final Runnable runnable) {
        try {
            UserMessagingPlatform.loadConsentForm(activity, new UserMessagingPlatform.OnConsentFormLoadSuccessListener() { // from class: com.telguarder.features.userConsentHandling._$$Lambda$TcfConsentManager$IOxxJtguqnOWpsZIlatBiLIWQ8o
                @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadSuccessListener
                public final void onConsentFormLoadSuccess(ConsentForm consentForm) {
                    TcfConsentManager.this.lambda$loadConsentForm$3$TcfConsentManager(activity, runnable, consentForm);
                }
            }, new UserMessagingPlatform.OnConsentFormLoadFailureListener() { // from class: com.telguarder.features.userConsentHandling._$$Lambda$TcfConsentManager$MKfG5xUBLFDzsDzfJEHlmioWLCo
                @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadFailureListener
                public final void onConsentFormLoadFailure(FormError formError) {
                    TcfConsentManager.lambda$loadConsentForm$4(runnable, formError);
                }
            });
        } catch (Exception e) {
            AnalyticsManager.getInstance().sendTcfConsentLoadFormException();
            if (runnable == null) {
                return;
            }
            runnable.run();
        }
    }

    private String statusString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? String.valueOf(i) : "OBTAINED" : "REQUIRED" : "NOT_REQUIRED" : "UNKNOWN";
    }

    public /* synthetic */ void lambda$loadConsentForm$3$TcfConsentManager(final Activity activity, final Runnable runnable, ConsentForm consentForm) {
        this.mConsentForm = consentForm;
        AnalyticsManager.getInstance().sendTcfConsentStatus(statusString(this.consentInformation.getConsentStatus()));
        if (this.consentInformation.getConsentStatus() == 2) {
            consentForm.show(activity, new ConsentForm.OnConsentFormDismissedListener() { // from class: com.telguarder.features.userConsentHandling._$$Lambda$TcfConsentManager$pYlnhnk6k5UI_yhEA09y6aW4EgA
                @Override // com.google.android.ump.ConsentForm.OnConsentFormDismissedListener
                public final void onConsentFormDismissed(FormError formError) {
                    TcfConsentManager.this.lambda$null$2$TcfConsentManager(activity, runnable, formError);
                }
            });
        } else if (runnable == null) {
        } else {
            runnable.run();
        }
    }

    public /* synthetic */ void lambda$null$2$TcfConsentManager(Activity activity, Runnable runnable, FormError formError) {
        loadConsentForm(activity, runnable);
    }

    public /* synthetic */ void lambda$requestConsent$0$TcfConsentManager(Activity activity, Runnable runnable) {
        if (this.consentInformation.isConsentFormAvailable()) {
            AnalyticsManager.getInstance().sendTcfConsentAvailable();
            loadConsentForm(activity, runnable);
            return;
        }
        AnalyticsManager.getInstance().sendTcfConsentNotAvailable();
        if (runnable == null) {
            return;
        }
        runnable.run();
    }

    public void requestConsent(final Activity activity, final Runnable runnable) {
        try {
            ConsentRequestParameters build = new ConsentRequestParameters.Builder().build();
            ConsentInformation consentInformation = UserMessagingPlatform.getConsentInformation(activity);
            this.consentInformation = consentInformation;
            consentInformation.requestConsentInfoUpdate(activity, build, new ConsentInformation.OnConsentInfoUpdateSuccessListener() { // from class: com.telguarder.features.userConsentHandling._$$Lambda$TcfConsentManager$SVY3lj5hraVy4_dnDYaZSNtvDsE
                @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateSuccessListener
                public final void onConsentInfoUpdateSuccess() {
                    TcfConsentManager.this.lambda$requestConsent$0$TcfConsentManager(activity, runnable);
                }
            }, new ConsentInformation.OnConsentInfoUpdateFailureListener() { // from class: com.telguarder.features.userConsentHandling._$$Lambda$TcfConsentManager$d2op1fhep3ndptjTXmu2TYDFto0
                @Override // com.google.android.ump.ConsentInformation.OnConsentInfoUpdateFailureListener
                public final void onConsentInfoUpdateFailure(FormError formError) {
                    TcfConsentManager.lambda$requestConsent$1(runnable, formError);
                }
            });
        } catch (Exception e) {
            AnalyticsManager.getInstance().sendTcfConsentInfoReqException();
            if (runnable == null) {
                return;
            }
            runnable.run();
        }
    }
}
