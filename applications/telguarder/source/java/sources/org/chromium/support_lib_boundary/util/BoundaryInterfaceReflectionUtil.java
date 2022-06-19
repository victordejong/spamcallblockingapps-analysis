package org.chromium.support_lib_boundary.util;

import android.os.Build;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil.class */
public class BoundaryInterfaceReflectionUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* loaded from: classes3-dex2jar.jar:org/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil$InvocationHandlerWithDelegateGetter.class */
    public static class InvocationHandlerWithDelegateGetter implements InvocationHandler {
        private final Object mDelegate;

        public InvocationHandlerWithDelegateGetter(Object obj) {
            this.mDelegate = obj;
        }

        public Object getDelegate() {
            return this.mDelegate;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                return BoundaryInterfaceReflectionUtil.dupeMethod(method, this.mDelegate.getClass().getClassLoader()).invoke(this.mDelegate, objArr);
            } catch (InvocationTargetException e) {
                throw e.getTargetException();
            } catch (ReflectiveOperationException e2) {
                throw new RuntimeException("Reflection failed for method " + method, e2);
            }
        }
    }

    public static <T> T castToSuppLibClass(Class<T> cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(BoundaryInterfaceReflectionUtil.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002f, code lost:
        if (r3.contains(r4 + org.chromium.support_lib_boundary.util.Features.DEV_SUFFIX) != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean containsFeature(java.util.Collection<java.lang.String> r3, java.lang.String r4) {
        /*
            r0 = r3
            r1 = r4
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L3a
            boolean r0 = isDebuggable()
            if (r0 == 0) goto L35
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = ":dev"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r3
            r1 = r5
            java.lang.String r1 = r1.toString()
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L35
            goto L3a
        L35:
            r0 = 0
            r6 = r0
            goto L3c
        L3a:
            r0 = 1
            r6 = r0
        L3c:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil.containsFeature(java.util.Collection, java.lang.String):boolean");
    }

    public static boolean containsFeature(String[] strArr, String str) {
        return containsFeature(Arrays.asList(strArr), str);
    }

    public static InvocationHandler createInvocationHandlerFor(Object obj) {
        if (obj == null) {
            return null;
        }
        return new InvocationHandlerWithDelegateGetter(obj);
    }

    public static InvocationHandler[] createInvocationHandlersForArray(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        int length = objArr.length;
        InvocationHandler[] invocationHandlerArr = new InvocationHandler[length];
        for (int i = 0; i < length; i++) {
            invocationHandlerArr[i] = createInvocationHandlerFor(objArr[i]);
        }
        return invocationHandlerArr;
    }

    public static Method dupeMethod(Method method, ClassLoader classLoader) throws ClassNotFoundException, NoSuchMethodException {
        return Class.forName(method.getDeclaringClass().getName(), true, classLoader).getDeclaredMethod(method.getName(), method.getParameterTypes());
    }

    public static Object getDelegateFromInvocationHandler(InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return ((InvocationHandlerWithDelegateGetter) invocationHandler).getDelegate();
    }

    public static boolean instanceOfInOwnClassLoader(Object obj, String str) {
        try {
            return Class.forName(str, false, obj.getClass().getClassLoader()).isInstance(obj);
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    private static boolean isDebuggable() {
        return "eng".equals(Build.TYPE) || "userdebug".equals(Build.TYPE);
    }
}
