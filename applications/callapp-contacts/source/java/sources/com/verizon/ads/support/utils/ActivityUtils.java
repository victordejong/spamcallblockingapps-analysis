package com.verizon.ads.support.utils;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.C0458d;
import com.verizon.ads.Logger;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/utils/ActivityUtils.class */
public class ActivityUtils {

    /* renamed from: a */
    private static final Logger f61720a = Logger.getInstance(ActivityUtils.class);

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
            f61720a.m5564e("Unable to start activity for intent", e);
            return false;
        }
    }

    public static boolean startActivityFromUrl(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            f61720a.m5565e("Unable to start activity for null url");
            return false;
        }
        return startActivity(context, new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    public static boolean startCustomTabActivityFromUrl(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            f61720a.m5565e("Unable to start custom tab activity for null or empty url");
            return false;
        } else if (context == null) {
            f61720a.m5565e("Unable to start custom tab activity for null context");
            return false;
        } else {
            try {
                C0458d m45466a = new C0458d.C0459a().m45466a();
                if (!(context instanceof Activity)) {
                    m45466a.f1796a.addFlags(268435456);
                }
                m45466a.m45467a(context, Uri.parse(str));
                return true;
            } catch (Throwable th) {
                f61720a.m5564e("Error launching custom tab activity.", th);
                return false;
            }
        }
    }
}
