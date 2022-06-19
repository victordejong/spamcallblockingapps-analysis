package com.huawei.secure.android.common.util;

import android.app.Activity;
import android.view.Window;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/ScreenUtil.class */
public class ScreenUtil {

    /* renamed from: a */
    private static final String f8140a = "ScreenUtil";

    /* renamed from: b */
    private static final int f8141b = 524288;

    /* renamed from: com.huawei.secure.android.common.util.ScreenUtil$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/ScreenUtil$a.class */
    public static class C2498a implements PrivilegedAction {

        /* renamed from: a */
        public Method f8142a;

        public C2498a(Method method) {
            this.f8142a = method;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            Method method = this.f8142a;
            if (method == null) {
                return null;
            }
            method.setAccessible(true);
            return null;
        }
    }

    /* renamed from: a */
    private static void m36900a(Activity activity, int i) {
        if (activity == null || activity.isFinishing()) {
            LogsUtil.m36921e("", "activity is null");
        } else {
            activity.getWindow().addFlags(i);
        }
    }

    /* renamed from: b */
    private static void m36899b(Activity activity, int i) {
        if (activity == null || activity.isFinishing()) {
            LogsUtil.m36921e("", "activity is null");
        } else {
            activity.getWindow().clearFlags(i);
        }
    }

    public static void disableScreenshots(Activity activity) {
        m36900a(activity, 8192);
    }

    public static void enableScreenshots(Activity activity) {
        m36899b(activity, 8192);
    }

    public static void hideOverlayWindows(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        try {
            Window window = activity.getWindow();
            Method declaredMethod = Class.forName("android.view.Window").getDeclaredMethod("addPrivateFlags", Integer.TYPE);
            AccessController.doPrivileged(new C2498a(declaredMethod));
            declaredMethod.invoke(window, Integer.valueOf((int) f8141b));
        } catch (ClassNotFoundException e) {
            LogsUtil.m36921e(f8140a, "hideOverlayWindows ClassNotFoundException");
        } catch (IllegalAccessException e2) {
            LogsUtil.m36921e(f8140a, "hideOverlayWindows IllegalAccessException");
        } catch (NoSuchMethodException e3) {
            LogsUtil.m36921e(f8140a, "hideOverlayWindows NoSuchMethodException");
        } catch (InvocationTargetException e4) {
            LogsUtil.m36921e(f8140a, "hideOverlayWindows InvocationTargetException");
        }
    }
}
