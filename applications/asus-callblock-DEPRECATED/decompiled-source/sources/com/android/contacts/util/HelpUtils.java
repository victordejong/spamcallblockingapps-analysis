package com.android.contacts.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.MenuItem;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/HelpUtils.class */
public class HelpUtils {
    private static final String PARAM_LANGUAGE_CODE = "hl";
    private static final String PARAM_VERSION = "version";
    private static final String TAG = HelpUtils.class.getName();
    private static String sCachedVersionCode = null;

    private HelpUtils() {
    }

    public static boolean prepareHelpMenuItem(Context context, MenuItem menuItem, int i) {
        return prepareHelpMenuItem(context, menuItem, context.getResources().getString(i));
    }

    public static boolean prepareHelpMenuItem(Context context, MenuItem menuItem, String str) {
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            menuItem.setVisible(false);
        } else {
            Intent intent = new Intent("android.intent.action.VIEW", uriWithAddedParameters(context, Uri.parse(str)));
            intent.setFlags(276824064);
            menuItem.setIntent(intent);
            menuItem.setShowAsAction(0);
            menuItem.setVisible(true);
            z = true;
        }
        return z;
    }

    private static Uri uriWithAddedParameters(Context context, Uri uri) {
        Uri.Builder buildUpon = uri.buildUpon();
        buildUpon.appendQueryParameter(PARAM_LANGUAGE_CODE, Locale.getDefault().toString());
        if (sCachedVersionCode == null) {
            try {
                sCachedVersionCode = Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
                buildUpon.appendQueryParameter(PARAM_VERSION, sCachedVersionCode);
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf(TAG, "Invalid package name for context", e);
            }
        } else {
            buildUpon.appendQueryParameter(PARAM_VERSION, sCachedVersionCode);
        }
        return buildUpon.build();
    }
}
