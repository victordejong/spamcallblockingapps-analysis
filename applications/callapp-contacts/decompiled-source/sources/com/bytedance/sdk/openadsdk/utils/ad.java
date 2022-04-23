package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ad.class */
public class ad {
    public static Class<?> a(String str) {
        Class<?> cls;
        try {
            cls = Class.forName(str, true, a());
        } catch (ClassNotFoundException e) {
            try {
                cls = Class.forName(str, true, ad.class.getClassLoader());
            } catch (ClassNotFoundException e2) {
                try {
                    cls = Class.forName(str);
                } catch (ClassNotFoundException e3) {
                    cls = null;
                }
            }
        }
        return cls;
    }

    private static ClassLoader a() {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        ClassLoader classLoader = contextClassLoader;
        if (contextClassLoader == null) {
            classLoader = ad.class.getClassLoader();
        }
        return classLoader;
    }

    public static Method a(String str, String str2, Class<?>... clsArr) {
        Method method = null;
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(str2)) {
                method = null;
            } else {
                try {
                    Class<?> a2 = a(str);
                    method = null;
                    if (a2 != null) {
                        method = a2.getMethod(str2, clsArr);
                    }
                } catch (Throwable th) {
                    q.a("TTClassLoader", "get method: " + str + ", " + str2, th);
                    method = null;
                }
            }
        }
        return method;
    }
}
