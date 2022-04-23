package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.facebook.g;
import com.facebook.internal.b.b.a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f19926a = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev"};

    public static String a() {
        if (a.a(e.class)) {
            return null;
        }
        try {
            Context i = g.i();
            List<ResolveInfo> queryIntentServices = i.getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
            if (queryIntentServices == null) {
                return null;
            }
            HashSet hashSet = new HashSet(Arrays.asList(f19926a));
            for (ResolveInfo resolveInfo : queryIntentServices) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                if (serviceInfo != null && hashSet.contains(serviceInfo.packageName)) {
                    return serviceInfo.packageName;
                }
            }
            return null;
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    public static String a(String str) {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return af.a(g.i(), str) ? str : af.a(g.i(), b()) ? b() : "";
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }

    private static String b() {
        if (a.a(e.class)) {
            return null;
        }
        try {
            return "fbconnect://cct." + g.i().getPackageName();
        } catch (Throwable th) {
            a.a(th, e.class);
            return null;
        }
    }
}
