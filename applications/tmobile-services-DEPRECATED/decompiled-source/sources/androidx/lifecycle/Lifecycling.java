package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycling.class */
public class Lifecycling {

    /* renamed from: a */
    private static Map<Class<?>, Integer> f4028a = new HashMap();

    /* renamed from: b */
    private static Map<Class<?>, List<Constructor<? extends GeneratedAdapter>>> f4029b = new HashMap();

    /* renamed from: androidx.lifecycle.Lifecycling$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/Lifecycling$1.class */
    final class C03701 implements GenericLifecycleObserver {

        /* renamed from: f */
        final /* synthetic */ LifecycleEventObserver f4030f;

        @Override // androidx.lifecycle.LifecycleEventObserver
        /* renamed from: c */
        public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            this.f4030f.mo16457c(lifecycleOwner, event);
        }
    }

    private Lifecycling() {
    }

    /* renamed from: a */
    private static GeneratedAdapter m18212a(Constructor<? extends GeneratedAdapter> constructor, Object obj) {
        try {
            return (GeneratedAdapter) constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Nullable
    /* renamed from: b */
    private static Constructor<? extends GeneratedAdapter> m18211b(Class<?> cls) {
        String str;
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String c = m18210c(canonicalName);
            if (name.isEmpty()) {
                str = c;
            } else {
                str = name + "." + c;
            }
            Constructor declaredConstructor = Class.forName(str).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: c */
    public static String m18210c(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    /* renamed from: d */
    private static int m18209d(Class<?> cls) {
        Integer num = f4028a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int g = m18206g(cls);
        f4028a.put(cls, Integer.valueOf(g));
        return g;
    }

    /* renamed from: e */
    private static boolean m18208e(Class<?> cls) {
        return cls != null && LifecycleObserver.class.isAssignableFrom(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: f */
    public static LifecycleEventObserver m18207f(Object obj) {
        boolean z = obj instanceof LifecycleEventObserver;
        boolean z2 = obj instanceof FullLifecycleObserver;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((FullLifecycleObserver) obj, (LifecycleEventObserver) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((FullLifecycleObserver) obj, null);
        }
        if (z) {
            return (LifecycleEventObserver) obj;
        }
        Class<?> cls = obj.getClass();
        if (m18209d(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List<Constructor<? extends GeneratedAdapter>> list = f4029b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(m18212a(list.get(0), obj));
        }
        GeneratedAdapter[] generatedAdapterArr = new GeneratedAdapter[list.size()];
        for (int i = 0; i < list.size(); i++) {
            generatedAdapterArr[i] = m18212a(list.get(i), obj);
        }
        return new CompositeGeneratedAdaptersObserver(generatedAdapterArr);
    }

    /* renamed from: g */
    private static int m18206g(Class<?> cls) {
        Class<?>[] interfaces;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends GeneratedAdapter> b = m18211b(cls);
        if (b != null) {
            f4029b.put(cls, Collections.singletonList(b));
            return 2;
        } else if (ClassesInfoCache.f3963c.m18260d(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (m18208e(superclass)) {
                if (m18209d(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList(f4029b.get(superclass));
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (!m18208e(cls2)) {
                    arrayList = arrayList;
                } else if (m18209d(cls2) == 1) {
                    return 1;
                } else {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.addAll(f4029b.get(cls2));
                }
            }
            if (arrayList == null) {
                return 1;
            }
            f4029b.put(cls, arrayList);
            return 2;
        }
    }
}
