package com.facebook;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.facebook.common.C0948R;
import com.facebook.core.internal.logging.dumpsys.EndToEndDumpsysHelper;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.LoginFragment;
import com.facebook.referrals.ReferralFragment;
import com.facebook.share.internal.DeviceShareDialogFragment;
import com.facebook.share.model.ShareContent;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookActivity.class */
public class FacebookActivity extends FragmentActivity {
    private static String FRAGMENT_TAG = "SingleFragment";
    public static String PASS_THROUGH_CANCEL_ACTION = "PassThrough";
    private static final String TAG = "com.facebook.FacebookActivity";
    private Fragment singleFragment;

    private void handlePassThroughError() {
        setResult(0, NativeProtocol.createProtocolResultIntent(getIntent(), null, NativeProtocol.getExceptionFromErrorData(NativeProtocol.getMethodArgumentsFromIntent(getIntent()))));
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (EndToEndDumpsysHelper.maybeDump(str, printWriter, strArr)) {
                return;
            }
            super.dump(str, fileDescriptor, printWriter, strArr);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public Fragment getCurrentFragment() {
        return this.singleFragment;
    }

    protected Fragment getFragment() {
        Intent intent = getIntent();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(FRAGMENT_TAG);
        FacebookDialogFragment facebookDialogFragment = findFragmentByTag;
        if (findFragmentByTag == null) {
            if (FacebookDialogFragment.TAG.equals(intent.getAction())) {
                FacebookDialogFragment facebookDialogFragment2 = new FacebookDialogFragment();
                facebookDialogFragment2.setRetainInstance(true);
                facebookDialogFragment2.show(supportFragmentManager, FRAGMENT_TAG);
                facebookDialogFragment = facebookDialogFragment2;
            } else if (DeviceShareDialogFragment.TAG.equals(intent.getAction())) {
                DeviceShareDialogFragment deviceShareDialogFragment = new DeviceShareDialogFragment();
                deviceShareDialogFragment.setRetainInstance(true);
                deviceShareDialogFragment.setShareContent((ShareContent) intent.getParcelableExtra(FirebaseAnalytics.Param.CONTENT));
                deviceShareDialogFragment.show(supportFragmentManager, FRAGMENT_TAG);
                facebookDialogFragment = deviceShareDialogFragment;
            } else if (ReferralFragment.TAG.equals(intent.getAction())) {
                ReferralFragment referralFragment = new ReferralFragment();
                referralFragment.setRetainInstance(true);
                supportFragmentManager.beginTransaction().add(C0948R.C0951id.com_facebook_fragment_container, referralFragment, FRAGMENT_TAG).commit();
                facebookDialogFragment = referralFragment;
            } else {
                LoginFragment loginFragment = new LoginFragment();
                loginFragment.setRetainInstance(true);
                supportFragmentManager.beginTransaction().add(C0948R.C0951id.com_facebook_fragment_container, loginFragment, FRAGMENT_TAG).commit();
                facebookDialogFragment = loginFragment;
            }
        }
        return facebookDialogFragment;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Fragment fragment = this.singleFragment;
        if (fragment != null) {
            fragment.onConfigurationChanged(configuration);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!FacebookSdk.isInitialized()) {
            Utility.logd(TAG, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application's onCreate method.");
            FacebookSdk.sdkInitialize(getApplicationContext());
        }
        setContentView(C0948R.layout.com_facebook_activity_layout);
        if (PASS_THROUGH_CANCEL_ACTION.equals(intent.getAction())) {
            handlePassThroughError();
        } else {
            this.singleFragment = getFragment();
        }
    }
}
