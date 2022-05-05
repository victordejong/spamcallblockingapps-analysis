package p081h.p203i.p204a.p224e.p235d.p251t;

import android.content.Context;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
/* renamed from: h.i.a.e.d.t.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/t/a.class */
public class C7095a {

    /* renamed from: a */
    public static Context f17208a;

    /* renamed from: b */
    public static Boolean f17209b;

    /* renamed from: a */
    public static boolean m21096a(Context context) {
        synchronized (C7095a.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (f17208a == null || f17209b == null || f17208a != applicationContext) {
                    f17209b = null;
                    if (C7083o.m21122j()) {
                        f17209b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                    } else {
                        try {
                            context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                            f17209b = true;
                        } catch (ClassNotFoundException e) {
                            f17209b = false;
                        }
                    }
                    f17208a = applicationContext;
                    return f17209b.booleanValue();
                }
                return f17209b.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
