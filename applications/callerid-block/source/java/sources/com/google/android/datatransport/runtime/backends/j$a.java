package com.google.android.datatransport.runtime.backends;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/j$a.class */
class j$a {

    /* renamed from: a */
    private final Context f5404a;

    /* renamed from: b */
    private Map<String, String> f5405b = null;

    j$a(Context context) {
        this.f5404a = context;
    }

    /* renamed from: a */
    private Map<String, String> m9113a(Context context) {
        Bundle m9110d = m9110d(context);
        if (m9110d == null) {
            Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str : m9110d.keySet()) {
            Object obj = m9110d.get(str);
            if ((obj instanceof String) && str.startsWith("backend:")) {
                for (String str2 : ((String) obj).split(",", -1)) {
                    String trim = str2.trim();
                    if (!trim.isEmpty()) {
                        hashMap.put(trim, str.substring(8));
                    }
                }
            }
        }
        return hashMap;
    }

    /* renamed from: c */
    private Map<String, String> m9111c() {
        if (this.f5405b == null) {
            this.f5405b = m9113a(this.f5404a);
        }
        return this.f5405b;
    }

    /* renamed from: d */
    private static Bundle m9110d(Context context) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                Log.w("BackendRegistry", "Context has no PackageManager.");
                return null;
            }
            ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, TransportBackendDiscovery.class), 128);
            if (serviceInfo != null) {
                return serviceInfo.metaData;
            }
            Log.w("BackendRegistry", "TransportBackendDiscovery has no service info.");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w("BackendRegistry", "Application info not found.");
            return null;
        }
    }

    /* renamed from: b */
    AbstractC1328d m9112b(String str) {
        String str2;
        Throwable e;
        String str3;
        Throwable e2;
        String str4 = m9111c().get(str);
        if (str4 == null) {
            return null;
        }
        try {
            return (AbstractC1328d) Class.forName(str4).asSubclass(AbstractC1328d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException e3) {
            e = e3;
            str2 = String.format("Class %s is not found.", str4);
            Log.w("BackendRegistry", str2, e);
            return null;
        } catch (IllegalAccessException e4) {
            e = e4;
            str2 = String.format("Could not instantiate %s.", str4);
            Log.w("BackendRegistry", str2, e);
            return null;
        } catch (InstantiationException e5) {
            e = e5;
            str2 = String.format("Could not instantiate %s.", str4);
            Log.w("BackendRegistry", str2, e);
            return null;
        } catch (NoSuchMethodException e6) {
            e2 = e6;
            str3 = String.format("Could not instantiate %s", str4);
            Log.w("BackendRegistry", str3, e2);
            return null;
        } catch (InvocationTargetException e7) {
            e2 = e7;
            str3 = String.format("Could not instantiate %s", str4);
            Log.w("BackendRegistry", str3, e2);
            return null;
        }
    }
}
