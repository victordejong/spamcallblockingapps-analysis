package p131c.p161d.p282e.p288k;

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
/* renamed from: c.d.e.k.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/k/f.class */
public final class C5166f<T> {

    /* renamed from: a */
    public final T f17812a;

    /* renamed from: b */
    public final AbstractC5169c<T> f17813b;

    /* renamed from: c.d.e.k.f$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/k/f$b.class */
    public static class C5168b implements AbstractC5169c<Context> {

        /* renamed from: a */
        public final Class<? extends Service> f17814a;

        public C5168b(Class<? extends Service> cls) {
            this.f17814a = cls;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public final Bundle m24371a(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f17814a), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w("ComponentDiscovery", this.f17814a + " has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                Log.w("ComponentDiscovery", "Application info not found.");
                return null;
            }
        }

        /* renamed from: b */
        public List<String> mo24369a(Context context) {
            Bundle a = m24371a(context);
            if (a == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : a.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(a.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }
    }

    /* renamed from: c.d.e.k.f$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/k/f$c.class */
    public interface AbstractC5169c<T> {
        /* renamed from: a */
        List<String> mo24369a(T t);
    }

    public C5166f(T t, AbstractC5169c<T> cVar) {
        this.f17812a = t;
        this.f17813b = cVar;
    }

    /* renamed from: a */
    public static C5166f<Context> m24373a(Context context, Class<? extends Service> cls) {
        return new C5166f<>(context, new C5168b(cls));
    }

    /* renamed from: a */
    public static List<AbstractC5171h> m24372a(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            try {
                Class<?> cls = Class.forName(str);
                if (!AbstractC5171h.class.isAssignableFrom(cls)) {
                    Log.w("ComponentDiscovery", String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar"));
                } else {
                    arrayList.add((AbstractC5171h) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
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
    public List<AbstractC5171h> m24374a() {
        return m24372a(this.f17813b.mo24369a(this.f17812a));
    }
}
