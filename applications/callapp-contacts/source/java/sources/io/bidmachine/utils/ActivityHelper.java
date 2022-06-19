package io.bidmachine.utils;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/utils/ActivityHelper.class */
public class ActivityHelper {
    public static Activity getTopActivity() {
        Activity activity;
        Class<?> cls;
        Object invoke;
        Activity activity2 = null;
        Activity activity3 = null;
        try {
            cls = Class.forName("android.app.ActivityThread");
            invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
            activity = activity3;
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
                Activity activity4 = activity2;
                activity = activity2;
                if (!it2.hasNext()) {
                    break;
                }
                Activity activity5 = activity2;
                Object next = it2.next();
                Activity activity6 = activity2;
                Class<?> cls2 = next.getClass();
                Activity activity7 = activity2;
                Field declaredField2 = cls2.getDeclaredField("activityInfo");
                Activity activity8 = activity2;
                declaredField2.setAccessible(true);
                Activity activity9 = activity2;
                if (((ActivityInfo) declaredField2.get(next)) != null) {
                    Activity activity10 = activity2;
                    Field declaredField3 = cls2.getDeclaredField("paused");
                    Activity activity11 = activity2;
                    declaredField3.setAccessible(true);
                    Activity activity12 = activity2;
                    Field declaredField4 = cls2.getDeclaredField("activity");
                    Activity activity13 = activity2;
                    declaredField4.setAccessible(true);
                    Activity activity14 = activity2;
                    if (!declaredField3.getBoolean(next)) {
                        activity3 = activity2;
                        return (Activity) declaredField4.get(next);
                    } else if (activity2 == null) {
                        activity2 = (Activity) declaredField4.get(next);
                    }
                }
            }
            return activity;
        }
        return null;
    }
}
