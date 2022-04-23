package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.util.Log;
import com.facebook.FacebookSdkNotInitializedException;
import com.facebook.g;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0011\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\n\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J$\u0010\u000f\u001a\u00020\u000b\"\u0004\b��\u0010\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J\b\u0010\u0011\u001a\u00020\u0004H\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\b\u0010\u0017\u001a\u00020\u0004H\u0007J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u001a\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u0013H\u0007J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u0013H\u0007J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J$\u0010\"\u001a\u00020\u000b\"\u0004\b��\u0010\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J$\u0010#\u001a\u00020\u000b\"\u0004\b��\u0010\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J\u001a\u0010$\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J\u001a\u0010&\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J7\u0010'\u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000e\u001a\u00020\u00042\u0016\u0010(\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010)\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0002\u0010*J\b\u0010+\u001a\u00020\u000bH\u0007J\b\u0010,\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006-"}, d2 = {"Lcom/facebook/internal/Validate;", "", "()V", "CONTENT_PROVIDER_BASE", "", "CONTENT_PROVIDER_NOT_FOUND_REASON", "CUSTOM_TAB_REDIRECT_URI_PREFIX", "FACEBOOK_ACTIVITY_NOT_FOUND_REASON", "NO_INTERNET_PERMISSION_REASON", "TAG", "containsNoNullOrEmpty", "", "container", "", "name", "containsNoNulls", "T", "hasAppID", "hasBluetoothPermission", "", "context", "Landroid/content/Context;", "hasChangeWifiStatePermission", "hasClientToken", "hasContentProvider", "hasCustomTabRedirectActivity", "redirectURI", "hasFacebookActivity", "shouldThrow", "hasInternetPermissions", "hasLocationPermission", "hasPermission", "permission", "hasWiFiPermission", "notEmpty", "notEmptyAndContainsNoNulls", "notNull", "arg", "notNullOrEmpty", "oneOf", "values", "", "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V", "runningOnUiThread", "sdkInitialized", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/af.class */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    public static final af f19825a = new af();

    /* renamed from: b  reason: collision with root package name */
    private static final String f19826b;

    static {
        String name = af.class.getName();
        p.b(name, "Validate::class.java.name");
        f19826b = name;
    }

    private af() {
    }

    public static final void a() {
        if (!g.a()) {
            throw new FacebookSdkNotInitializedException("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
        }
    }

    public static final void a(Context context) {
        p.d(context, "context");
        a((Object) context, "context");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            Log.w(f19826b, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
        }
    }

    public static final void a(Object obj, String name) {
        p.d(name, "name");
        if (obj == null) {
            throw new NullPointerException("Argument '" + name + "' cannot be null");
        }
    }

    public static final void a(String str, String name) {
        p.d(name, "name");
        if (!(!ae.a(str))) {
            throw new IllegalArgumentException(("Argument '" + name + "' cannot be null or empty").toString());
        }
    }

    public static final <T> void a(Collection<? extends T> container, String name) {
        p.d(container, "container");
        p.d(name, "name");
        p.d(container, "container");
        p.d(name, "name");
        a((Object) container, name);
        Iterator<? extends T> it2 = container.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new NullPointerException("Container '" + name + "' cannot contain null values");
            }
        }
        p.d(container, "container");
        p.d(name, "name");
        if (!(!container.isEmpty())) {
            throw new IllegalArgumentException(("Container '" + name + "' cannot be empty").toString());
        }
    }

    public static final boolean a(Context context, String str) {
        List<ResolveInfo> list;
        p.d(context, "context");
        a((Object) context, "context");
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
            z = false;
            for (ResolveInfo resolveInfo : list) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                if (!p.a((Object) activityInfo.name, (Object) "com.facebook.CustomTabActivity") || !p.a((Object) activityInfo.packageName, (Object) context.getPackageName())) {
                    return false;
                }
                z = true;
            }
        }
        return z;
    }

    public static final String b() {
        String m = g.m();
        if (m != null) {
            return m;
        }
        throw new IllegalStateException("No App ID found, please set the App ID.".toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(android.content.Context r5) {
        /*
            r0 = r5
            java.lang.String r1 = "context"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r5
            java.lang.String r1 = "context"
            a(r0, r1)
            r0 = r5
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x002a
            android.content.ComponentName r0 = new android.content.ComponentName
            r1 = r0
            r2 = r5
            java.lang.String r3 = "com.facebook.FacebookActivity"
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r6
            r1 = r5
            r2 = 1
            android.content.pm.ActivityInfo r0 = r0.getActivityInfo(r1, r2)     // Catch: NameNotFoundException -> 0x003b
            r5 = r0
            goto L_0x002c
        L_0x002a:
            r0 = 0
            r5 = r0
        L_0x002c:
            r0 = r5
            if (r0 != 0) goto L_0x003a
            java.lang.String r0 = com.facebook.internal.af.f19826b
            java.lang.String r1 = "FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info."
            int r0 = android.util.Log.w(r0, r1)
        L_0x003a:
            return
        L_0x003b:
            r5 = move-exception
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.af.b(android.content.Context):void");
    }

    public static final String c() {
        String o = g.o();
        if (o != null) {
            return o;
        }
        throw new IllegalStateException("No Client Token found, please set the Client Token.".toString());
    }
}
