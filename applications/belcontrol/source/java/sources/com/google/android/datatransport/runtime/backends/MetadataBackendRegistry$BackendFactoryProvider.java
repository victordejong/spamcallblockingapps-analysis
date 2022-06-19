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
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider.class */
public class MetadataBackendRegistry$BackendFactoryProvider {
    private final Context applicationContext;
    private Map<String, String> backendProviders = null;

    public MetadataBackendRegistry$BackendFactoryProvider(Context context) {
        this.applicationContext = context;
    }

    private Map<String, String> discover(Context context) {
        Bundle metadata = getMetadata(context);
        if (metadata == null) {
            Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str : metadata.keySet()) {
            Object obj = metadata.get(str);
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

    private Map<String, String> getBackendProviders() {
        if (this.backendProviders == null) {
            this.backendProviders = discover(this.applicationContext);
        }
        return this.backendProviders;
    }

    private static Bundle getMetadata(Context context) {
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

    public BackendFactory get(String str) {
        String str2;
        Throwable e;
        String str3;
        Throwable e2;
        String str4 = getBackendProviders().get(str);
        if (str4 == null) {
            return null;
        }
        try {
            return (BackendFactory) Class.forName(str4).asSubclass(BackendFactory.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
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
