package com.facebook.appevents.h;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.appevents.c;
import com.facebook.g;
import com.facebook.internal.ae;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<String> f19603a = new HashSet(Arrays.asList("fb_mobile_purchase", "StartTrial", "Subscribe"));

    public static void a(final String str, final c cVar) {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                if (a(cVar)) {
                    g.f().execute(new Runnable() { // from class: com.facebook.appevents.h.a.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!com.facebook.internal.b.b.a.a(this)) {
                                try {
                                    c.a(str, Arrays.asList(cVar));
                                } catch (Throwable th) {
                                    com.facebook.internal.b.b.a.a(th, this);
                                }
                            }
                        }
                    });
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    public static void a(final String str, final String str2) {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                final Context i = g.i();
                if (i != null && str != null) {
                    g.f().execute(new Runnable() { // from class: com.facebook.appevents.h.a.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!com.facebook.internal.b.b.a.a(this)) {
                                try {
                                    SharedPreferences sharedPreferences = i.getSharedPreferences(str2, 0);
                                    String str3 = str + "pingForOnDevice";
                                    if (sharedPreferences.getLong(str3, 0L) == 0) {
                                        c.a(str);
                                        SharedPreferences.Editor edit = sharedPreferences.edit();
                                        edit.putLong(str3, System.currentTimeMillis());
                                        edit.apply();
                                    }
                                } catch (Throwable th) {
                                    com.facebook.internal.b.b.a.a(th, this);
                                }
                            }
                        }
                    });
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    public static boolean a() {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return false;
        }
        try {
            if (!g.b(g.i()) && !ae.h()) {
                return c.a();
            }
            return false;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }

    private static boolean a(c cVar) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return false;
        }
        try {
            return (cVar.f19502b ^ true) || (cVar.f19502b && f19603a.contains(cVar.f19503c));
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }
}
