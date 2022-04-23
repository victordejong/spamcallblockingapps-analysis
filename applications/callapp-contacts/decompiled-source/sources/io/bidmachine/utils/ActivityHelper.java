package io.bidmachine.utils;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/utils/ActivityHelper.class */
public class ActivityHelper {
    public static Activity getTopActivity() {
        Class<?> cls;
        Object invoke;
        Activity activity = null;
        Activity activity2 = null;
        try {
            cls = Class.forName("android.app.ActivityThread");
            invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (invoke == null) {
            return null;
        }
        Field declaredField = cls.getDeclaredField("mActivities");
        declaredField.setAccessible(true);
        Map map = (Map) declaredField.get(invoke);
        if (map != null && !map.isEmpty()) {
            Iterator it2 = map.values().iterator();
            while (true) {
                activity2 = activity;
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                Class<?> cls2 = next.getClass();
                Field declaredField2 = cls2.getDeclaredField("activityInfo");
                declaredField2.setAccessible(true);
                if (((ActivityInfo) declaredField2.get(next)) != null) {
                    Field declaredField3 = cls2.getDeclaredField("paused");
                    declaredField3.setAccessible(true);
                    Field declaredField4 = cls2.getDeclaredField("activity");
                    declaredField4.setAccessible(true);
                    if (!declaredField3.getBoolean(next)) {
                        activity2 = activity;
                        return (Activity) declaredField4.get(next);
                    } else if (activity == null) {
                        activity = (Activity) declaredField4.get(next);
                    }
                }
            }
            return activity2;
        }
        return null;
    }
}
