package com.facebook.referrals;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookSdk;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CustomTab;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.CustomTabPrefetchHelper;
/* loaded from: classes-dex2jar.jar:com/facebook/referrals/ReferralClient.class */
class ReferralClient {
    private static final int CHALLENGE_LENGTH = 20;
    private static final int CUSTOM_TAB_REQUEST_CODE = 1;
    static final String ERROR_MESSAGE_KEY = "error_message";
    static final String REFERRAL_CODES_KEY = "fb_referral_codes";
    private static final String REFERRAL_DIALOG = "share_referral";
    private String currentPackage;
    protected String expectedChallenge;
    private Fragment fragment;

    public ReferralClient(Fragment fragment) {
        this.fragment = fragment;
    }

    private void finishReferral(int i, Intent intent) {
        FragmentActivity activity;
        if (!this.fragment.isAdded() || (activity = this.fragment.getActivity()) == null) {
            return;
        }
        activity.setResult(i, intent);
        activity.finish();
    }

    private String getChromePackage() {
        if (this.currentPackage == null) {
            this.currentPackage = CustomTabUtils.getChromePackage();
        }
        return this.currentPackage;
    }

    static String getDeveloperDefinedRedirectUrl() {
        return "fb" + FacebookSdk.getApplicationId() + "://authorize";
    }

    private Bundle getParameters() {
        Bundle bundle = new Bundle();
        this.expectedChallenge = Utility.generateRandomString(20);
        bundle.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, CustomTabUtils.getValidRedirectURI(getDeveloperDefinedRedirectUrl()));
        bundle.putString("app_id", FacebookSdk.getApplicationId());
        bundle.putString("state", this.expectedChallenge);
        return bundle;
    }

    public static int getReferralRequestCode() {
        return CallbackManagerImpl.RequestCodeOffset.Referral.toRequestCode();
    }

    private boolean isCustomTabsAllowed() {
        return getChromePackage() != null;
    }

    private boolean tryStartReferral() {
        if (this.fragment.getActivity() == null || this.fragment.getActivity().checkCallingOrSelfPermission("android.permission.INTERNET") != 0 || !isCustomTabsAllowed()) {
            return false;
        }
        Bundle parameters = getParameters();
        if (FacebookSdk.hasCustomTabsPrefetching) {
            CustomTabPrefetchHelper.mayLaunchUrl(CustomTab.getURIForAction(REFERRAL_DIALOG, parameters));
        }
        Intent intent = new Intent(this.fragment.getActivity(), CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.EXTRA_ACTION, REFERRAL_DIALOG);
        intent.putExtra(CustomTabMainActivity.EXTRA_PARAMS, parameters);
        intent.putExtra(CustomTabMainActivity.EXTRA_CHROME_PACKAGE, getChromePackage());
        this.fragment.startActivityForResult(intent, 1);
        return true;
    }

    private boolean validateChallenge(Bundle bundle) {
        boolean z;
        if (this.expectedChallenge != null) {
            z = this.expectedChallenge.equals(bundle.getString("state"));
            this.expectedChallenge = null;
        } else {
            z = true;
        }
        return z;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i != 1) {
            return;
        }
        int i3 = i2;
        if (intent != null) {
            String stringExtra = intent.getStringExtra(CustomTabMainActivity.EXTRA_URL);
            i3 = i2;
            if (stringExtra != null) {
                i3 = i2;
                if (stringExtra.startsWith(CustomTabUtils.getValidRedirectURI(getDeveloperDefinedRedirectUrl()))) {
                    Bundle parseUrlQueryString = Utility.parseUrlQueryString(Uri.parse(stringExtra).getQuery());
                    if (validateChallenge(parseUrlQueryString)) {
                        intent.putExtras(parseUrlQueryString);
                        i3 = i2;
                    } else {
                        i3 = 0;
                        intent.putExtra("error_message", "The referral response was missing a valid challenge string.");
                    }
                }
            }
        }
        finishReferral(i3, intent);
    }

    public void startReferral() {
        if (!tryStartReferral()) {
            Intent intent = new Intent();
            intent.putExtra("error_message", "Failed to open Referral dialog: Chrome custom tab could not be started. Please make sure internet permission is granted and Chrome is installed");
            finishReferral(0, intent);
        }
    }
}
