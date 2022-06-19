package com.millennialmedia.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.TimedMemoryCache;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMIntentWrapperActivity.class */
public class MMIntentWrapperActivity extends Activity {
    private static final String INTENT_WRAPPER_STATE_KEY = "intent_wrapper_state_id";
    private static final long ON_CREATE_TIMEOUT = 5000;
    private static final String TAG = MMIntentWrapperActivity.class.getSimpleName();
    private static TimedMemoryCache<ActivityState> timedMemoryCache = new TimedMemoryCache<>();
    private ActivityState activityState;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMIntentWrapperActivity$ActivityState.class */
    public static class ActivityState {
        public MMIntentWrapperListener intentWrapperListener;
        public CountDownLatch onCreateLatch;
        public Intent wrappedIntent;

        private ActivityState(MMIntentWrapperListener mMIntentWrapperListener, Intent intent) {
            this.onCreateLatch = new CountDownLatch(1);
            this.intentWrapperListener = mMIntentWrapperListener;
            this.wrappedIntent = intent;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener.class */
    public interface MMIntentWrapperListener {
        void onData(Intent intent);

        void onError(String str);
    }

    public static void launch(Context context, Intent intent, MMIntentWrapperListener mMIntentWrapperListener) {
        if (mMIntentWrapperListener == null) {
            MMLog.m4068e(TAG, "Unable to launch MMIntentWrapperActivity, provided MMIntentWrapperListener instance is null");
            return;
        }
        final ActivityState activityState = new ActivityState(mMIntentWrapperListener, intent);
        String add = timedMemoryCache.add(activityState, null);
        if (add == null) {
            mMIntentWrapperListener.onError("Unable to launch MMIntentWrapperActivity, failed to cache activity state");
            return;
        }
        Intent intent2 = new Intent(context, MMIntentWrapperActivity.class);
        intent2.putExtra(INTENT_WRAPPER_STATE_KEY, add);
        context.startActivity(intent2);
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.MMIntentWrapperActivity.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (activityState.onCreateLatch.await(MMIntentWrapperActivity.ON_CREATE_TIMEOUT, TimeUnit.MILLISECONDS)) {
                        return;
                    }
                    activityState.intentWrapperListener.onError("Failed to start activity");
                } catch (InterruptedException e) {
                }
            }
        });
    }

    private boolean loadActivityState() {
        ActivityState activityState = timedMemoryCache.get(getIntent().getStringExtra(INTENT_WRAPPER_STATE_KEY));
        if (activityState == null) {
            return false;
        }
        this.activityState = activityState;
        return true;
    }

    private boolean saveActivityState() {
        Intent intent = getIntent();
        intent.removeExtra(INTENT_WRAPPER_STATE_KEY);
        String add = timedMemoryCache.add(this.activityState, null);
        if (add == null) {
            return false;
        }
        intent.putExtra(INTENT_WRAPPER_STATE_KEY, add);
        return true;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        MMIntentWrapperListener mMIntentWrapperListener;
        super.onActivityResult(i, i2, intent);
        ActivityState activityState = this.activityState;
        if (activityState != null && (mMIntentWrapperListener = activityState.intentWrapperListener) != null) {
            if (i2 == -1) {
                mMIntentWrapperListener.onData(intent);
            } else {
                mMIntentWrapperListener.onError("Activity failed with result code <" + i2 + ">");
            }
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!loadActivityState()) {
            String str = TAG;
            MMLog.m4068e(str, "Failed to load activity state, aborting activity launch <" + this + ">");
            finish();
        } else if (bundle != null) {
        } else {
            this.activityState.onCreateLatch.countDown();
            Intent intent = this.activityState.wrappedIntent;
            if (intent != null && intent.resolveActivity(getPackageManager()) != null) {
                startActivityForResult(this.activityState.wrappedIntent, 0);
                return;
            }
            MMIntentWrapperListener mMIntentWrapperListener = this.activityState.intentWrapperListener;
            mMIntentWrapperListener.onError("Failed to start activity, aborting activity launch <" + this + ">");
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (!isFinishing() && !saveActivityState()) {
            String str = TAG;
            MMLog.m4068e(str, "Failed to save activity state <" + this + ">");
        }
        super.onDestroy();
    }
}
