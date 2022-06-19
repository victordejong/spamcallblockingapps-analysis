package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.Log;
import com.facebook.C2095j;
import com.facebook.FacebookSdkNotInitializedException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.facebook.internal.y */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/y.class */
public final class C2084y {

    /* renamed from: a */
    private static final String f6130a = C2084y.class.getName();

    /* renamed from: a */
    public static void m15420a() {
        if (!C2095j.m15374a()) {
            throw new FacebookSdkNotInitializedException("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
        }
    }

    /* renamed from: a */
    public static void m15418a(Context context, boolean z) {
        m15417a((Object) context, "context");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            if (z) {
                throw new IllegalStateException("No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
            }
            Log.w(f6130a, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
        }
    }

    /* renamed from: a */
    public static void m15417a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException("Argument '" + str + "' cannot be null");
        }
    }

    /* renamed from: a */
    public static void m15416a(String str, String str2) {
        if (C2079x.m15472a(str)) {
            throw new IllegalArgumentException("Argument '" + str2 + "' cannot be null or empty");
        }
    }

    /* renamed from: a */
    public static <T> void m15415a(Collection<T> collection, String str) {
        if (collection.isEmpty()) {
            throw new IllegalArgumentException("Container '" + str + "' cannot be empty");
        }
    }

    /* renamed from: a */
    public static boolean m15419a(Context context, String str) {
        boolean z;
        m15417a((Object) context, "context");
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> list = null;
        if (packageManager != null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setData(Uri.parse(str));
            list = packageManager.queryIntentActivities(intent, 64);
        }
        if (list != null) {
            Iterator<ResolveInfo> it = list.iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                ActivityInfo activityInfo = it.next().activityInfo;
                z = false;
                if (!activityInfo.name.equals("com.facebook.CustomTabActivity")) {
                    break;
                }
                z = false;
                if (!activityInfo.packageName.equals(context.getPackageName())) {
                    break;
                }
                z2 = true;
            }
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static String m15414b() {
        String m15356l = C2095j.m15356l();
        if (m15356l == null) {
            throw new IllegalStateException("No App ID found, please set the App ID.");
        }
        return m15356l;
    }

    /* renamed from: b */
    public static void m15413b(Context context, boolean z) {
        m15417a((Object) context, "context");
        PackageManager packageManager = context.getPackageManager();
        ActivityInfo activityInfo = null;
        if (packageManager != null) {
            try {
                activityInfo = packageManager.getActivityInfo(new ComponentName(context, "com.facebook.FacebookActivity"), 1);
            } catch (PackageManager.NameNotFoundException e) {
                activityInfo = null;
            }
        }
        if (activityInfo == null) {
            if (z) {
                throw new IllegalStateException("FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
            }
            Log.w(f6130a, "FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
        }
    }

    /* renamed from: b */
    public static <T> void m15412b(Collection<T> collection, String str) {
        m15417a((Object) collection, str);
        for (T t : collection) {
            if (t == null) {
                throw new NullPointerException("Container '" + str + "' cannot contain null values");
            }
        }
    }

    /* renamed from: c */
    public static String m15411c() {
        String m15354n = C2095j.m15354n();
        if (m15354n == null) {
            throw new IllegalStateException("No Client Token found, please set the Client Token.");
        }
        return m15354n;
    }

    /* renamed from: c */
    public static <T> void m15410c(Collection<T> collection, String str) {
        m15412b(collection, str);
        m15415a((Collection) collection, str);
    }
}
