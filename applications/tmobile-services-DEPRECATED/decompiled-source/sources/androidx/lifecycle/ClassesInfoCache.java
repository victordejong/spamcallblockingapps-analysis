package androidx.lifecycle;

import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ClassesInfoCache.class */
class ClassesInfoCache {

    /* renamed from: c */
    static ClassesInfoCache f3963c = new ClassesInfoCache();

    /* renamed from: a */
    private final Map<Class<?>, CallbackInfo> f3964a = new HashMap();

    /* renamed from: b */
    private final Map<Class<?>, Boolean> f3965b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ClassesInfoCache$CallbackInfo.class */
    public static class CallbackInfo {

        /* renamed from: a */
        final Map<Lifecycle.Event, List<MethodReference>> f3966a = new HashMap();

        /* renamed from: b */
        final Map<MethodReference, Lifecycle.Event> f3967b;

        CallbackInfo(Map<MethodReference, Lifecycle.Event> map) {
            this.f3967b = map;
            for (Map.Entry<MethodReference, Lifecycle.Event> entry : map.entrySet()) {
                Lifecycle.Event value = entry.getValue();
                List<MethodReference> list = this.f3966a.get(value);
                List<MethodReference> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                    this.f3966a.put(value, list2);
                }
                list2.add(entry.getKey());
            }
        }

        /* renamed from: b */
        private static void m18257b(List<MethodReference> list, LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m18256a(lifecycleOwner, event, obj);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public void m18258a(LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            m18257b(this.f3966a.get(event), lifecycleOwner, event, obj);
            m18257b(this.f3966a.get(Lifecycle.Event.ON_ANY), lifecycleOwner, event, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ClassesInfoCache$MethodReference.class */
    public static class MethodReference {

        /* renamed from: a */
        final int f3968a;

        /* renamed from: b */
        final Method f3969b;

        MethodReference(int i, Method method) {
            this.f3968a = i;
            this.f3969b = method;
            method.setAccessible(true);
        }

        /* renamed from: a */
        void m18256a(LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            try {
                int i = this.f3968a;
                if (i == 0) {
                    this.f3969b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f3969b.invoke(obj, lifecycleOwner);
                } else if (i == 2) {
                    this.f3969b.invoke(obj, lifecycleOwner, event);
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || MethodReference.class != obj.getClass()) {
                return false;
            }
            MethodReference methodReference = (MethodReference) obj;
            if (this.f3968a != methodReference.f3968a || !this.f3969b.getName().equals(methodReference.f3969b.getName())) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f3968a * 31) + this.f3969b.getName().hashCode();
        }
    }

    ClassesInfoCache() {
    }

    /* renamed from: a */
    private CallbackInfo m18263a(Class<?> cls, @Nullable Method[] methodArr) {
        int i;
        CallbackInfo c;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (!(superclass == null || (c = m18261c(superclass)) == null)) {
            hashMap.putAll(c.f3967b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<MethodReference, Lifecycle.Event> entry : m18261c(cls2).f3967b.entrySet()) {
                m18259e(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m18262b(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (parameterTypes[0].isAssignableFrom(LifecycleOwner.class)) {
                    i = 1;
                } else {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                }
                Lifecycle.Event value = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(Lifecycle.Event.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    } else if (value == Lifecycle.Event.ON_ANY) {
                        i = 2;
                    } else {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                }
                if (parameterTypes.length <= 2) {
                    m18259e(hashMap, new MethodReference(i, method), value, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        CallbackInfo callbackInfo = new CallbackInfo(hashMap);
        this.f3964a.put(cls, callbackInfo);
        this.f3965b.put(cls, Boolean.valueOf(z));
        return callbackInfo;
    }

    /* renamed from: b */
    private Method[] m18262b(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* renamed from: e */
    private void m18259e(Map<MethodReference, Lifecycle.Event> map, MethodReference methodReference, Lifecycle.Event event, Class<?> cls) {
        Lifecycle.Event event2 = map.get(methodReference);
        if (event2 != null && event != event2) {
            Method method = methodReference.f3969b;
            throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + event2 + ", new value " + event);
        } else if (event2 == null) {
            map.put(methodReference, event);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public CallbackInfo m18261c(Class<?> cls) {
        CallbackInfo callbackInfo = this.f3964a.get(cls);
        return callbackInfo != null ? callbackInfo : m18263a(cls, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public boolean m18260d(Class<?> cls) {
        Boolean bool = this.f3965b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] b = m18262b(cls);
        for (Method method : b) {
            if (((OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class)) != null) {
                m18263a(cls, b);
                return true;
            }
        }
        this.f3965b.put(cls, Boolean.FALSE);
        return false;
    }
}
