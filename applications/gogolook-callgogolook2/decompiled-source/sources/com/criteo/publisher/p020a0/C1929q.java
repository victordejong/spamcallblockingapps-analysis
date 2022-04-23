package com.criteo.publisher.p020a0;

import android.content.Context;
import android.util.Log;
import com.criteo.sync.sdk.AdvertisingInfoLoader;
import java.lang.reflect.InvocationTargetException;
/* renamed from: com.criteo.publisher.a0.q */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/q.class */
public class C1929q {
    /* renamed from: a */
    public static Class m35999a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            Log.e("ReflectionUtil", "Failed to get Class: " + str + " : " + e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    public static Object m36000a(Object obj, String str, Object... objArr) {
        if (obj == null || str == null || objArr == null) {
            return null;
        }
        try {
            int length = objArr.length;
            Class<?>[] clsArr = new Class[length];
            for (int i = 0; i < length; i++) {
                clsArr[i] = objArr[i].getClass();
            }
            return obj.getClass().getMethod(str, clsArr).invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            return null;
        } catch (NullPointerException e3) {
            e3.printStackTrace();
            return null;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static Object m35998a(String str, Context context) {
        if (str == null || context == null) {
            return null;
        }
        try {
            Class a = m35999a(AdvertisingInfoLoader.AdvertisingIdClientClassName);
            Object invoke = a.getMethod("getAdvertisingIdInfo", Context.class).invoke(a, context);
            return invoke.getClass().getDeclaredMethod(str, new Class[0]).invoke(invoke, new Object[0]);
        } catch (Exception e) {
            Log.e("ReflectionUtil", "Failed to callAdvertisingIdClient method: " + str + " with context: " + context.getClass().getName() + " : " + e.getMessage());
            return null;
        }
    }
}
