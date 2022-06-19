package com.google.firebase.components;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.p313k.AbstractC9247b;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.firebase.components.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/g.class */
public final class C8863g<T> {

    /* renamed from: a */
    private final T f38810a;

    /* renamed from: b */
    private final AbstractC8866c<T> f38811b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.firebase.components.g$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/components/g$b.class */
    public static class C8865b implements AbstractC8866c<Context> {

        /* renamed from: a */
        private final Class<? extends Service> f38812a;

        private C8865b(Class<? extends Service> cls) {
            this.f38812a = cls;
        }

        /* renamed from: b */
        private Bundle m2482b(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f38812a), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w("ComponentDiscovery", this.f38812a + " has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("ComponentDiscovery", "Application info not found.");
                return null;
            }
        }

        /* renamed from: c */
        public List<String> mo2480a(Context context) {
            Bundle m2482b = m2482b(context);
            if (m2482b == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : m2482b.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(m2482b.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.components.g$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/components/g$c.class */
    public interface AbstractC8866c<T> {
        /* renamed from: a */
        List<String> mo2480a(T t);
    }

    C8863g(T t, AbstractC8866c<T> abstractC8866c) {
        this.f38810a = t;
        this.f38811b = abstractC8866c;
    }

    /* renamed from: b */
    public static C8863g<Context> m2485b(Context context, Class<? extends Service> cls) {
        return new C8863g<>(context, new C8865b(cls));
    }

    /* renamed from: c */
    public static AbstractC8868i m2484c(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (!AbstractC8868i.class.isAssignableFrom(cls)) {
                throw new InvalidRegistrarException(String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
            }
            return (AbstractC8868i) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
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

    /* renamed from: a */
    public List<AbstractC9247b<AbstractC8868i>> m2486a() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f38811b.mo2480a(this.f38810a)) {
            arrayList.add(C8862f.m2487a(str));
        }
        return arrayList;
    }
}
