package com.facebook.appevents.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.facebook.FacebookSdk;
import com.facebook.bolts.AppLinks;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/internal/SourceApplicationInfo.class */
public class SourceApplicationInfo {
    private static final String CALL_APPLICATION_PACKAGE_KEY = "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage";
    private static final String OPENED_BY_APP_LINK_KEY = "com.facebook.appevents.SourceApplicationInfo.openedByApplink";
    private static final String SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT = "_fbSourceApplicationHasBeenSet";
    private String callingApplicationPackage;
    private boolean openedByAppLink;

    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/internal/SourceApplicationInfo$Factory.class */
    public static class Factory {
        public static SourceApplicationInfo create(Activity activity) {
            String str;
            ComponentName callingActivity = activity.getCallingActivity();
            if (callingActivity != null) {
                String packageName = callingActivity.getPackageName();
                str = packageName;
                if (packageName.equals(activity.getPackageName())) {
                    return null;
                }
            } else {
                str = "";
            }
            Intent intent = activity.getIntent();
            String str2 = str;
            boolean z = false;
            if (intent != null) {
                str2 = str;
                z = false;
                if (!intent.getBooleanExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, false)) {
                    intent.putExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, true);
                    Bundle appLinkData = AppLinks.getAppLinkData(intent);
                    str2 = str;
                    z = false;
                    if (appLinkData != null) {
                        Bundle bundle = appLinkData.getBundle("referer_app_link");
                        if (bundle != null) {
                            str = bundle.getString("package");
                        }
                        z = true;
                        str2 = str;
                    }
                }
            }
            if (intent != null) {
                intent.putExtra(SourceApplicationInfo.SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT, true);
            }
            return new SourceApplicationInfo(str2, z);
        }
    }

    private SourceApplicationInfo(String str, boolean z) {
        this.callingApplicationPackage = str;
        this.openedByAppLink = z;
    }

    public static void clearSavedSourceApplicationInfoFromDisk() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).edit();
        edit.remove(CALL_APPLICATION_PACKAGE_KEY);
        edit.remove(OPENED_BY_APP_LINK_KEY);
        edit.apply();
    }

    public static SourceApplicationInfo getStoredSourceApplicatioInfo() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext());
        if (!defaultSharedPreferences.contains(CALL_APPLICATION_PACKAGE_KEY)) {
            return null;
        }
        return new SourceApplicationInfo(defaultSharedPreferences.getString(CALL_APPLICATION_PACKAGE_KEY, null), defaultSharedPreferences.getBoolean(OPENED_BY_APP_LINK_KEY, false));
    }

    public String getCallingApplicationPackage() {
        return this.callingApplicationPackage;
    }

    public boolean isOpenedByAppLink() {
        return this.openedByAppLink;
    }

    public String toString() {
        String str = this.openedByAppLink ? "Applink" : "Unclassified";
        String str2 = str;
        if (this.callingApplicationPackage != null) {
            str2 = str + "(" + this.callingApplicationPackage + ")";
        }
        return str2;
    }

    public void writeSourceApplicationInfoToDisk() {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.getApplicationContext()).edit();
        edit.putString(CALL_APPLICATION_PACKAGE_KEY, this.callingApplicationPackage);
        edit.putBoolean(OPENED_BY_APP_LINK_KEY, this.openedByAppLink);
        edit.apply();
    }
}
