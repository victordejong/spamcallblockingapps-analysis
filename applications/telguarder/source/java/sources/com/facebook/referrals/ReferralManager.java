package com.facebook.referrals;

import android.app.Activity;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import com.facebook.CallbackManager;
import com.facebook.FacebookActivity;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.Validate;
/* loaded from: classes-dex2jar.jar:com/facebook/referrals/ReferralManager.class */
public class ReferralManager {
    private static volatile ReferralManager instance;
    private ReferralLogger logger;

    /* loaded from: classes-dex2jar.jar:com/facebook/referrals/ReferralManager$ActivityStartActivityDelegate.class */
    private static class ActivityStartActivityDelegate implements StartActivityDelegate {
        private final Activity activity;

        ActivityStartActivityDelegate(Activity activity) {
            Validate.notNull(activity, "activity");
            this.activity = activity;
        }

        @Override // com.facebook.referrals.StartActivityDelegate
        public Activity getActivityContext() {
            return this.activity;
        }

        @Override // com.facebook.referrals.StartActivityDelegate
        public void startActivityForResult(Intent intent, int i) {
            this.activity.startActivityForResult(intent, i);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/referrals/ReferralManager$FragmentStartActivityDelegate.class */
    private static class FragmentStartActivityDelegate implements StartActivityDelegate {
        private final FragmentWrapper fragment;

        FragmentStartActivityDelegate(FragmentWrapper fragmentWrapper) {
            Validate.notNull(fragmentWrapper, "fragment");
            this.fragment = fragmentWrapper;
        }

        @Override // com.facebook.referrals.StartActivityDelegate
        public Activity getActivityContext() {
            return this.fragment.getActivity();
        }

        @Override // com.facebook.referrals.StartActivityDelegate
        public void startActivityForResult(Intent intent, int i) {
            this.fragment.startActivityForResult(intent, i);
        }
    }

    ReferralManager() {
        Validate.sdkInitialized();
    }

    public static ReferralManager getInstance() {
        if (instance == null) {
            synchronized (ReferralManager.class) {
                try {
                    if (instance == null) {
                        instance = new ReferralManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    private ReferralLogger getLogger(Context context) {
        if (context == null) {
            context = FacebookSdk.getApplicationContext();
        }
        if (context == null) {
            return null;
        }
        if (this.logger == null) {
            this.logger = new ReferralLogger(context, FacebookSdk.getApplicationId());
        }
        return this.logger;
    }

    private static boolean resolveIntent(Intent intent) {
        boolean z = false;
        if (FacebookSdk.getApplicationContext().getPackageManager().resolveActivity(intent, 0) != null) {
            z = true;
        }
        return z;
    }

    private void startReferralImpl(StartActivityDelegate startActivityDelegate) {
        ReferralLogger logger = getLogger(startActivityDelegate.getActivityContext());
        if (logger != null) {
            logger.logStartReferral();
        }
        if (!tryFacebookActivity(startActivityDelegate)) {
            FacebookException facebookException = new FacebookException("Failed to open Referral dialog: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
            if (logger != null) {
                logger.logError(facebookException);
            }
            throw facebookException;
        }
    }

    private boolean tryFacebookActivity(StartActivityDelegate startActivityDelegate) {
        Intent intent = new Intent();
        intent.setClass(FacebookSdk.getApplicationContext(), FacebookActivity.class);
        intent.setAction(ReferralFragment.TAG);
        if (!resolveIntent(intent)) {
            return false;
        }
        try {
            startActivityDelegate.startActivityForResult(intent, CallbackManagerImpl.RequestCodeOffset.Referral.toRequestCode());
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean onActivityResult(int r6, android.content.Intent r7, com.facebook.FacebookCallback<com.facebook.referrals.ReferralResult> r8) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.referrals.ReferralManager.onActivityResult(int, android.content.Intent, com.facebook.FacebookCallback):boolean");
    }

    public void registerCallback(CallbackManager callbackManager, final FacebookCallback<ReferralResult> facebookCallback) {
        if (callbackManager instanceof CallbackManagerImpl) {
            ((CallbackManagerImpl) callbackManager).registerCallback(ReferralClient.getReferralRequestCode(), new CallbackManagerImpl.Callback() { // from class: com.facebook.referrals.ReferralManager.1
                @Override // com.facebook.internal.CallbackManagerImpl.Callback
                public boolean onActivityResult(int i, Intent intent) {
                    return ReferralManager.this.onActivityResult(i, intent, facebookCallback);
                }
            });
            return;
        }
        throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }

    public void startReferral(Activity activity) {
        startReferralImpl(new ActivityStartActivityDelegate(activity));
    }

    public void startReferral(Fragment fragment) {
        startReferralImpl(new FragmentStartActivityDelegate(new FragmentWrapper(fragment)));
    }

    public void startReferral(androidx.fragment.app.Fragment fragment) {
        startReferralImpl(new FragmentStartActivityDelegate(new FragmentWrapper(fragment)));
    }

    public void startReferral(FragmentWrapper fragmentWrapper) {
        startReferralImpl(new FragmentStartActivityDelegate(fragmentWrapper));
    }
}
