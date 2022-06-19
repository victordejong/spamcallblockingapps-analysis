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
/* renamed from: com.google.android.datatransport.runtime.backends.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/k.class */
final class C10707k implements AbstractC10699e {

    /* renamed from: a */
    private final C10708a f34562a;

    /* renamed from: b */
    private final C10705i f34563b;

    /* renamed from: c */
    private final Map<String, AbstractC10710m> f34564c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.runtime.backends.k$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/k$a.class */
    public static final class C10708a {

        /* renamed from: a */
        private final Context f34565a;

        /* renamed from: b */
        private Map<String, String> f34566b = null;

        C10708a(Context context) {
            this.f34565a = context;
        }

        /* renamed from: a */
        private static Bundle m22500a(Context context) {
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

        /* renamed from: a */
        final AbstractC10698d m22499a(String str) {
            HashMap hashMap;
            if (this.f34566b == null) {
                Bundle m22500a = m22500a(this.f34565a);
                if (m22500a == null) {
                    Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                    hashMap = Collections.emptyMap();
                } else {
                    hashMap = new HashMap();
                    for (String str2 : m22500a.keySet()) {
                        Object obj = m22500a.get(str2);
                        if ((obj instanceof String) && str2.startsWith("backend:")) {
                            for (String str3 : ((String) obj).split(",", -1)) {
                                String trim = str3.trim();
                                if (!trim.isEmpty()) {
                                    hashMap.put(trim, str2.substring(8));
                                }
                            }
                        }
                    }
                }
                this.f34566b = hashMap;
            }
            String str4 = this.f34566b.get(str);
            if (str4 == null) {
                return null;
            }
            try {
                return (AbstractC10698d) Class.forName(str4).asSubclass(AbstractC10698d.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
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

    public C10707k(Context context, C10705i c10705i) {
        this(new C10708a(context), c10705i);
    }

    C10707k(C10708a c10708a, C10705i c10705i) {
        this.f34564c = new HashMap();
        this.f34562a = c10708a;
        this.f34563b = c10705i;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC10699e
    /* renamed from: a */
    public final AbstractC10710m mo22501a(String str) {
        synchronized (this) {
            if (this.f34564c.containsKey(str)) {
                return this.f34564c.get(str);
            }
            AbstractC10698d m22499a = this.f34562a.m22499a(str);
            if (m22499a == null) {
                return null;
            }
            C10705i c10705i = this.f34563b;
            AbstractC10710m create = m22499a.create(new C10697c(c10705i.f34556a, c10705i.f34557b, c10705i.f34558c, str));
            this.f34564c.put(str, create);
            return create;
        }
    }
}
