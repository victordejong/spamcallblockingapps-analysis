package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.Collection;
import java.util.List;
import p081h.p154f.C6135n;
import p081h.p154f.C6142o;
/* renamed from: com.facebook.internal.h0 */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/h0.class */
public final class C2416h0 {
    /* renamed from: a */
    public static String m34794a() {
        String f = C6135n.m23745f();
        if (f != null) {
            return f;
        }
        throw new IllegalStateException("No App ID found, please set the App ID.");
    }

    /* renamed from: a */
    public static void m34793a(Context context) {
        m34791a(context, "context");
        String a = m34794a();
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            String str = "com.facebook.app.FacebookContentProvider" + a;
            if (packageManager.resolveContentProvider(str, 0) == null) {
                throw new IllegalStateException(String.format("A ContentProvider for this app was not set up in the AndroidManifest.xml, please add %s as a provider to your AndroidManifest.xml file. See https://developers.facebook.com/docs/sharing/android for more info.", str));
            }
        }
    }

    /* renamed from: a */
    public static void m34792a(Context context, boolean z) {
        ActivityInfo activityInfo;
        m34791a(context, "context");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                activityInfo = packageManager.getActivityInfo(new ComponentName(context, "com.facebook.FacebookActivity"), 1);
            } catch (PackageManager.NameNotFoundException e) {
            }
            if (activityInfo == null && z) {
                throw new IllegalStateException("FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
            }
        }
        activityInfo = null;
        if (activityInfo == null) {
        }
    }

    /* renamed from: a */
    public static void m34791a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException("Argument '" + str + "' cannot be null");
        }
    }

    /* renamed from: a */
    public static void m34790a(String str, String str2) {
        if (C2408g0.m34816d(str)) {
            throw new IllegalArgumentException("Argument '" + str2 + "' cannot be null or empty");
        }
    }

    /* renamed from: a */
    public static <T> void m34789a(Collection<T> collection, String str) {
        m34791a((Object) collection, str);
        for (T t : collection) {
            if (t == null) {
                throw new NullPointerException("Container '" + str + "' cannot contain null values");
            }
        }
    }

    /* renamed from: b */
    public static String m34788b() {
        String l = C6135n.m23739l();
        if (l != null) {
            return l;
        }
        throw new IllegalStateException("No Client Token found, please set the Client Token.");
    }

    /* renamed from: b */
    public static void m34786b(Context context, boolean z) {
        m34791a(context, "context");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1 && z) {
            throw new IllegalStateException("No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
        }
    }

    /* renamed from: b */
    public static <T> void m34785b(Collection<T> collection, String str) {
        if (collection.isEmpty()) {
            throw new IllegalArgumentException("Container '" + str + "' cannot be empty");
        }
    }

    /* renamed from: b */
    public static boolean m34787b(Context context) {
        List<ResolveInfo> list;
        m34791a(context, "context");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setData(Uri.parse("fb" + C6135n.m23745f() + "://authorize"));
            list = packageManager.queryIntentActivities(intent, 64);
        } else {
            list = null;
        }
        boolean z = false;
        if (list != null) {
            z = false;
            for (ResolveInfo resolveInfo : list) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                if (!activityInfo.name.equals("com.facebook.CustomTabActivity") || !activityInfo.packageName.equals(context.getPackageName())) {
                    return false;
                }
                z = true;
            }
        }
        return z;
    }

    /* renamed from: c */
    public static void m34784c() {
        if (!C6135n.m23730u()) {
            throw new C6142o("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
        }
    }

    /* renamed from: c */
    public static void m34783c(Context context) {
        m34792a(context, true);
    }

    /* renamed from: c */
    public static <T> void m34782c(Collection<T> collection, String str) {
        m34789a((Collection) collection, str);
        m34785b(collection, str);
    }

    /* renamed from: d */
    public static void m34781d(Context context) {
        m34786b(context, true);
    }
}
