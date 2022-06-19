package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.internal.AbstractDialogInterface$OnClickListenerC11977ac;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesUtil.class */
public final class GooglePlayServicesUtil extends C11943d {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE;
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
        if (true == C11943d.isPlayServicesPossiblyUpdating(activity, i)) {
            i3 = 18;
        }
        return C11937b.m19287a().m19286a(activity, i3, i2, onCancelListener);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return C11943d.getErrorPendingIntent(i, context, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return C11943d.getErrorString(i);
    }

    public static Context getRemoteContext(Context context) {
        return C11943d.getRemoteContext(context);
    }

    public static Resources getRemoteResource(Context context) {
        return C11943d.getRemoteResource(context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return C11943d.isGooglePlayServicesAvailable(context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context, int i) {
        return C11943d.isGooglePlayServicesAvailable(context, i);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return C11943d.isUserRecoverableError(i);
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
        if (true == C11943d.isPlayServicesPossiblyUpdating(activity, i)) {
            i3 = 18;
        }
        C11937b m19287a = C11937b.m19287a();
        if (fragment == null) {
            return m19287a.m19280b(activity, i3, i2, onCancelListener);
        }
        Dialog m19282a = C11937b.m19282a(activity, i3, AbstractDialogInterface$OnClickListenerC11977ac.m19226a(fragment, C11937b.m19287a().mo19272a(activity, i3, "d"), i2), onCancelListener);
        if (m19282a == null) {
            return false;
        }
        C11937b.m19285a(activity, m19282a, GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Deprecated
    public static void showErrorNotification(int i, Context context) {
        C11937b m19287a = C11937b.m19287a();
        if (C11943d.isPlayServicesPossiblyUpdating(context, i) || C11943d.isPlayStorePossiblyUpdating(context, i)) {
            m19287a.m19279b(context);
        } else {
            m19287a.m19284a(context, i);
        }
    }
}
