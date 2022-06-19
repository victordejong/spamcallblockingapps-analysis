package com.crashlytics.android.answers;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.AbstractC1462k;
import io.fabric.sdk.android.C1449c;
import io.fabric.sdk.android.services.p068b.AbstractC1483j;
import io.fabric.sdk.android.services.p068b.C1480i;
import io.fabric.sdk.android.services.p068b.C1493o;
import io.fabric.sdk.android.services.p072e.C1567q;
import io.fabric.sdk.android.services.p072e.C1572t;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/Answers.class */
public class Answers extends AbstractC1459h<Boolean> {
    static final String CRASHLYTICS_API_ENDPOINT = "com.crashlytics.ApiEndpoint";
    public static final String TAG = "Answers";
    SessionAnalyticsManager analyticsManager;
    boolean firebaseEnabled = false;

    public static Answers getInstance() {
        return (Answers) C1449c.m3587a(Answers.class);
    }

    private void logFirebaseModeEnabledWarning(String str) {
        AbstractC1462k m3572g = C1449c.m3572g();
        m3572g.mo3548d(TAG, "Method " + str + " is not supported when using Crashlytics through Firebase.");
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public Boolean doInBackground() {
        try {
            C1572t m3304b = C1567q.m3307a().m3304b();
            if (m3304b == null) {
                C1449c.m3572g().mo3546e(TAG, "Failed to retrieve settings");
                return false;
            } else if (m3304b.f4283d.f4251d) {
                C1449c.m3572g().mo3552a(TAG, "Analytics collection enabled");
                this.analyticsManager.setAnalyticsSettingsData(m3304b.f4284e, getOverridenSpiEndpoint());
                return true;
            } else {
                C1449c.m3572g().mo3552a(TAG, "Analytics collection disabled");
                this.analyticsManager.disable();
                return false;
            }
        } catch (Exception e) {
            C1449c.m3572g().mo3545e(TAG, "Error dealing with settings", e);
            return false;
        }
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public String getIdentifier() {
        return "com.crashlytics.sdk.android:answers";
    }

    String getOverridenSpiEndpoint() {
        return C1480i.m3481b(getContext(), CRASHLYTICS_API_ENDPOINT);
    }

    @Override // io.fabric.sdk.android.AbstractC1459h
    public String getVersion() {
        return "1.4.2.25";
    }

    public void logAddToCart(AddToCartEvent addToCartEvent) {
        if (addToCartEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logAddToCart");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(addToCartEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logContentView(ContentViewEvent contentViewEvent) {
        if (contentViewEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logContentView");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(contentViewEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logCustom(CustomEvent customEvent) {
        if (customEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logCustom");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onCustom(customEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logInvite(InviteEvent inviteEvent) {
        if (inviteEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logInvite");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(inviteEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logLevelEnd(LevelEndEvent levelEndEvent) {
        if (levelEndEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logLevelEnd");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(levelEndEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logLevelStart(LevelStartEvent levelStartEvent) {
        if (levelStartEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logLevelStart");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(levelStartEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logLogin(LoginEvent loginEvent) {
        if (loginEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logLogin");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(loginEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logPurchase(PurchaseEvent purchaseEvent) {
        if (purchaseEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logPurchase");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(purchaseEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logRating(RatingEvent ratingEvent) {
        if (ratingEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logRating");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(ratingEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logSearch(SearchEvent searchEvent) {
        if (searchEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logSearch");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(searchEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logShare(ShareEvent shareEvent) {
        if (shareEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logShare");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(shareEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logSignUp(SignUpEvent signUpEvent) {
        if (signUpEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logSignUp");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(signUpEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void logStartCheckout(StartCheckoutEvent startCheckoutEvent) {
        if (startCheckoutEvent != null) {
            if (this.firebaseEnabled) {
                logFirebaseModeEnabledWarning("logStartCheckout");
                return;
            }
            SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
            if (sessionAnalyticsManager == null) {
                return;
            }
            sessionAnalyticsManager.onPredefined(startCheckoutEvent);
            return;
        }
        throw new NullPointerException("event must not be null");
    }

    public void onException(AbstractC1483j.C1484a c1484a) {
        SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
        if (sessionAnalyticsManager != null) {
            sessionAnalyticsManager.onCrash(c1484a.m3460a(), c1484a.m3459b());
        }
    }

    public void onException(AbstractC1483j.C1485b c1485b) {
        SessionAnalyticsManager sessionAnalyticsManager = this.analyticsManager;
        if (sessionAnalyticsManager != null) {
            sessionAnalyticsManager.onError(c1485b.m3460a());
        }
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    @Override // io.fabric.sdk.android.AbstractC1459h
    public boolean onPreExecute() {
        try {
            Context context = getContext();
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            this.analyticsManager = SessionAnalyticsManager.build(this, context, getIdManager(), Integer.toString(packageInfo.versionCode), packageInfo.versionName == null ? "0.0" : packageInfo.versionName, Build.VERSION.SDK_INT >= 9 ? packageInfo.firstInstallTime : new File(packageManager.getApplicationInfo(packageName, 0).sourceDir).lastModified());
            this.analyticsManager.enable();
            this.firebaseEnabled = new C1493o().m3449b(context);
            return true;
        } catch (Exception e) {
            C1449c.m3572g().mo3545e(TAG, "Error retrieving app properties", e);
            return false;
        }
    }
}
