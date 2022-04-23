package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.internal.ac;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesUtil.class */
public final class GooglePlayServicesUtil extends d {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = d.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    private GooglePlayServicesUtil() {
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2) {
        return getErrorDialog(i, activity, i2, null);
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2, DialogInterface.OnCancelListener onCancelListener) {
        int i3 = i;
        if (true == d.isPlayServicesPossiblyUpdating(activity, i)) {
            i3 = 18;
        }
        return b.a().a(activity, i3, i2, onCancelListener);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return d.getErrorPendingIntent(i, context, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return d.getErrorString(i);
    }

    public static Context getRemoteContext(Context context) {
        return d.getRemoteContext(context);
    }

    public static Resources getRemoteResource(Context context) {
        return d.getRemoteResource(context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return d.isGooglePlayServicesAvailable(context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context, int i) {
        return d.isGooglePlayServicesAvailable(context, i);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return d.isUserRecoverableError(i);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2) {
        return showErrorDialogFragment(i, activity, i2, null);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return showErrorDialogFragment(i, activity, null, i2, onCancelListener);
    }

    public static boolean showErrorDialogFragment(int i, Activity activity, Fragment fragment, int i2, DialogInterface.OnCancelListener onCancelListener) {
        int i3 = i;
        if (true == d.isPlayServicesPossiblyUpdating(activity, i)) {
            i3 = 18;
        }
        b a2 = b.a();
        if (fragment == null) {
            return a2.b(activity, i3, i2, onCancelListener);
        }
        Dialog a3 = b.a(activity, i3, ac.a(fragment, b.a().a(activity, i3, "d"), i2), onCancelListener);
        if (a3 == null) {
            return false;
        }
        b.a(activity, a3, GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Deprecated
    public static void showErrorNotification(int i, Context context) {
        b a2 = b.a();
        if (d.isPlayServicesPossiblyUpdating(context, i) || d.isPlayStorePossiblyUpdating(context, i)) {
            a2.b(context);
        } else {
            a2.a(context, i);
        }
    }
}
