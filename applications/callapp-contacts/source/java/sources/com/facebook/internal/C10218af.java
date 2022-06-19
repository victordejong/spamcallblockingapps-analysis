package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.Log;
import com.facebook.C10181g;
import com.facebook.FacebookSdkNotInitializedException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0011\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\n\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J$\u0010\u000f\u001a\u00020\u000b\"\u0004\b��\u0010\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J\b\u0010\u0011\u001a\u00020\u0004H\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\b\u0010\u0017\u001a\u00020\u0004H\u0007J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u001a\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u0013H\u0007J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u0013H\u0007J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J$\u0010\"\u001a\u00020\u000b\"\u0004\b��\u0010\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J$\u0010#\u001a\u00020\u000b\"\u0004\b��\u0010\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J\u001a\u0010$\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J\u001a\u0010&\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J7\u0010'\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000e\u001a\u00020\u00042\u0016\u0010(\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010)\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0002\u0010*J\b\u0010+\u001a\u00020\u000bH\u0007J\b\u0010,\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006-"}, m4298d2 = {"Lcom/facebook/internal/Validate;", "", "()V", "CONTENT_PROVIDER_BASE", "", "CONTENT_PROVIDER_NOT_FOUND_REASON", "CUSTOM_TAB_REDIRECT_URI_PREFIX", "FACEBOOK_ACTIVITY_NOT_FOUND_REASON", "NO_INTERNET_PERMISSION_REASON", "TAG", "containsNoNullOrEmpty", "", "container", "", "name", "containsNoNulls", "T", "hasAppID", "hasBluetoothPermission", "", "context", "Landroid/content/Context;", "hasChangeWifiStatePermission", "hasClientToken", "hasContentProvider", "hasCustomTabRedirectActivity", "redirectURI", "hasFacebookActivity", "shouldThrow", "hasInternetPermissions", "hasLocationPermission", "hasPermission", "permission", "hasWiFiPermission", "notEmpty", "notEmptyAndContainsNoNulls", "notNull", "arg", "notNullOrEmpty", "oneOf", "values", "", "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V", "runningOnUiThread", "sdkInitialized", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.af */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/af.class */
public final class C10218af {

    /* renamed from: a */
    public static final C10218af f33673a = new C10218af();

    /* renamed from: b */
    private static final String f33674b;

    static {
        String name = C10218af.class.getName();
        C18524p.m3843b(name, "Validate::class.java.name");
        f33674b = name;
    }

    private C10218af() {
    }

    /* renamed from: a */
    public static final void m23182a() {
        if (C10181g.m23306a()) {
            return;
        }
        throw new FacebookSdkNotInitializedException("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
    }

    /* renamed from: a */
    public static final void m23181a(Context context) {
        C18524p.m3840d(context, "context");
        m23179a((Object) context, "context");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            Log.w(f33674b, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
        }
    }

    /* renamed from: a */
    public static final void m23179a(Object obj, String name) {
        C18524p.m3840d(name, "name");
        if (obj != null) {
            return;
        }
        throw new NullPointerException("Argument '" + name + "' cannot be null");
    }

    /* renamed from: a */
    public static final void m23178a(String str, String name) {
        C18524p.m3840d(name, "name");
        if (!C10213ae.m23230a(str)) {
            return;
        }
        throw new IllegalArgumentException(("Argument '" + name + "' cannot be null or empty").toString());
    }

    /* renamed from: a */
    public static final <T> void m23177a(Collection<? extends T> container, String name) {
        C18524p.m3840d(container, "container");
        C18524p.m3840d(name, "name");
        C18524p.m3840d(container, "container");
        C18524p.m3840d(name, "name");
        m23179a((Object) container, name);
        for (T t : container) {
            if (t == null) {
                throw new NullPointerException("Container '" + name + "' cannot contain null values");
            }
        }
        C18524p.m3840d(container, "container");
        C18524p.m3840d(name, "name");
        if (!container.isEmpty()) {
            return;
        }
        throw new IllegalArgumentException(("Container '" + name + "' cannot be empty").toString());
    }

    /* renamed from: a */
    public static final boolean m23180a(Context context, String str) {
        List<ResolveInfo> list;
        C18524p.m3840d(context, "context");
        m23179a((Object) context, "context");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setData(Uri.parse(str));
            list = packageManager.queryIntentActivities(intent, 64);
        } else {
            list = null;
        }
        boolean z = false;
        if (list != null) {
            Iterator<ResolveInfo> it2 = list.iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it2.hasNext()) {
                    break;
                }
                ActivityInfo activityInfo = it2.next().activityInfo;
                if (!C18524p.m3850a((Object) activityInfo.name, (Object) "com.facebook.CustomTabActivity") || !C18524p.m3850a((Object) activityInfo.packageName, (Object) context.getPackageName())) {
                    return false;
                }
                z2 = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static final String m23176b() {
        String m23286m = C10181g.m23286m();
        if (m23286m != null) {
            return m23286m;
        }
        throw new IllegalStateException("No App ID found, please set the App ID.".toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m23175b(android.content.Context r5) {
        /*
            r0 = r5
            java.lang.String r1 = "context"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r5
            java.lang.String r1 = "context"
            m23179a(r0, r1)
            r0 = r5
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L2a
            android.content.ComponentName r0 = new android.content.ComponentName
            r1 = r0
            r2 = r5
            java.lang.String r3 = "com.facebook.FacebookActivity"
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r6
            r1 = r5
            r2 = 1
            android.content.pm.ActivityInfo r0 = r0.getActivityInfo(r1, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3b
            r5 = r0
            goto L2c
        L2a:
            r0 = 0
            r5 = r0
        L2c:
            r0 = r5
            if (r0 != 0) goto L3a
            java.lang.String r0 = com.facebook.internal.C10218af.f33674b
            java.lang.String r1 = "FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info."
            int r0 = android.util.Log.w(r0, r1)
        L3a:
            return
        L3b:
            r5 = move-exception
            goto L2a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C10218af.m23175b(android.content.Context):void");
    }

    /* renamed from: c */
    public static final String m23174c() {
        String m23284o = C10181g.m23284o();
        if (m23284o != null) {
            return m23284o;
        }
        throw new IllegalStateException("No Client Token found, please set the Client Token.".toString());
    }
}
