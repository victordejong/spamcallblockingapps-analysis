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
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/f.class */
public final class f<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f32250a;

    /* renamed from: b  reason: collision with root package name */
    private final b<T> f32251b;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/f$a.class */
    public static final class a implements b<Context> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<? extends Service> f32252a;

        private a(Class<? extends Service> cls) {
            this.f32252a = cls;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        private Bundle a2(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f32252a), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w("ComponentDiscovery", this.f32252a + " has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("ComponentDiscovery", "Application info not found.");
                return null;
            }
        }

        @Override // com.google.firebase.components.f.b
        public final /* synthetic */ List a(Context context) {
            Bundle a2 = a2(context);
            if (a2 == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : a2.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(a2.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/f$b.class */
    public interface b<T> {
        List<String> a(T t);
    }

    public f(T t, b<T> bVar) {
        this.f32250a = t;
        this.f32251b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (i.class.isAssignableFrom(cls)) {
                return (i) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new InvalidRegistrarException(String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
        } catch (ClassNotFoundException e) {
            Log.w("ComponentDiscovery", String.format("Class %s is not an found.", str));
            return null;
        } catch (IllegalAccessException e2) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s.", str), e2);
        } catch (InstantiationException e3) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s.", str), e3);
        } catch (NoSuchMethodException e4) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s", str), e4);
        } catch (InvocationTargetException e5) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s", str), e5);
        }
    }

    public final List<com.google.firebase.d.b<i>> a() {
        ArrayList arrayList = new ArrayList();
        for (final String str : this.f32251b.a(this.f32250a)) {
            arrayList.add(new com.google.firebase.d.b(str) { // from class: com.google.firebase.components.g

                /* renamed from: a  reason: collision with root package name */
                private final String f32253a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32253a = str;
                }

                @Override // com.google.firebase.d.b
                public final Object a() {
                    return f.a(this.f32253a);
                }
            });
        }
        return arrayList;
    }
}
