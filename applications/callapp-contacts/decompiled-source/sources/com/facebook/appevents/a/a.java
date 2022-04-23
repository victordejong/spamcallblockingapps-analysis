package com.facebook.appevents.a;

import android.app.Activity;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.b;
import com.facebook.internal.p;
import com.facebook.internal.q;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19418a = "com.facebook.appevents.a.a";

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f19419b = Boolean.FALSE;

    static /* synthetic */ Boolean a(Boolean bool) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        try {
            f19419b = bool;
            return bool;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    public static void a() {
        try {
            if (!com.facebook.internal.b.b.a.a(a.class)) {
                try {
                    g.f().execute(new Runnable() { // from class: com.facebook.appevents.a.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!com.facebook.internal.b.b.a.a(this)) {
                                try {
                                    if (!b.a(g.i())) {
                                        a.b();
                                        a.a(Boolean.TRUE);
                                    }
                                } catch (Throwable th) {
                                    com.facebook.internal.b.b.a.a(th, this);
                                }
                            }
                        }
                    });
                } catch (Exception e) {
                    ae.a(f19418a, e);
                }
            }
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
        }
    }

    public static void a(Activity activity) {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                if (f19419b.booleanValue() && !c.a().isEmpty()) {
                    d.a(activity);
                }
            } catch (Exception e) {
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    static /* synthetic */ void b() {
        p a2;
        String str;
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                if (!com.facebook.internal.b.b.a.a(a.class) && (a2 = q.a(g.m(), false)) != null && (str = a2.j) != null) {
                    c.a(str);
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }
}
