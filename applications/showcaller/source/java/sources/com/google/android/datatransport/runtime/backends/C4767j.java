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
/* renamed from: com.google.android.datatransport.runtime.backends.j */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/j.class */
class C4767j implements AbstractC4761e {

    /* renamed from: a */
    private final C4768a f14375a;

    /* renamed from: b */
    private final C4765h f14376b;

    /* renamed from: c */
    private final Map<String, AbstractC4770l> f14377c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.runtime.backends.j$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/j$a.class */
    public static class C4768a {

        /* renamed from: a */
        private final Context f14378a;

        /* renamed from: b */
        private Map<String, String> f14379b = null;

        C4768a(Context context) {
            this.f14378a = context;
        }

        /* renamed from: a */
        private Map<String, String> m21824a(Context context) {
            Bundle m21821d = m21821d(context);
            if (m21821d == null) {
                Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            for (String str : m21821d.keySet()) {
                Object obj = m21821d.get(str);
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
        private Map<String, String> m21822c() {
            if (this.f14379b == null) {
                this.f14379b = m21824a(this.f14378a);
            }
            return this.f14379b;
        }

        /* renamed from: d */
        private static Bundle m21821d(Context context) {
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
        AbstractC4760d m21823b(String str) {
            String str2 = m21822c().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (AbstractC4760d) Class.forName(str2).asSubclass(AbstractC4760d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                Log.w("BackendRegistry", String.format("Class %s is not found.", str2), e);
                return null;
            } catch (IllegalAccessException e2) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e2);
                return null;
            } catch (InstantiationException e3) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s.", str2), e3);
                return null;
            } catch (NoSuchMethodException e4) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e4);
                return null;
            } catch (InvocationTargetException e5) {
                Log.w("BackendRegistry", String.format("Could not instantiate %s", str2), e5);
                return null;
            }
        }
    }

    public C4767j(Context context, C4765h c4765h) {
        this(new C4768a(context), c4765h);
    }

    C4767j(C4768a c4768a, C4765h c4765h) {
        this.f14377c = new HashMap();
        this.f14375a = c4768a;
        this.f14376b = c4765h;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC4761e
    public AbstractC4770l get(String str) {
        synchronized (this) {
            if (this.f14377c.containsKey(str)) {
                return this.f14377c.get(str);
            }
            AbstractC4760d m21823b = this.f14375a.m21823b(str);
            if (m21823b == null) {
                return null;
            }
            AbstractC4770l create = m21823b.create(this.f14376b.m21828a(str));
            this.f14377c.put(str, create);
            return create;
        }
    }
}
