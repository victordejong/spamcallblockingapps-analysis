package org.xutils.view;

import android.text.TextUtils;
import android.view.View;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.xutils.common.util.DoubleKeyValueMap;
import org.xutils.common.util.LogUtil;
import org.xutils.view.annotation.Event;
/* loaded from: classes2-dex2jar.jar:org/xutils/view/EventListenerManager.class */
final class EventListenerManager {

    /* renamed from: a */
    private static final HashSet<String> f40883a;

    /* renamed from: b */
    private static final DoubleKeyValueMap<C9681b, Class<?>, Object> f40884b = new DoubleKeyValueMap<>();

    /* loaded from: classes2-dex2jar.jar:org/xutils/view/EventListenerManager$DynamicHandler.class */
    public static class DynamicHandler implements InvocationHandler {

        /* renamed from: a */
        private static long f40885a;

        /* renamed from: b */
        private WeakReference<Object> f40886b;

        /* renamed from: c */
        private final HashMap<String, Method> f40887c = new HashMap<>(1);

        public DynamicHandler(Object obj) {
            this.f40886b = new WeakReference<>(obj);
        }

        public void addMethod(String str, Method method) {
            this.f40887c.put(str, method);
        }

        public Object getHandler() {
            return this.f40886b.get();
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2 = this.f40886b.get();
            if (obj2 != null) {
                String name = method.getName();
                if ("toString".equals(name)) {
                    return DynamicHandler.class.getSimpleName();
                }
                Method method2 = this.f40887c.get(name);
                Method method3 = method2;
                if (method2 == null) {
                    method3 = method2;
                    if (this.f40887c.size() == 1) {
                        Iterator<Map.Entry<String, Method>> it = this.f40887c.entrySet().iterator();
                        method3 = method2;
                        if (it.hasNext()) {
                            Map.Entry<String, Method> next = it.next();
                            method3 = method2;
                            if (TextUtils.isEmpty(next.getKey())) {
                                method3 = next.getValue();
                            }
                        }
                    }
                }
                if (method3 == null) {
                    LogUtil.m253w("method not impl: " + name + "(" + obj2.getClass().getSimpleName() + ")");
                    return null;
                }
                if (EventListenerManager.f40883a.contains(name)) {
                    long currentTimeMillis = System.currentTimeMillis() - f40885a;
                    if (currentTimeMillis > 0 && currentTimeMillis < 300) {
                        LogUtil.m261d("onClick cancelled: " + currentTimeMillis);
                        return null;
                    }
                    f40885a = System.currentTimeMillis();
                }
                try {
                    return method3.invoke(obj2, objArr);
                } catch (Throwable th) {
                    throw new RuntimeException("invoke method error:" + obj2.getClass().getName() + "#" + method3.getName(), th);
                }
            }
            return null;
        }
    }

    static {
        HashSet<String> hashSet = new HashSet<>(2);
        f40883a = hashSet;
        hashSet.add("onClick");
        hashSet.add("onItemClick");
    }

    /* renamed from: b */
    public static void m133b(C9680a c9680a, C9681b c9681b, Event event, Object obj, Method method) {
        boolean z;
        try {
            View m128c = c9680a.m128c(c9681b);
            if (m128c == null) {
                return;
            }
            Class<?> type = event.type();
            String str = event.setter();
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                str2 = "set" + type.getSimpleName();
            }
            String method2 = event.method();
            DoubleKeyValueMap<C9681b, Class<?>, Object> doubleKeyValueMap = f40884b;
            Object obj2 = doubleKeyValueMap.get(c9681b, type);
            if (obj2 != null) {
                DynamicHandler dynamicHandler = (DynamicHandler) Proxy.getInvocationHandler(obj2);
                boolean equals = obj.equals(dynamicHandler.getHandler());
                z = equals;
                if (equals) {
                    dynamicHandler.addMethod(method2, method);
                    z = equals;
                }
            } else {
                z = false;
            }
            if (!z) {
                DynamicHandler dynamicHandler2 = new DynamicHandler(obj);
                dynamicHandler2.addMethod(method2, method);
                obj2 = Proxy.newProxyInstance(type.getClassLoader(), new Class[]{type}, dynamicHandler2);
                doubleKeyValueMap.put(c9681b, type, obj2);
            }
            m128c.getClass().getMethod(str2, type).invoke(m128c, obj2);
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
        }
    }
}
