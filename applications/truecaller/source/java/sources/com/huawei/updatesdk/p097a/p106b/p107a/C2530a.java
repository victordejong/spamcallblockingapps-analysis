package com.huawei.updatesdk.p097a.p106b.p107a;

import android.content.Context;
/* renamed from: com.huawei.updatesdk.a.b.a.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/b/a/a.class */
public class C2530a {

    /* renamed from: b */
    private static final Object f8212b = new Object();

    /* renamed from: c */
    private static C2530a f8213c;

    /* renamed from: a */
    private Context f8214a;

    public C2530a(Context context) {
        this.f8214a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static void m36756a(Context context) {
        synchronized (f8212b) {
            if (f8213c == null) {
                f8213c = new C2530a(context);
            }
        }
    }

    /* renamed from: c */
    public static C2530a m36754c() {
        C2530a c2530a;
        synchronized (f8212b) {
            c2530a = f8213c;
        }
        return c2530a;
    }

    /* renamed from: a */
    public Context m36757a() {
        return this.f8214a;
    }

    /* renamed from: b */
    public String m36755b() {
        Context context = this.f8214a;
        return (context == null || context.getFilesDir() == null) ? "" : this.f8214a.getFilesDir().getAbsolutePath();
    }
}
