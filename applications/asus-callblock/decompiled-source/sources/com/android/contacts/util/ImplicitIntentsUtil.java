package com.android.contacts.util;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.text.TextUtils;
import android.widget.Toast;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/ImplicitIntentsUtil.class */
public class ImplicitIntentsUtil {
    private static Intent getIntentInAppIfExists(Context context, Intent intent) {
        Intent intent2;
        try {
            String str = intent.getPackage();
            Intent intent3 = new Intent(intent);
            if (TextUtils.isEmpty(str)) {
                intent3.setPackage(context.getPackageName());
            }
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent3, 65536);
            if (queryIntentActivities == null || queryIntentActivities.size() == 0) {
                intent2 = null;
            } else {
                if (queryIntentActivities.get(0).activityInfo != null && !TextUtils.isEmpty(queryIntentActivities.get(0).activityInfo.name)) {
                    intent3.setClassName(intent3.getPackage(), queryIntentActivities.get(0).activityInfo.name);
                }
                intent2 = intent3;
            }
        } catch (Exception e) {
            intent2 = null;
        }
        return intent2;
    }

    public static void startActivityInApp(Context context, Intent intent) {
        intent.setPackage(context.getPackageName());
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            Toast.makeText(context, 2131755026, 0).show();
        }
    }

    public static void startActivityInAppIfPossible(Context context, Intent intent) {
        Intent intentInAppIfExists = getIntentInAppIfExists(context, intent);
        try {
            if (intentInAppIfExists != null) {
                context.startActivity(intentInAppIfExists);
            } else {
                context.startActivity(intent);
            }
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            Toast.makeText(context, 2131755026, 0).show();
        } catch (NullPointerException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean startActivityOutsideApp(Context context, Intent intent) {
        return startActivityOutsideApp(context, intent, true);
    }

    public static boolean startActivityOutsideApp(Context context, Intent intent, boolean z) {
        boolean z2 = true;
        if (!(Build.TYPE.equals("eng") || Build.TYPE.equals("userdebug")) || !z || getIntentInAppIfExists(context, intent) == null) {
            try {
                context.startActivity(intent);
            } catch (ActivityNotFoundException e) {
                e.printStackTrace();
                Toast.makeText(context, 2131755026, 0).show();
                z2 = false;
            }
            return z2;
        }
        throw new AssertionError("startActivityOutsideApp() was called for an intent that can be handled inside the app");
    }
}
