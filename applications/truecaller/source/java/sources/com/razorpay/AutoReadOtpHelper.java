package com.razorpay;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/razorpay/AutoReadOtpHelper.class */
public class AutoReadOtpHelper extends BroadcastReceiver {
    private Activity activity;
    private String packageName;

    public AutoReadOtpHelper(Activity activity) {
        this.activity = activity;
        this.packageName = activity.getPackageName();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.google.android.gms.auth.api.phone.SMS_RETRIEVED".equals(intent.getAction())) {
            Bundle extras = intent.getExtras();
            Status status = null;
            if (extras != null) {
                status = (Status) extras.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS");
            }
            AnalyticsUtil.trackEvent(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_RECEIVED_SMS);
            if (status == null) {
                return;
            }
            int i = status.f5728b;
            if (i != 0) {
                if (i != 15) {
                    return;
                }
                AnalyticsUtil.trackEvent(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_TIMEOUT);
            } else if (this.activity.getCallingActivity() == null) {
            } else {
                ComponentName callingActivity = this.activity.getCallingActivity();
                Objects.requireNonNull(callingActivity);
                if (!callingActivity.getPackageName().equalsIgnoreCase(this.packageName)) {
                    return;
                }
                try {
                    this.activity.startActivityForResult((Intent) extras.getParcelable("com.google.android.gms.auth.api.phone.EXTRA_CONSENT_INTENT"), 1001);
                    AnalyticsUtil.trackEvent(AnalyticsEvent.AUTO_READ_OTP_SMS_RETRIEVER_API_SHOWED_ONE_TIME_CONSENT);
                } catch (ActivityNotFoundException e) {
                    AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getLocalizedMessage());
                    e.printStackTrace();
                }
            }
        }
    }
}
