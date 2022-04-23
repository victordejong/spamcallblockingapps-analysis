package com.lidroid.xutils.view;

import android.view.View;
import com.lidroid.xutils.util.DoubleKeyValueMap;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.view.annotation.event.EventBase;
import java.lang.annotation.Annotation;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/view/EventListenerManager.class */
public class EventListenerManager {
    private static final DoubleKeyValueMap<ViewInjectInfo, Class<?>, Object> listenerCache = new DoubleKeyValueMap<>();

    /* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/view/EventListenerManager$DynamicHandler.class */
    public static class DynamicHandler implements InvocationHandler {
        private WeakReference<Object> handlerRef;
        private final HashMap<String, Method> methodMap = new HashMap<>(1);

        public DynamicHandler(Object obj) {
            this.handlerRef = new WeakReference<>(obj);
        }

        public void addMethod(String str, Method method) {
            this.methodMap.put(str, method);
        }

        public Object getHandler() {
            return this.handlerRef.get();
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2 = this.handlerRef.get();
            if (obj2 == null) {
                return null;
            }
            Method method2 = this.methodMap.get(method.getName());
            if (method2 != null) {
                return method2.invoke(obj2, objArr);
            }
            return null;
        }

        public void setHandler(Object obj) {
            this.handlerRef = new WeakReference<>(obj);
        }
    }

    private EventListenerManager() {
    }

    public static void addEventMethod(ViewFinder viewFinder, ViewInjectInfo viewInjectInfo, Annotation annotation, Object obj, Method method) {
        boolean z;
        try {
            View findViewByInfo = viewFinder.findViewByInfo(viewInjectInfo);
            if (findViewByInfo != null) {
                EventBase annotation2 = annotation.annotationType().getAnnotation(EventBase.class);
                Class<?> listenerType = annotation2.listenerType();
                String listenerSetter = annotation2.listenerSetter();
                String methodName = annotation2.methodName();
                DoubleKeyValueMap<ViewInjectInfo, Class<?>, Object> doubleKeyValueMap = listenerCache;
                Object obj2 = doubleKeyValueMap.get(viewInjectInfo, listenerType);
                if (obj2 != null) {
                    DynamicHandler dynamicHandler = (DynamicHandler) Proxy.getInvocationHandler(obj2);
                    boolean equals = obj.equals(dynamicHandler.getHandler());
                    z = equals;
                    if (equals) {
                        dynamicHandler.addMethod(methodName, method);
                        z = equals;
                    }
                } else {
                    z = false;
                }
                if (!z) {
                    DynamicHandler dynamicHandler2 = new DynamicHandler(obj);
                    dynamicHandler2.addMethod(methodName, method);
                    obj2 = Proxy.newProxyInstance(listenerType.getClassLoader(), new Class[]{listenerType}, dynamicHandler2);
                    doubleKeyValueMap.put(viewInjectInfo, listenerType, obj2);
                }
                findViewByInfo.getClass().getMethod(listenerSetter, listenerType).invoke(findViewByInfo, obj2);
            }
        } catch (Throwable th) {
            LogUtils.m2008e(th.getMessage(), th);
        }
    }
}
