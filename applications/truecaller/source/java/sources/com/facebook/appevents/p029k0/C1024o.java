package com.facebook.appevents.p029k0;

import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007JC\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\n\u001a\u00020\u00062\u001e\u0010\u000b\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00040\f\"\b\u0012\u0002\b\u0003\u0018\u00010\u0004H\u0007¢\u0006\u0002\u0010\rJE\u0010\u000e\u001a\u0004\u0018\u00010\u00012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u000f\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u0016\u0010\u000b\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\f\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0002\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseUtils;", "", "()V", "getClass", "Ljava/lang/Class;", "className", "", "getMethod", "Ljava/lang/reflect/Method;", "clazz", "methodName", "args", "", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "invokeMethod", AnalyticsConstants.METHOD, "obj", "(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.k0.o */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/o.class */
public final class C1024o {
    /* renamed from: a */
    public static final Class<?> m41875a(String str) {
        Class<?> cls;
        if (C1220a.m41623b(C1024o.class)) {
            return null;
        }
        try {
            l.e(str, "className");
            try {
                cls = Class.forName(str);
            } catch (ClassNotFoundException e) {
                cls = null;
            }
            return cls;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1024o.class);
            return null;
        }
    }

    /* renamed from: b */
    public static final Method m41874b(Class<?> cls, String str, Class<?>... clsArr) {
        Method method;
        if (C1220a.m41623b(C1024o.class)) {
            return null;
        }
        try {
            l.e(cls, "clazz");
            l.e(str, "methodName");
            l.e(clsArr, "args");
            try {
                method = cls.getMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            } catch (NoSuchMethodException e) {
                method = null;
            }
            return method;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1024o.class);
            return null;
        }
    }

    /* renamed from: c */
    public static final Object m41873c(Class<?> cls, Method method, Object obj, Object... objArr) {
        if (C1220a.m41623b(C1024o.class)) {
            return null;
        }
        try {
            l.e(cls, "clazz");
            l.e(method, AnalyticsConstants.METHOD);
            l.e(objArr, "args");
            Object obj2 = obj;
            if (obj != null) {
                obj2 = cls.cast(obj);
            }
            try {
                return method.invoke(obj2, Arrays.copyOf(objArr, objArr.length));
            } catch (IllegalAccessException | InvocationTargetException e) {
                return null;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1024o.class);
            return null;
        }
    }
}
