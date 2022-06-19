package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.google.android.gms.ads.RequestConfiguration;
import com.razorpay.AnalyticsConstants;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23228f0;
import p193e.p1538j.C23232g0;
import s1.z.c.l;
@Metadata(d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0011\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\n\u001a\u00020\u000b2\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J$\u0010\u000f\u001a\u00020\u000b\"\u0004\b��\u0010\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J\b\u0010\u0011\u001a\u00020\u0004H\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\b\u0010\u0017\u001a\u00020\u0004H\u0007J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u001a\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u0013H\u0007J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u0013H\u0007J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u0004H\u0007J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0018\u0010\"\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J$\u0010\"\u001a\u00020\u000b\"\u0004\b��\u0010\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J$\u0010$\u001a\u00020\u000b\"\u0004\b��\u0010\u00102\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00100\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J\u001a\u0010%\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J\u001a\u0010&\u001a\u00020\u00042\b\u0010#\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J7\u0010'\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000e\u001a\u00020\u00042\u0016\u0010(\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010)\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0002\u0010*J\b\u0010+\u001a\u00020\u000bH\u0007J\b\u0010,\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006-"}, d2 = {"Lcom/facebook/internal/Validate;", "", "()V", "CONTENT_PROVIDER_BASE", "", "CONTENT_PROVIDER_NOT_FOUND_REASON", "CUSTOM_TAB_REDIRECT_URI_PREFIX", "FACEBOOK_ACTIVITY_NOT_FOUND_REASON", "NO_INTERNET_PERMISSION_REASON", "TAG", "containsNoNullOrEmpty", "", "container", "", AnalyticsConstants.NAME, "containsNoNulls", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "hasAppID", "hasBluetoothPermission", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "hasChangeWifiStatePermission", "hasClientToken", "hasContentProvider", "hasCustomTabRedirectActivity", "redirectURI", "hasFacebookActivity", "shouldThrow", "hasInternetPermissions", "hasLocationPermission", "hasPermission", "permission", "hasWiFiPermission", "notEmpty", "arg", "notEmptyAndContainsNoNulls", "notNull", "notNullOrEmpty", "oneOf", "values", "", "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V", "runningOnUiThread", "sdkInitialized", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.r0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/r0.class */
public final class C1172r0 {

    /* renamed from: a */
    public static final C1172r0 f3203a = null;

    /* renamed from: b */
    public static final String f3204b;

    static {
        String name = C1172r0.class.getName();
        l.d(name, "Validate::class.java.name");
        f3204b = name;
    }

    /* renamed from: a */
    public static final boolean m41654a(Context context, String str) {
        List<ResolveInfo> list;
        l.e(context, AnalyticsConstants.CONTEXT);
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
            Iterator<ResolveInfo> it = list.iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                ActivityInfo activityInfo = it.next().activityInfo;
                if (!l.a(activityInfo.name, "com.facebook.CustomTabActivity") || !l.a(activityInfo.packageName, context.getPackageName())) {
                    return false;
                }
                z2 = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static final void m41653b(String str, String str2) {
        l.e(str, "arg");
        l.e(str2, AnalyticsConstants.NAME);
        if (str.length() > 0) {
            return;
        }
        throw new IllegalArgumentException(C22128a.m8725C2("Argument '", str2, "' cannot be empty").toString());
    }

    /* renamed from: c */
    public static final <T> void m41652c(Collection<? extends T> collection, String str) {
        l.e(collection, "container");
        l.e(str, AnalyticsConstants.NAME);
        l.e(collection, "container");
        l.e(str, AnalyticsConstants.NAME);
        for (T t : collection) {
            if (t == null) {
                throw new NullPointerException(C22128a.m8725C2("Container '", str, "' cannot contain null values"));
            }
        }
        l.e(collection, "container");
        l.e(str, AnalyticsConstants.NAME);
        if (!collection.isEmpty()) {
            return;
        }
        throw new IllegalArgumentException(C22128a.m8725C2("Container '", str, "' cannot be empty").toString());
    }

    /* renamed from: d */
    public static final void m41651d(Object obj, String str) {
        l.e(str, AnalyticsConstants.NAME);
        if (obj != null) {
            return;
        }
        throw new NullPointerException(C22128a.m8725C2("Argument '", str, "' cannot be null"));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m41650e(java.lang.String r6, java.lang.String r7) {
        /*
            r0 = r7
            java.lang.String r1 = "name"
            s1.z.c.l.e(r0, r1)
            r0 = 1
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L23
            r0 = r6
            int r0 = r0.length()
            if (r0 <= 0) goto L18
            r0 = 1
            r9 = r0
            goto L1a
        L18:
            r0 = 0
            r9 = r0
        L1a:
            r0 = r9
            if (r0 == 0) goto L23
            r0 = r8
            r9 = r0
            goto L25
        L23:
            r0 = 0
            r9 = r0
        L25:
            r0 = r9
            if (r0 == 0) goto L2b
            r0 = r6
            return r0
        L2b:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Argument '"
            r3 = r7
            java.lang.String r4 = "' cannot be null or empty"
            java.lang.String r2 = p193e.p1432d.p1439c.p1440a.C22128a.m8725C2(r2, r3, r4)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.C1172r0.m41650e(java.lang.String, java.lang.String):java.lang.String");
    }

    /* renamed from: f */
    public static final void m41649f() {
        C23228f0 c23228f0 = C23228f0.f64291a;
        if (C23228f0.m7345j()) {
            return;
        }
        throw new C23232g0("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
    }
}
