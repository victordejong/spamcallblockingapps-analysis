package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.fragment.app.Fragment;
import p081h.p203i.p204a.p224e.p235d.C6790c;
import p081h.p203i.p204a.p224e.p235d.C6799g;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractDialogInterface$OnClickListenerC6989g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/GooglePlayServicesUtil.class */
public final class GooglePlayServicesUtil extends C6799g {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = C6799g.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2) {
        return getErrorDialog(i, activity, i2, null);
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2, DialogInterface.OnCancelListener onCancelListener) {
        int i3 = i;
        if (C6799g.isPlayServicesPossiblyUpdating(activity, i)) {
            i3 = 18;
        }
        return C6790c.m21910a().m21909a(activity, i3, i2, onCancelListener);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return C6799g.getErrorPendingIntent(i, context, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return C6799g.getErrorString(i);
    }

    public static Context getRemoteContext(Context context) {
        return C6799g.getRemoteContext(context);
    }

    public static Resources getRemoteResource(Context context) {
        return C6799g.getRemoteResource(context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return C6799g.isGooglePlayServicesAvailable(context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context, int i) {
        return C6799g.isGooglePlayServicesAvailable(context, i);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return C6799g.isUserRecoverableError(i);
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
        if (C6799g.isPlayServicesPossiblyUpdating(activity, i)) {
            i3 = 18;
        }
        C6790c a = C6790c.m21910a();
        if (fragment == null) {
            return a.m21899b(activity, i3, i2, onCancelListener);
        }
        Dialog a2 = C6790c.m21905a(activity, i3, AbstractDialogInterface$OnClickListenerC6989g.m21369a(fragment, C6790c.m21910a().mo21890a(activity, i3, "d"), i2), onCancelListener);
        if (a2 == null) {
            return false;
        }
        C6790c.m21908a(activity, a2, GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Deprecated
    public static void showErrorNotification(int i, Context context) {
        C6790c a = C6790c.m21910a();
        if (C6799g.isPlayServicesPossiblyUpdating(context, i) || C6799g.isPlayStorePossiblyUpdating(context, i)) {
            a.m21897d(context);
        } else {
            a.m21898c(context, i);
        }
    }
}
