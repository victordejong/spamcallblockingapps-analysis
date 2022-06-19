package com.huawei.hms.api;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.huawei.hms.api.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/a.class */
public class C2249a {

    /* renamed from: b */
    public static final C2249a f7290b = new C2249a();

    /* renamed from: c */
    private static final Object f7291c = new Object();

    /* renamed from: a */
    public List<Activity> f7292a = new ArrayList(1);

    /* renamed from: a */
    public void m38167a(Activity activity) {
        synchronized (f7291c) {
            for (Activity activity2 : this.f7292a) {
                if (activity2 != null && activity2 != activity && !activity2.isFinishing()) {
                    activity2.finish();
                }
            }
            this.f7292a.add(activity);
        }
    }

    /* renamed from: b */
    public void m38166b(Activity activity) {
        synchronized (f7291c) {
            this.f7292a.remove(activity);
        }
    }
}
