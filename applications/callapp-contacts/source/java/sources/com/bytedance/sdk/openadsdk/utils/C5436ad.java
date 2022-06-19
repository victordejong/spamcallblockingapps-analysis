package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import java.lang.reflect.Method;
/* renamed from: com.bytedance.sdk.openadsdk.utils.ad */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ad.class */
public class C5436ad {
    /* renamed from: a */
    public static Class<?> m32319a(String str) {
        Class<?> cls;
        try {
            cls = Class.forName(str, true, m32320a());
        } catch (ClassNotFoundException e) {
            try {
                cls = Class.forName(str, true, C5436ad.class.getClassLoader());
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

    /* renamed from: a */
    private static ClassLoader m32320a() {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        ClassLoader classLoader = contextClassLoader;
        if (contextClassLoader == null) {
            classLoader = C5436ad.class.getClassLoader();
        }
        return classLoader;
    }

    /* renamed from: a */
    public static Method m32318a(String str, String str2, Class<?>... clsArr) {
        Method method = null;
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(str2)) {
                method = null;
            } else {
                try {
                    Class<?> m32319a = m32319a(str);
                    method = null;
                    if (m32319a != null) {
                        method = m32319a.getMethod(str2, clsArr);
                    }
                } catch (Throwable th) {
                    C5478q.m32117a("TTClassLoader", "get method: " + str + ", " + str2, th);
                    method = null;
                }
            }
        }
        return method;
    }
}
