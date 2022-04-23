package com.facebook.appevents.p035q;

import android.app.Activity;
import androidx.annotation.RestrictTo;
import com.facebook.internal.C2381b;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2464o;
import com.facebook.internal.C2466p;
import java.util.concurrent.atomic.AtomicBoolean;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.appevents.q.a */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/q/a.class */
public final class C2290a {

    /* renamed from: a */
    public static final String f2721a = "com.facebook.appevents.q.a";

    /* renamed from: b */
    public static final AtomicBoolean f2722b = new AtomicBoolean(false);

    /* renamed from: com.facebook.appevents.q.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/q/a$a.class */
    public static final class RunnableC2291a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (!C2381b.m34920g(C6135n.m23746e())) {
                C2290a.f2722b.set(true);
                C2290a.m35265d();
            }
        }
    }

    /* renamed from: a */
    public static void m35268a(Activity activity) {
        try {
            if (f2722b.get() && !C2293c.m35254d().isEmpty()) {
                ViewTreeObserver$OnGlobalFocusChangeListenerC2294d.m35251a(activity);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: c */
    public static void m35266c() {
        try {
            C6135n.m23737n().execute(new RunnableC2291a());
        } catch (Exception e) {
            C2408g0.m34853a(f2721a, e);
        }
    }

    /* renamed from: d */
    public static void m35265d() {
        String i;
        C2464o a = C2466p.m34643a(C6135n.m23745f(), false);
        if (a != null && (i = a.m34658i()) != null) {
            C2293c.m35258a(i);
        }
    }
}
