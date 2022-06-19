package com.huawei.hms.availableupdate;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.huawei.hms.availableupdate.m */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/m.class */
public class C2263m {

    /* renamed from: c */
    public static final C2263m f7331c = new C2263m();

    /* renamed from: d */
    public static final Object f7332d = new Object();

    /* renamed from: a */
    public final AtomicBoolean f7333a = new AtomicBoolean(false);

    /* renamed from: b */
    public List<Activity> f7334b = new ArrayList(1);

    /* renamed from: a */
    public AtomicBoolean m38144a() {
        return this.f7333a;
    }

    /* renamed from: a */
    public void m38143a(Activity activity) {
        synchronized (f7332d) {
            for (Activity activity2 : this.f7334b) {
                if (activity2 != null && activity2 != activity && !activity2.isFinishing()) {
                    activity2.finish();
                }
            }
            this.f7334b.add(activity);
        }
    }

    /* renamed from: a */
    public void m38142a(boolean z) {
        this.f7333a.set(z);
    }

    /* renamed from: b */
    public void m38141b(Activity activity) {
        synchronized (f7332d) {
            this.f7334b.remove(activity);
        }
    }
}
