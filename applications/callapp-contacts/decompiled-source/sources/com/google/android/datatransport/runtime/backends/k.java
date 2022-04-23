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
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/k.class */
final class k implements e {

    /* renamed from: a  reason: collision with root package name */
    private final a f20423a;

    /* renamed from: b  reason: collision with root package name */
    private final i f20424b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, m> f20425c;

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/k$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f20426a;

        /* renamed from: b  reason: collision with root package name */
        private Map<String, String> f20427b = null;

        a(Context context) {
            this.f20426a = context;
        }

        private static Bundle a(Context context) {
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

        final d a(String str) {
            Map<String, String> map;
            if (this.f20427b == null) {
                Bundle a2 = a(this.f20426a);
                if (a2 == null) {
                    Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                    map = Collections.emptyMap();
                } else {
                    map = new HashMap<>();
                    for (String str2 : a2.keySet()) {
                        Object obj = a2.get(str2);
                        if ((obj instanceof String) && str2.startsWith("backend:")) {
                            for (String str3 : ((String) obj).split(",", -1)) {
                                String trim = str3.trim();
                                if (!trim.isEmpty()) {
                                    map.put(trim, str2.substring(8));
                                }
                            }
                        }
                    }
                }
                this.f20427b = map;
            }
            String str4 = this.f20427b.get(str);
            if (str4 == null) {
                return null;
            }
            try {
                return (d) Class.forName(str4).asSubclass(d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                Log.w("BackendRegistry", String.format("Class %s is not found.", str4), e);
                return null;
            } catch (IllegalAccessException e2) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str4), e2);
                return null;
            } catch (InstantiationException e3) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str4), e3);
                return null;
            } catch (NoSuchMethodException e4) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str4), e4);
                return null;
            } catch (InvocationTargetException e5) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str4), e5);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context, i iVar) {
        this(new a(context), iVar);
    }

    k(a aVar, i iVar) {
        this.f20425c = new HashMap();
        this.f20423a = aVar;
        this.f20424b = iVar;
    }

    @Override // com.google.android.datatransport.runtime.backends.e
    public final m a(String str) {
        synchronized (this) {
            if (this.f20425c.containsKey(str)) {
                return this.f20425c.get(str);
            }
            d a2 = this.f20423a.a(str);
            if (a2 == null) {
                return null;
            }
            i iVar = this.f20424b;
            m create = a2.create(new c(iVar.f20417a, iVar.f20418b, iVar.f20419c, str));
            this.f20425c.put(str, create);
            return create;
        }
    }
}
