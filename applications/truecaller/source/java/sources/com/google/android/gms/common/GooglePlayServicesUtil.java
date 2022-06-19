package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Objects;
import p193e.p1577m.p1578a.p1642f.p1653e.HandlerC24982d;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24966c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesUtil.class */
public final class GooglePlayServicesUtil extends GooglePlayServicesUtilLight {
    @RecentlyNonNull
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    @RecentlyNonNull
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    @RecentlyNonNull
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    private GooglePlayServicesUtil() {
    }

    @RecentlyNullable
    @Deprecated
    public static Dialog getErrorDialog(int i, @RecentlyNonNull Activity activity, int i2) {
        return getErrorDialog(i, activity, i2, null);
    }

    @RecentlyNullable
    @Deprecated
    public static Dialog getErrorDialog(int i, @RecentlyNonNull Activity activity, int i2, DialogInterface.OnCancelListener onCancelListener) {
        int i3 = i;
        if (true == GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(activity, i)) {
            i3 = 18;
        }
        return GoogleApiAvailability.f5673d.m39072f(activity, i3, i2, onCancelListener);
    }

    @RecentlyNonNull
    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, @RecentlyNonNull Context context, int i2) {
        return GooglePlayServicesUtilLight.getErrorPendingIntent(i, context, i2);
    }

    @RecentlyNonNull
    @VisibleForTesting
    @Deprecated
    public static String getErrorString(int i) {
        return GooglePlayServicesUtilLight.getErrorString(i);
    }

    @RecentlyNonNull
    public static Context getRemoteContext(@RecentlyNonNull Context context) {
        return GooglePlayServicesUtilLight.getRemoteContext(context);
    }

    @RecentlyNonNull
    public static Resources getRemoteResource(@RecentlyNonNull Context context) {
        return GooglePlayServicesUtilLight.getRemoteResource(context);
    }

    @HideFirstParty
    @Deprecated
    public static int isGooglePlayServicesAvailable(@RecentlyNonNull Context context) {
        return GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context);
    }

    @KeepForSdk
    @Deprecated
    public static int isGooglePlayServicesAvailable(@RecentlyNonNull Context context, int i) {
        return GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context, i);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return GooglePlayServicesUtilLight.isUserRecoverableError(i);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, @RecentlyNonNull Activity activity, int i2) {
        return showErrorDialogFragment(i, activity, i2, null);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, @RecentlyNonNull Activity activity, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return showErrorDialogFragment(i, activity, null, i2, onCancelListener);
    }

    public static boolean showErrorDialogFragment(int i, @RecentlyNonNull Activity activity, Fragment fragment, int i2, DialogInterface.OnCancelListener onCancelListener) {
        boolean z = true;
        if (true == GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(activity, i)) {
            i = 18;
        }
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f5673d;
        if (fragment == null) {
            Dialog m39072f = googleApiAvailability.m39072f(activity, i, i2, onCancelListener);
            if (m39072f == null) {
                z = false;
            } else {
                googleApiAvailability.m39067k(activity, m39072f, GMS_ERROR_DIALOG, onCancelListener);
            }
            return z;
        }
        Dialog m39068j = googleApiAvailability.m39068j(activity, i, new C24966c(googleApiAvailability.mo39066a(activity, i, "d"), fragment, i2), onCancelListener);
        if (m39068j == null) {
            return false;
        }
        googleApiAvailability.m39067k(activity, m39068j, GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Deprecated
    public static void showErrorNotification(int i, @RecentlyNonNull Context context) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f5673d;
        if (!GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, i) && !GooglePlayServicesUtilLight.isPlayStorePossiblyUpdating(context, i)) {
            googleApiAvailability.m39070h(context, i, null, googleApiAvailability.m39064c(context, i, 0, "n"));
            return;
        }
        Objects.requireNonNull(googleApiAvailability);
        new HandlerC24982d(googleApiAvailability, context).sendEmptyMessageDelayed(1, 120000L);
    }
}
