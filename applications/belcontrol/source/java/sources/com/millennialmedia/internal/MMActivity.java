package com.millennialmedia.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.TimedMemoryCache;
import com.millennialmedia.internal.utils.Utils;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMActivity.class */
public class MMActivity extends Activity {
    private static final String ACTIVITY_STATE_ID_KEY = "activity_state_id";
    private static final long ON_CREATE_TIMEOUT = 5000;
    private static final String TAG = MMActivity.class.getSimpleName();
    private static TimedMemoryCache<ActivityState> timedMemoryCache = new TimedMemoryCache<>();
    private ActivityState activityState;
    private RelativeLayout rootView;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMActivity$ActivityState.class */
    public static class ActivityState {
        public MMActivityListener activityListener;
        public MMActivityConfig configuration;
        public CountDownLatch onCreateLatch;

        private ActivityState(MMActivityListener mMActivityListener, MMActivityConfig mMActivityConfig) {
            this.onCreateLatch = new CountDownLatch(1);
            this.activityListener = mMActivityListener;
            this.configuration = mMActivityConfig;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMActivity$MMActivityConfig.class */
    public static class MMActivityConfig {
        private Integer enterAnimationId;
        private Integer exitAnimationId;
        private boolean immersive;
        private boolean transparent;
        private int audioSource = -1;
        private int orientation = -1;

        public MMActivityConfig setAudioSource(int i) {
            this.audioSource = i;
            return this;
        }

        public MMActivityConfig setImmersive(boolean z) {
            this.immersive = z;
            return this;
        }

        public MMActivityConfig setOrientation(int i) {
            this.orientation = i;
            return this;
        }

        public MMActivityConfig setTransitionAnimation(Integer num, Integer num2) {
            this.enterAnimationId = num;
            this.exitAnimationId = num2;
            return this;
        }

        public MMActivityConfig setTransparent(boolean z) {
            this.transparent = z;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMActivity$MMActivityListener.class */
    public static abstract class MMActivityListener {
        public boolean onBackPressed() {
            return true;
        }

        public void onCreate(MMActivity mMActivity) {
        }

        public void onDestroy(MMActivity mMActivity) {
        }

        public void onLaunchFailed() {
        }

        public void onPause(MMActivity mMActivity) {
        }

        public void onResume(MMActivity mMActivity) {
        }
    }

    @TargetApi(19)
    public void enableImmersiveMode() {
        View decorView = getWindow().getDecorView();
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "Enabling immersive mode:\ndecorView = " + decorView + "\nActivity = " + this);
        }
        decorView.setSystemUiVisibility(5894);
    }

    public static void launch(Context context, MMActivityConfig mMActivityConfig, MMActivityListener mMActivityListener) {
        if (mMActivityListener == null) {
            MMLog.m4068e(TAG, "Unable to launch MMActivity, provided MMActivityListener instance is null");
            return;
        }
        MMActivityConfig mMActivityConfig2 = mMActivityConfig;
        if (mMActivityConfig == null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "No MMActivity Configuration specified, creating default activity Configuration.");
            }
            mMActivityConfig2 = new MMActivityConfig();
        }
        final ActivityState activityState = new ActivityState(mMActivityListener, mMActivityConfig2);
        String add = timedMemoryCache.add(activityState, Long.valueOf((long) ON_CREATE_TIMEOUT));
        if (add == null) {
            MMLog.m4068e(TAG, "Unable to launch MMActivity, failed to cache activity state");
            mMActivityListener.onLaunchFailed();
            return;
        }
        Intent intent = new Intent(context, MMActivity.class);
        intent.putExtra(ACTIVITY_STATE_ID_KEY, add);
        if (!Utils.isActivityContext(context)) {
            intent.addFlags(268435456);
        }
        if (mMActivityConfig2.enterAnimationId == null && mMActivityConfig2.exitAnimationId == null) {
            context.startActivity(intent);
        } else {
            int i = 0;
            int intValue = mMActivityConfig2.enterAnimationId != null ? mMActivityConfig2.enterAnimationId.intValue() : 0;
            if (mMActivityConfig2.exitAnimationId != null) {
                i = mMActivityConfig2.exitAnimationId.intValue();
            }
            context.startActivity(intent, ActivityOptions.makeCustomAnimation(context, intValue, i).toBundle());
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.MMActivity.1
            @Override // java.lang.Runnable
            public void run() {
                MMActivityListener mMActivityListener2;
                try {
                    if (activityState.onCreateLatch.await(MMActivity.ON_CREATE_TIMEOUT, TimeUnit.MILLISECONDS) || (mMActivityListener2 = activityState.activityListener) == null) {
                        return;
                    }
                    mMActivityListener2.onLaunchFailed();
                } catch (InterruptedException e) {
                }
            }
        });
    }

    private boolean loadActivityState() {
        ActivityState activityState = timedMemoryCache.get(getIntent().getStringExtra(ACTIVITY_STATE_ID_KEY));
        if (activityState == null) {
            return false;
        }
        this.activityState = activityState;
        return true;
    }

    private boolean saveActivityState() {
        Intent intent = getIntent();
        intent.removeExtra(ACTIVITY_STATE_ID_KEY);
        String add = timedMemoryCache.add(this.activityState, null);
        if (add == null) {
            return false;
        }
        intent.putExtra(ACTIVITY_STATE_ID_KEY, add);
        return true;
    }

    @Override // android.app.Activity
    public void finish() {
        MMActivityConfig mMActivityConfig;
        ActivityState activityState = this.activityState;
        if (activityState != null && (mMActivityConfig = activityState.configuration) != null && (mMActivityConfig.enterAnimationId != null || this.activityState.configuration.exitAnimationId != null)) {
            overridePendingTransition(this.activityState.configuration.enterAnimationId.intValue(), this.activityState.configuration.exitAnimationId.intValue());
        }
        super.finish();
    }

    public ViewGroup getRootView() {
        return this.rootView;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        MMActivityListener mMActivityListener = this.activityState.activityListener;
        if (mMActivityListener == null || mMActivityListener.onBackPressed()) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!loadActivityState()) {
            MMLog.m4068e(TAG, "Failed to load activity state, aborting activity launch <" + this + ">");
            finish();
            return;
        }
        int i = 0;
        boolean z = this.activityState.onCreateLatch.getCount() > 0;
        if (z) {
            this.activityState.onCreateLatch.countDown();
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "New activity created with orientation " + EnvironmentUtils.getCurrentConfigOrientationString());
        }
        if (this.activityState.configuration.audioSource != -1) {
            setVolumeControlStream(this.activityState.configuration.audioSource);
        }
        if (Build.VERSION.SDK_INT >= 19 && this.activityState.configuration.immersive) {
            enableImmersiveMode();
            getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.millennialmedia.internal.MMActivity.2
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int i2) {
                    if ((i2 & 4) == 0) {
                        MMActivity.this.enableImmersiveMode();
                    }
                }
            });
        } else if (this.activityState.configuration.immersive) {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        this.rootView = relativeLayout;
        relativeLayout.setTag("mmactivity_root_view");
        if (!this.activityState.configuration.transparent) {
            i = 160;
        }
        ColorDrawable colorDrawable = new ColorDrawable(-16777216);
        colorDrawable.setAlpha(i);
        this.rootView.setBackground(colorDrawable);
        this.rootView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        setContentView(this.rootView);
        MMActivityListener mMActivityListener = this.activityState.activityListener;
        if (mMActivityListener != null) {
            mMActivityListener.onCreate(this);
        }
        if (!z || getRequestedOrientation() == this.activityState.configuration.orientation) {
            return;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "Setting requested orientation on activity:\n\tCurrent requested orientation: " + getRequestedOrientation() + "\n\tDesired requested orientation: " + this.activityState.configuration.orientation);
        }
        setRequestedOrientation(this.activityState.configuration.orientation);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (this.activityState != null) {
            if (!isFinishing() && !saveActivityState()) {
                String str = TAG;
                MMLog.m4068e(str, "Failed to save activity state <" + this + ">");
            }
            MMActivityListener mMActivityListener = this.activityState.activityListener;
            if (mMActivityListener != null) {
                mMActivityListener.onDestroy(this);
                if (isFinishing()) {
                    this.activityState.activityListener = null;
                }
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        MMActivityListener mMActivityListener = this.activityState.activityListener;
        if (mMActivityListener != null) {
            mMActivityListener.onPause(this);
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        MMActivityListener mMActivityListener = this.activityState.activityListener;
        if (mMActivityListener != null) {
            mMActivityListener.onResume(this);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        ActivityState activityState;
        super.onWindowFocusChanged(z);
        if (MMLog.isDebugEnabled()) {
            String str = TAG;
            MMLog.m4070d(str, "onWindowFocusChanged: hasFocus = " + z);
            if (this.activityState != null) {
                MMLog.m4070d(str, "activityState.configuration.immersive = " + this.activityState.configuration.immersive);
            }
        }
        if (Build.VERSION.SDK_INT < 19 || (activityState = this.activityState) == null || !activityState.configuration.immersive || !z) {
            return;
        }
        enableImmersiveMode();
    }

    public void setOrientation(int i) {
        if (i != getRequestedOrientation()) {
            this.activityState.configuration.orientation = i;
            setRequestedOrientation(i);
        }
    }
}
