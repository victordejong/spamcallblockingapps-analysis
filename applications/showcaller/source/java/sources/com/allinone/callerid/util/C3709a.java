package com.allinone.callerid.util;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.util.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/a.class */
public class C3709a {

    /* renamed from: a */
    public static List<Activity> f11899a = new ArrayList();

    /* renamed from: a */
    public static void m24672a(Activity activity) {
        try {
            f11899a.add(activity);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m24671b() {
        try {
            for (Activity activity : f11899a) {
                if (!activity.isFinishing()) {
                    activity.finish();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m24670c(Activity activity) {
        try {
            f11899a.remove(activity);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
