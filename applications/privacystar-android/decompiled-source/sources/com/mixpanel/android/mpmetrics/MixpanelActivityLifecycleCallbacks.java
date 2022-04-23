package com.mixpanel.android.mpmetrics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/MixpanelActivityLifecycleCallbacks.class */
public class MixpanelActivityLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
    public static final int CHECK_DELAY = 500;
    private static Double sStartSessionTime;
    private Runnable check;
    private final MPConfig mConfig;
    private final MixpanelAPI mMpInstance;
    private Handler mHandler = new Handler(Looper.getMainLooper());
    private boolean mIsForeground = true;
    private boolean mPaused = true;

    public MixpanelActivityLifecycleCallbacks(MixpanelAPI mixpanelAPI, MPConfig mPConfig) {
        this.mMpInstance = mixpanelAPI;
        this.mConfig = mPConfig;
        if (sStartSessionTime == null) {
            sStartSessionTime = Double.valueOf(System.currentTimeMillis());
        }
    }

    private void trackCampaignOpenedIfNeeded(Intent intent) {
        if (intent != null) {
            try {
                if (intent.hasExtra("mp_campaign_id") && intent.hasExtra("mp_message_id")) {
                    String stringExtra = intent.getStringExtra("mp_campaign_id");
                    String stringExtra2 = intent.getStringExtra("mp_message_id");
                    String stringExtra3 = intent.getStringExtra("mp");
                    try {
                        JSONObject jSONObject = stringExtra3 != null ? new JSONObject(stringExtra3) : new JSONObject();
                        jSONObject.put("campaign_id", Integer.valueOf(stringExtra).intValue());
                        jSONObject.put("message_id", Integer.valueOf(stringExtra2).intValue());
                        jSONObject.put("message_type", "push");
                        this.mMpInstance.track("$app_open", jSONObject);
                    } catch (JSONException e) {
                    }
                    intent.removeExtra("mp_campaign_id");
                    intent.removeExtra("mp_message_id");
                    intent.removeExtra("mp");
                }
            } catch (BadParcelableException e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isInForeground() {
        return this.mIsForeground;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.mPaused = true;
        if (this.check != null) {
            this.mHandler.removeCallbacks(this.check);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16 && this.mConfig.getAutoShowMixpanelUpdates()) {
            this.mMpInstance.getPeople().joinExperimentIfAvailable();
        }
        this.mPaused = false;
        boolean z = this.mIsForeground;
        this.mIsForeground = true;
        if (this.check != null) {
            this.mHandler.removeCallbacks(this.check);
        }
        if (!z) {
            sStartSessionTime = Double.valueOf(System.currentTimeMillis());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        trackCampaignOpenedIfNeeded(activity.getIntent());
        if (Build.VERSION.SDK_INT >= 16 && this.mConfig.getAutoShowMixpanelUpdates()) {
            this.mMpInstance.getPeople().showNotificationIfAvailable(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
