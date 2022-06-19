package io.agora.rtc.audio;

import com.tenor.android.core.constant.StringConstant;
import io.agora.rtc.internal.Logging;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/audio/ReflectUtils.class */
public class ReflectUtils {
    private static final String TAG = "ReflectUtils";

    public static Object safeCallMethod(Class cls, Object obj, String str, Class[] clsArr, Object[] objArr) {
        Method method;
        try {
            method = cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            method = null;
        }
        if (method == null) {
            StringBuilder m8728C = C22128a.m8728C("cannot  find method:  ");
            m8728C.append(cls.getSimpleName());
            m8728C.append(StringConstant.DOT);
            m8728C.append(str);
            m8728C.append(StringConstant.COLON);
            m8728C.append(Arrays.toString(clsArr));
            Logging.m3709e(TAG, m8728C.toString());
            return null;
        }
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            Logging.m3709e(TAG, "cannot  execute method:  " + cls.getSimpleName() + StringConstant.DOT + str + StringConstant.COLON + Arrays.toString(clsArr));
            return null;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            Logging.m3709e(TAG, "cannot  execute method:  " + cls.getSimpleName() + StringConstant.DOT + str + StringConstant.COLON + Arrays.toString(clsArr));
            return null;
        }
    }

    public static Class safeFindClass(String str) {
        Class<?> cls;
        try {
            cls = Class.forName(str);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            cls = null;
        }
        return cls;
    }

    public static Method safeGetMethod(Class cls, String str, Class... clsArr) {
        Method method;
        try {
            method = cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            method = null;
        }
        return method;
    }
}
