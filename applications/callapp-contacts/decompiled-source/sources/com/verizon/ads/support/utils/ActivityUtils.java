package com.verizon.ads.support.utils;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.d;
import com.verizon.ads.Logger;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/utils/ActivityUtils.class */
public class ActivityUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35634a = Logger.getInstance(ActivityUtils.class);

    public static boolean isActivityContext(Context context) {
        if (context == null) {
            return false;
        }
        Context context2 = context;
        if (context instanceof Activity) {
            return true;
        }
        while (context2 instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context2).getBaseContext();
            context2 = baseContext;
            if (baseContext instanceof Activity) {
                return true;
            }
        }
        return false;
    }

    public static boolean startActivity(Context context, Intent intent) {
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        try {
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            f35634a.e("Unable to start activity for intent", e);
            return false;
        }
    }

    public static boolean startActivityFromUrl(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            return startActivity(context, new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }
        f35634a.e("Unable to start activity for null url");
        return false;
    }

    public static boolean startCustomTabActivityFromUrl(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            f35634a.e("Unable to start custom tab activity for null or empty url");
            return false;
        } else if (context == null) {
            f35634a.e("Unable to start custom tab activity for null context");
            return false;
        } else {
            try {
                d a2 = new d.a().a();
                if (!(context instanceof Activity)) {
                    a2.f1233a.addFlags(268435456);
                }
                a2.a(context, Uri.parse(str));
                return true;
            } catch (Throwable th) {
                f35634a.e("Error launching custom tab activity.", th);
                return false;
            }
        }
    }
}
