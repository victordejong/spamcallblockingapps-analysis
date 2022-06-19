package com.facebook.biddingkit.p291b;

import android.content.Context;
import com.facebook.biddingkit.p293d.C10138i;
import com.facebook.biddingkit.p294e.C10142b;
import com.facebook.biddingkit.p294e.ExecutorC10140a;
/* renamed from: com.facebook.biddingkit.b.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/b/a.class */
public final class C10115a {

    /* renamed from: a */
    private static volatile Context f33499a;

    /* renamed from: b */
    private static volatile String f33500b;

    /* renamed from: c */
    private static boolean f33501c = false;

    /* renamed from: a */
    public static Context m23377a() {
        return f33499a;
    }

    /* renamed from: a */
    public static void m23376a(Context context) {
        synchronized (C10115a.class) {
            try {
                m23375a(context, "");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static void m23375a(final Context context, final String str) {
        synchronized (C10115a.class) {
            try {
                if (!f33501c) {
                    if (context == null) {
                        throw new IllegalArgumentException("Missing Context");
                    }
                    f33499a = context.getApplicationContext();
                    f33501c = true;
                    f33500b = str;
                    ExecutorC10140a.f33532a.execute(new Runnable() { // from class: com.facebook.biddingkit.b.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            Context context2 = context;
                            C10138i.m23346a(context2, C10142b.m23344b(context2), "0.5.0", str);
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static String m23374b() {
        return f33500b;
    }
}
