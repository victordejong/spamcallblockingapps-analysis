package com.facebook.biddingkit.b;

import android.content.Context;
import com.facebook.biddingkit.d.i;
import com.facebook.biddingkit.e.b;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/b/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Context f19698a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile String f19699b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f19700c = false;

    public static Context a() {
        return f19698a;
    }

    public static void a(Context context) {
        synchronized (a.class) {
            try {
                a(context, "");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void a(final Context context, final String str) {
        synchronized (a.class) {
            try {
                if (!f19700c) {
                    if (context != null) {
                        f19698a = context.getApplicationContext();
                        f19700c = true;
                        f19699b = str;
                        com.facebook.biddingkit.e.a.f19728a.execute(new Runnable() { // from class: com.facebook.biddingkit.b.a.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                Context context2 = context;
                                i.a(context2, b.b(context2), "0.5.0", str);
                            }
                        });
                    } else {
                        throw new IllegalArgumentException("Missing Context");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String b() {
        return f19699b;
    }
}
