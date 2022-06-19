package com.google.firebase.components;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.p391d.AbstractC15728b;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.firebase.components.f */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/f.class */
public final class C15628f<T> {

    /* renamed from: a */
    private final T f56027a;

    /* renamed from: b */
    private final AbstractC15631b<T> f56028b;

    /* renamed from: com.google.firebase.components.f$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/f$a.class */
    public static final class C15630a implements AbstractC15631b<Context> {

        /* renamed from: a */
        private final Class<? extends Service> f56029a;

        /* JADX INFO: Access modifiers changed from: private */
        public C15630a(Class<? extends Service> cls) {
            this.f56029a = cls;
        }

        /* renamed from: a */
        private Bundle m8539a(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f56029a), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w("ComponentDiscovery", this.f56029a + " has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("ComponentDiscovery", "Application info not found.");
                return null;
            }
        }

        @Override // com.google.firebase.components.C15628f.AbstractC15631b
        /* renamed from: a */
        public final /* synthetic */ List mo8538a(Context context) {
            Bundle m8539a = m8539a(context);
            if (m8539a == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : m8539a.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(m8539a.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }
    }

    /* renamed from: com.google.firebase.components.f$b */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/f$b.class */
    public interface AbstractC15631b<T> {
        /* renamed from: a */
        List<String> mo8538a(T t);
    }

    public C15628f(T t, AbstractC15631b<T> abstractC15631b) {
        this.f56027a = t;
        this.f56028b = abstractC15631b;
    }

    /* renamed from: a */
    public static AbstractC15634i m8540a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (!AbstractC15634i.class.isAssignableFrom(cls)) {
                throw new InvalidRegistrarException(String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
            }
            return (AbstractC15634i) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
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
    public final List<AbstractC15728b<AbstractC15634i>> m8541a() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f56028b.mo8538a(this.f56027a)) {
            arrayList.add(new AbstractC15728b(str) { // from class: com.google.firebase.components.g

                /* renamed from: a */
                private final String f56030a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f56030a = str;
                }

                @Override // com.google.firebase.p391d.AbstractC15728b
                /* renamed from: a */
                public final Object mo8476a() {
                    return C15628f.m8540a(this.f56030a);
                }
            });
        }
        return arrayList;
    }
}
