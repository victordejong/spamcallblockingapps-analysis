package com.google.firebase.components;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.firebase.components.f */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/f.class */
public final class C4885f<T> {

    /* renamed from: a */
    private final T f20980a;

    /* renamed from: b */
    private final AbstractC4888b<T> f20981b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.components.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/f$a.class */
    public static class C4887a implements AbstractC4888b<Context> {

        /* renamed from: a */
        private final Class<? extends Service> f20982a;

        private C4887a(Class<? extends Service> cls) {
            this.f20982a = cls;
        }

        /* renamed from: b */
        private Bundle m2095b(Context context) {
            Bundle bundle;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                    bundle = null;
                } else {
                    ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f20982a), 128);
                    if (serviceInfo == null) {
                        Log.w("ComponentDiscovery", this.f20982a + " has no service info.");
                        bundle = null;
                    } else {
                        bundle = serviceInfo.metaData;
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("ComponentDiscovery", "Application info not found.");
                bundle = null;
            }
            return bundle;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v21, types: [java.util.List] */
        /* renamed from: a */
        public List<String> mo2094a(Context context) {
            ArrayList arrayList;
            Bundle m2095b = m2095b(context);
            if (m2095b == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                arrayList = Collections.emptyList();
            } else {
                arrayList = new ArrayList();
                for (String str : m2095b.keySet()) {
                    if ("com.google.firebase.components.ComponentRegistrar".equals(m2095b.get(str)) && str.startsWith("com.google.firebase.components:")) {
                        arrayList.add(str.substring("com.google.firebase.components:".length()));
                    }
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.components.f$b */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/f$b.class */
    public interface AbstractC4888b<T> {
        /* renamed from: a */
        List<String> mo2094a(T t);
    }

    C4885f(T t, AbstractC4888b<T> abstractC4888b) {
        this.f20980a = t;
        this.f20981b = abstractC4888b;
    }

    /* renamed from: a */
    public static C4885f<Context> m2098a(Context context, Class<? extends Service> cls) {
        return new C4885f<>(context, new C4887a(cls));
    }

    /* renamed from: a */
    private static List<AbstractC4890h> m2097a(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            try {
                Class<?> cls = Class.forName(str);
                if (!AbstractC4890h.class.isAssignableFrom(cls)) {
                    Log.w("ComponentDiscovery", String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
                } else {
                    arrayList.add((AbstractC4890h) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
            } catch (ClassNotFoundException e) {
                Log.w("ComponentDiscovery", String.format("Class %s is not an found.", str), e);
            } catch (IllegalAccessException e2) {
                Log.w("ComponentDiscovery", String.format("Could not instantiate %s.", str), e2);
            } catch (InstantiationException e3) {
                Log.w("ComponentDiscovery", String.format("Could not instantiate %s.", str), e3);
            } catch (NoSuchMethodException e4) {
                Log.w("ComponentDiscovery", String.format("Could not instantiate %s", str), e4);
            } catch (InvocationTargetException e5) {
                Log.w("ComponentDiscovery", String.format("Could not instantiate %s", str), e5);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public List<AbstractC4890h> m2099a() {
        return m2097a(this.f20981b.mo2094a(this.f20980a));
    }
}
