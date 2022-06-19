package androidx.startup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p020b.p073s.C1790a;
/* renamed from: androidx.startup.a */
/* loaded from: classes-dex2jar.jar:androidx/startup/a.class */
public final class C1054a {

    /* renamed from: a */
    private static volatile C1054a f4610a;

    /* renamed from: b */
    private static final Object f4611b = new Object();

    /* renamed from: e */
    final Context f4614e;

    /* renamed from: d */
    final Set<Class<? extends AbstractC1055b<?>>> f4613d = new HashSet();

    /* renamed from: c */
    final Map<Class<?>, Object> f4612c = new HashMap();

    C1054a(Context context) {
        this.f4614e = context.getApplicationContext();
    }

    /* renamed from: c */
    public static C1054a m31149c(Context context) {
        if (f4610a == null) {
            synchronized (f4611b) {
                if (f4610a == null) {
                    f4610a = new C1054a(context);
                }
            }
        }
        return f4610a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m31151a() {
        try {
            try {
                C1790a.m28894a("Startup");
                Bundle bundle = this.f4614e.getPackageManager().getProviderInfo(new ComponentName(this.f4614e.getPackageName(), InitializationProvider.class.getName()), 128).metaData;
                String string = this.f4614e.getString(C1056c.androidx_startup);
                if (bundle != null) {
                    HashSet hashSet = new HashSet();
                    for (String str : bundle.keySet()) {
                        if (string.equals(bundle.getString(str, null))) {
                            Class<?> cls = Class.forName(str);
                            if (AbstractC1055b.class.isAssignableFrom(cls)) {
                                this.f4613d.add(cls);
                                m31150b(cls, hashSet);
                            }
                        }
                    }
                }
                C1790a.m28893b();
            } catch (Throwable th) {
                C1790a.m28893b();
                throw th;
            }
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException e) {
            throw new StartupException(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    <T> T m31150b(Class<? extends AbstractC1055b<?>> cls, Set<Class<?>> set) {
        Object obj;
        synchronized (f4611b) {
            if (C1790a.m28891d()) {
                C1790a.m28894a(cls.getSimpleName());
            }
            if (set.contains(cls)) {
                throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
            }
            if (!this.f4612c.containsKey(cls)) {
                set.add(cls);
                AbstractC1055b<?> newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                List<Class<? extends AbstractC1055b<?>>> mo30612a = newInstance.mo30612a();
                if (!mo30612a.isEmpty()) {
                    for (Class<? extends AbstractC1055b<?>> cls2 : mo30612a) {
                        if (!this.f4612c.containsKey(cls2)) {
                            m31150b(cls2, set);
                        }
                    }
                }
                Object mo30611b = newInstance.mo30611b(this.f4614e);
                set.remove(cls);
                this.f4612c.put(cls, mo30611b);
                obj = mo30611b;
            } else {
                obj = this.f4612c.get(cls);
            }
            C1790a.m28893b();
        }
        return obj;
    }
}
