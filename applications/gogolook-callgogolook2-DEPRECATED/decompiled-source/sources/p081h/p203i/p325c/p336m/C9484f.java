package p081h.p203i.p325c.p336m;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: h.i.c.m.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/m/f.class */
public final class C9484f<T> {

    /* renamed from: a */
    public final T f21627a;

    /* renamed from: b */
    public final AbstractC9487c<T> f21628b;

    /* renamed from: h.i.c.m.f$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/m/f$b.class */
    public static class C9486b implements AbstractC9487c<Context> {

        /* renamed from: a */
        public final Class<? extends Service> f21629a;

        public C9486b(Class<? extends Service> cls) {
            this.f21629a = cls;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public final Bundle m15074a(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f21629a), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                String str = this.f21629a + " has no service info.";
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }

        /* renamed from: b */
        public List<String> mo15072a(Context context) {
            Bundle a = m15074a(context);
            if (a == null) {
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

    @VisibleForTesting
    /* renamed from: h.i.c.m.f$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/m/f$c.class */
    public interface AbstractC9487c<T> {
        /* renamed from: a */
        List<String> mo15072a(T t);
    }

    @VisibleForTesting
    public C9484f(T t, AbstractC9487c<T> cVar) {
        this.f21627a = t;
        this.f21628b = cVar;
    }

    /* renamed from: a */
    public static C9484f<Context> m15076a(Context context, Class<? extends Service> cls) {
        return new C9484f<>(context, new C9486b(cls));
    }

    /* renamed from: a */
    public static List<AbstractC9489h> m15075a(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            try {
                Class<?> cls = Class.forName(str);
                if (!AbstractC9489h.class.isAssignableFrom(cls)) {
                    String.format("Class %s is not an instance of %s", str, "com.google.firebase.components.ComponentRegistrar");
                } else {
                    arrayList.add((AbstractC9489h) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                }
            } catch (ClassNotFoundException e) {
                String.format("Class %s is not an found.", str);
            } catch (IllegalAccessException e2) {
                String.format("Could not instantiate %s.", str);
            } catch (InstantiationException e3) {
                String.format("Could not instantiate %s.", str);
            } catch (NoSuchMethodException e4) {
                String.format("Could not instantiate %s", str);
            } catch (InvocationTargetException e5) {
                String.format("Could not instantiate %s", str);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public List<AbstractC9489h> m15077a() {
        return m15075a(this.f21628b.mo15072a(this.f21627a));
    }
}
