package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.facebook.C10181g;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
/* renamed from: com.facebook.internal.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/e.class */
public class C10280e {

    /* renamed from: a */
    private static final String[] f33804a = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev"};

    /* renamed from: a */
    public static String m23068a() {
        if (C10249a.m23108a(C10280e.class)) {
            return null;
        }
        try {
            Context m23290i = C10181g.m23290i();
            List<ResolveInfo> queryIntentServices = m23290i.getPackageManager().queryIntentServices(new Intent("android.support.customtabs.action.CustomTabsService"), 0);
            if (queryIntentServices == null) {
                return null;
            }
            HashSet hashSet = new HashSet(Arrays.asList(f33804a));
            for (ResolveInfo resolveInfo : queryIntentServices) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                if (serviceInfo != null && hashSet.contains(serviceInfo.packageName)) {
                    return serviceInfo.packageName;
                }
            }
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10280e.class);
            return null;
        }
    }

    /* renamed from: a */
    public static String m23067a(String str) {
        if (C10249a.m23108a(C10280e.class)) {
            return null;
        }
        try {
            return C10218af.m23180a(C10181g.m23290i(), str) ? str : C10218af.m23180a(C10181g.m23290i(), m23066b()) ? m23066b() : "";
        } catch (Throwable th) {
            C10249a.m23106a(th, C10280e.class);
            return null;
        }
    }

    /* renamed from: b */
    private static String m23066b() {
        if (C10249a.m23108a(C10280e.class)) {
            return null;
        }
        try {
            return "fbconnect://cct." + C10181g.m23290i().getPackageName();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10280e.class);
            return null;
        }
    }
}
