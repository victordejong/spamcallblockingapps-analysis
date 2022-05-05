package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.support.p001v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.model.Configuration;
import com.apptentive.android.sdk.module.engagement.interaction.model.AppStoreRatingInteraction;
import com.apptentive.android.sdk.module.rating.IRatingProvider;
import com.apptentive.android.sdk.module.rating.InsufficientRatingArgumentsException;
import com.apptentive.android.sdk.view.ApptentiveAlertDialog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/AppStoreRatingFragment.class */
public class AppStoreRatingFragment extends ApptentiveBaseFragment<AppStoreRatingInteraction> implements ApptentiveAlertDialog.OnDismissListener {
    private void displayError(Activity activity, String str) {
        try {
            ApptentiveLog.m409e(str, new Object[0]);
            Bundle bundle = new Bundle();
            bundle.putString("title", activity.getString(C0724R.string.apptentive_oops));
            bundle.putString("message", str);
            bundle.putString("positive", activity.getString(C0724R.string.apptentive_ok));
            ApptentiveAlertDialog.show(this, bundle, 0);
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception while displaying an error", new Object[0]);
        }
    }

    public static AppStoreRatingFragment newInstance(Bundle bundle) {
        AppStoreRatingFragment appStoreRatingFragment = new AppStoreRatingFragment();
        appStoreRatingFragment.setArguments(bundle);
        return appStoreRatingFragment;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1) {
            transit();
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        IRatingProvider ratingProvider;
        super.onCreate(bundle);
        FragmentActivity activity = getActivity();
        String string = activity.getResources().getString(C0724R.string.apptentive_rating_error);
        try {
            try {
                ratingProvider = ApptentiveInternal.getInstance().getRatingProvider();
                string = ratingProvider.activityNotFoundMessage(activity);
            } catch (ActivityNotFoundException e) {
            }
            try {
                String appDisplayName = Configuration.load().getAppDisplayName();
                Map<String, String> ratingProviderArgs = ApptentiveInternal.getInstance().getRatingProviderArgs();
                HashMap hashMap = ratingProviderArgs != null ? new HashMap(ratingProviderArgs) : new HashMap();
                if (!hashMap.containsKey("package") && activity != null) {
                    hashMap.put("package", activity.getPackageName());
                }
                if (!hashMap.containsKey("name")) {
                    hashMap.put("name", appDisplayName);
                }
                ratingProvider.startRating(activity, hashMap);
            } catch (ActivityNotFoundException e2) {
                displayError(activity, string);
            }
        } catch (InsufficientRatingArgumentsException e3) {
            ApptentiveLog.m409e(e3.getMessage(), new Object[0]);
            displayError(activity, activity.getString(C0724R.string.apptentive_rating_error));
        } catch (Exception e4) {
            ApptentiveLog.m408e(e4, "Exception in %s.onCreate()", getClass().getSimpleName());
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    @Override // com.apptentive.android.sdk.view.ApptentiveAlertDialog.OnDismissListener
    public void onDismissAlert() {
        transit();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        return false;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, android.support.p001v4.app.Fragment
    public void onPause() {
        super.onPause();
        transit();
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    protected void sendLaunchEvent(Activity activity) {
    }
}
