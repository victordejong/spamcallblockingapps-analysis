package com.callerid.block.util;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.callerid.block.util.a */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/a.class */
public class C1163a {

    /* renamed from: a */
    public static List<Activity> f4974a = new ArrayList();

    /* renamed from: a */
    public static void m9924a(Activity activity) {
        try {
            f4974a.add(activity);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m9923b() {
        try {
            for (Activity activity : f4974a) {
                if (!activity.isFinishing()) {
                    activity.finish();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m9922c(Activity activity) {
        try {
            f4974a.remove(activity);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
