package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.l */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/l.class */
public class C0875l {

    /* renamed from: a */
    private static Map<Class, Integer> f2993a = new HashMap();

    /* renamed from: b */
    private static Map<Class, List<Constructor<? extends AbstractC0862c>>> f2994b = new HashMap();

    /* renamed from: a */
    private static AbstractC0862c m19199a(Constructor<? extends AbstractC0862c> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: a */
    public static AbstractC0867f m19201a(Object obj) {
        AbstractC0867f reflectiveGenericLifecycleObserver;
        boolean z = obj instanceof AbstractC0867f;
        boolean z2 = obj instanceof AbstractC0861b;
        if (z && z2) {
            reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((AbstractC0861b) obj, (AbstractC0867f) obj);
        } else if (z2) {
            reflectiveGenericLifecycleObserver = new FullLifecycleObserverAdapter((AbstractC0861b) obj, null);
        } else if (z) {
            reflectiveGenericLifecycleObserver = (AbstractC0867f) obj;
        } else {
            Class<?> cls = obj.getClass();
            if (m19198b(cls) == 2) {
                List<Constructor<? extends AbstractC0862c>> list = f2994b.get(cls);
                if (list.size() == 1) {
                    reflectiveGenericLifecycleObserver = new SingleGeneratedAdapterObserver(m19199a(list.get(0), obj));
                } else {
                    AbstractC0862c[] abstractC0862cArr = new AbstractC0862c[list.size()];
                    for (int i = 0; i < list.size(); i++) {
                        abstractC0862cArr[i] = m19199a(list.get(i), obj);
                    }
                    reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(abstractC0862cArr);
                }
            } else {
                reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(obj);
            }
        }
        return reflectiveGenericLifecycleObserver;
    }

    /* renamed from: a */
    public static String m19200a(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private static Constructor<? extends AbstractC0862c> m19202a(Class<?> cls) {
        Constructor<? extends AbstractC0862c> constructor;
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String m19200a = m19200a(canonicalName);
            Constructor<? extends AbstractC0862c> declaredConstructor = Class.forName(name.isEmpty() ? m19200a : name + "." + m19200a).getDeclaredConstructor(cls);
            constructor = declaredConstructor;
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
                constructor = declaredConstructor;
            }
        } catch (ClassNotFoundException e) {
            constructor = null;
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        }
        return constructor;
    }

    /* renamed from: b */
    private static int m19198b(Class<?> cls) {
        int m19197c;
        Integer num = f2993a.get(cls);
        if (num != null) {
            m19197c = num.intValue();
        } else {
            m19197c = m19197c(cls);
            f2993a.put(cls, Integer.valueOf(m19197c));
        }
        return m19197c;
    }

    /* renamed from: c */
    private static int m19197c(Class<?> cls) {
        int i;
        if (cls.getCanonicalName() == null) {
            i = 1;
        } else {
            Constructor<? extends AbstractC0862c> m19202a = m19202a(cls);
            if (m19202a != null) {
                f2994b.put(cls, Collections.singletonList(m19202a));
                i = 2;
            } else if (C0858a.f2967a.m19239a(cls)) {
                i = 1;
            } else {
                Class<? super Object> superclass = cls.getSuperclass();
                ArrayList arrayList = null;
                if (m19196d(superclass)) {
                    if (m19198b(superclass) == 1) {
                        i = 1;
                    } else {
                        arrayList = new ArrayList(f2994b.get(superclass));
                    }
                }
                Class<?>[] interfaces = cls.getInterfaces();
                int length = interfaces.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        Class<?> cls2 = interfaces[i2];
                        if (m19196d(cls2)) {
                            if (m19198b(cls2) == 1) {
                                i = 1;
                                break;
                            }
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.addAll(f2994b.get(cls2));
                        }
                        i2++;
                    } else if (arrayList != null) {
                        f2994b.put(cls, arrayList);
                        i = 2;
                    } else {
                        i = 1;
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: d */
    private static boolean m19196d(Class<?> cls) {
        return cls != null && AbstractC0868g.class.isAssignableFrom(cls);
    }
}
