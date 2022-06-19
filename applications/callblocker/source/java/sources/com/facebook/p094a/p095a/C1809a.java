package com.facebook.p094a.p095a;

import android.app.Activity;
import com.facebook.C2095j;
import com.facebook.internal.C1994a;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2079x;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.facebook.a.a.a */
/* loaded from: classes-dex2jar.jar:com/facebook/a/a/a.class */
public final class C1809a {

    /* renamed from: a */
    private static final String f5501a = C1809a.class.getCanonicalName();

    /* renamed from: b */
    private static final AtomicBoolean f5502b = new AtomicBoolean(false);

    /* renamed from: a */
    public static void m16230a() {
        try {
            C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.a.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!C1994a.m15697a(C2095j.m15360h())) {
                        C1809a.f5502b.set(true);
                        C1809a.m16226d();
                    }
                }
            });
        } catch (Exception e) {
            C2079x.m15470a(f5501a, e);
        }
    }

    /* renamed from: a */
    public static void m16229a(Activity activity) {
        try {
            if (!f5502b.get() || C1812c.m16220a().isEmpty()) {
                return;
            }
            ViewTreeObserver$OnGlobalFocusChangeListenerC1813d.m16212a(activity);
        } catch (Exception e) {
        }
    }

    /* renamed from: d */
    public static void m16226d() {
        String m15594l;
        C2048l m15584a = C2050m.m15584a(C2095j.m15356l(), false);
        if (m15584a == null || (m15594l = m15584a.m15594l()) == null) {
            return;
        }
        C1812c.m16219a(m15594l);
    }
}
