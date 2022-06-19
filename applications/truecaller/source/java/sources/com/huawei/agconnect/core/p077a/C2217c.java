package com.huawei.agconnect.core.p077a;

import android.content.Context;
import com.huawei.agconnect.AGConnectInstance;
import com.huawei.agconnect.core.Service;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.huawei.agconnect.core.a.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/agconnect/core/a/c.class */
public final class C2217c {

    /* renamed from: a */
    private final Map<Class<?>, Service> f7161a = new HashMap();

    /* renamed from: b */
    private final Map<Class<?>, Object> f7162b = new HashMap();

    public C2217c(List<Service> list) {
        m38262a(list);
    }

    /* renamed from: a */
    private Object m38265a(AGConnectInstance aGConnectInstance, Service service) {
        if (service.getInstance() != null) {
            return service.getInstance();
        }
        Class<?> type = service.getType();
        if (type == null) {
            return null;
        }
        try {
            Constructor m38263a = m38263a(type, Context.class, AGConnectInstance.class);
            if (m38263a != null) {
                return m38263a.newInstance(aGConnectInstance.getContext(), aGConnectInstance);
            }
            Constructor m38263a2 = m38263a(type, Context.class);
            return m38263a2 != null ? m38263a2.newInstance(aGConnectInstance.getContext()) : type.newInstance();
        } catch (IllegalAccessException e) {
            e.getLocalizedMessage();
            return null;
        } catch (InstantiationException e2) {
            e2.getLocalizedMessage();
            return null;
        } catch (InvocationTargetException e3) {
            e3.getLocalizedMessage();
            return null;
        }
    }

    /* renamed from: a */
    private static Constructor m38263a(Class cls, Class... clsArr) {
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        int length = declaredConstructors.length;
        int i = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i < length) {
                Constructor<?> constructor = declaredConstructors[i];
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                boolean z3 = z2;
                if (parameterTypes.length == clsArr.length) {
                    for (int i2 = 0; i2 < clsArr.length; i2++) {
                        z2 = parameterTypes[i2] == clsArr[i2];
                    }
                    z3 = z2;
                    if (z2) {
                        return constructor;
                    }
                }
                i++;
                z = z3;
            } else {
                return null;
            }
        }
    }

    /* renamed from: a */
    public <T> T m38264a(AGConnectInstance aGConnectInstance, Class<?> cls) {
        T t;
        Service service = this.f7161a.get(cls);
        if (service == null) {
            return null;
        }
        if (service.isSingleton() && (t = (T) this.f7162b.get(cls)) != null) {
            return t;
        }
        T t2 = (T) m38265a(aGConnectInstance, service);
        if (t2 != null && service.isSingleton()) {
            this.f7162b.put(cls, t2);
        }
        return t2;
    }

    /* renamed from: a */
    public void m38262a(List<Service> list) {
        if (list == null) {
            return;
        }
        for (Service service : list) {
            this.f7161a.put(service.getInterface(), service);
        }
    }
}
