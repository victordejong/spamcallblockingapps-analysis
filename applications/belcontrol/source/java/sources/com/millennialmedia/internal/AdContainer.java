package com.millennialmedia.internal;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.widget.RelativeLayout;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.ActivityListenerManager;
import com.millennialmedia.internal.utils.ViewUtils;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/AdContainer.class */
public class AdContainer extends RelativeLayout {
    private static final String TAG = AdContainer.class.getSimpleName();
    private ActivityListenerManager.ActivityListener activityListener;

    public AdContainer(Activity activity, ActivityListenerManager.ActivityListener activityListener) {
        super(activity);
        this.activityListener = activityListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.activityListener == null) {
            if (!MMLog.isDebugEnabled()) {
                return;
            }
            MMLog.m4070d(TAG, "AdContainer not listening for activity lifecycle events, skipping activity lifecycle dispatcher registration");
            return;
        }
        int activityHashForView = ViewUtils.getActivityHashForView(this);
        if (activityHashForView == -1) {
            MMLog.m4068e(TAG, "Unable to register activity lifecycle listener for AdContainer, no valid activity hash");
        } else {
            ActivityListenerManager.registerListener(activityHashForView, this.activityListener);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.activityListener == null) {
            return;
        }
        int activityHashForView = ViewUtils.getActivityHashForView(this);
        if (activityHashForView == -1) {
            MMLog.m4068e(TAG, "Unable to unregister activity lifecycle listener for AdContainer, no valid activity hash");
        } else {
            ActivityListenerManager.unregisterListener(activityHashForView, this.activityListener);
        }
    }
}
