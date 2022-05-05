package com.google.android.datatransport.runtime.backends;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
@Singleton
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/MetadataBackendRegistry.class */
class MetadataBackendRegistry implements BackendRegistry {

    /* renamed from: a */
    private final BackendFactoryProvider f6678a;

    /* renamed from: b */
    private final CreationContextFactory f6679b;

    /* renamed from: c */
    private final Map<String, TransportBackend> f6680c;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/MetadataBackendRegistry$BackendFactoryProvider.class */
    static class BackendFactoryProvider {

        /* renamed from: a */
        private final Context f6681a;

        /* renamed from: b */
        private Map<String, String> f6682b = null;

        BackendFactoryProvider(Context context) {
            this.f6681a = context;
        }

        /* renamed from: a */
        private Map<String, String> m15384a(Context context) {
            Bundle d = m15381d(context);
            if (d == null) {
                Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            for (String str : d.keySet()) {
                Object obj = d.get(str);
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
        private Map<String, String> m15382c() {
            if (this.f6682b == null) {
                this.f6682b = m15384a(this.f6681a);
            }
            return this.f6682b;
        }

        /* renamed from: d */
        private static Bundle m15381d(Context context) {
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

        @Nullable
        /* renamed from: b */
        BackendFactory m15383b(String str) {
            String str2 = m15382c().get(str);
            if (str2 == null) {
                return null;
            }
            try {
                return (BackendFactory) Class.forName(str2).asSubclass(BackendFactory.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @Inject
    public MetadataBackendRegistry(Context context, CreationContextFactory creationContextFactory) {
        this(new BackendFactoryProvider(context), creationContextFactory);
    }

    MetadataBackendRegistry(BackendFactoryProvider backendFactoryProvider, CreationContextFactory creationContextFactory) {
        this.f6680c = new HashMap();
        this.f6678a = backendFactoryProvider;
        this.f6679b = creationContextFactory;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRegistry
    @Nullable
    public TransportBackend get(String str) {
        synchronized (this) {
            if (this.f6680c.containsKey(str)) {
                return this.f6680c.get(str);
            }
            BackendFactory b = this.f6678a.m15383b(str);
            if (b == null) {
                return null;
            }
            TransportBackend create = b.create(this.f6679b.m15387a(str));
            this.f6680c.put(str, create);
            return create;
        }
    }
}
