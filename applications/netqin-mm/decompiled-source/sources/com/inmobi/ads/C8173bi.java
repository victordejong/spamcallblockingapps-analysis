package com.inmobi.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.inmobi.commons.p508a.C8326a;
import com.squareup.picasso.Picasso;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.inmobi.ads.bi */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bi.class */
public class C8173bi {

    /* renamed from: a */
    public static final String f31889a = "bi";

    /* renamed from: b */
    public static volatile Picasso f31890b;

    /* renamed from: c */
    public static final Object f31891c = new Object();

    /* renamed from: d */
    public static List<WeakReference<Context>> f31892d = new ArrayList();

    /* renamed from: e */
    public static Application.ActivityLifecycleCallbacks f31893e = new Application.ActivityLifecycleCallbacks() { // from class: com.inmobi.ads.bi.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            synchronized (C8173bi.f31891c) {
                if (C8173bi.f31890b != null && C8173bi.m6261c(activity)) {
                    activity.getApplication().unregisterActivityLifecycleCallbacks(C8173bi.f31893e);
                    C8173bi.f31892d.remove(activity);
                    if (C8173bi.f31892d.isEmpty()) {
                        String unused = C8173bi.f31889a;
                        StringBuilder sb = new StringBuilder("Picasso instance ");
                        sb.append(C8173bi.f31890b.toString());
                        sb.append(" shutdown");
                        C8173bi.f31890b.shutdown();
                        Picasso unused2 = C8173bi.f31890b = null;
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    };

    /* renamed from: a */
    public static Picasso m6266a(Context context) {
        synchronized (f31891c) {
            if (!m6261c(context)) {
                f31892d.add(new WeakReference<>(context));
            }
            if (f31890b == null) {
                f31890b = new Picasso.Builder(context).build();
                C8326a.m5897a(context, f31893e);
            }
        }
        return f31890b;
    }

    /* renamed from: a */
    public static Object m6265a(InvocationHandler invocationHandler) {
        Object obj;
        try {
            Class<?> cls = Class.forName("com.squareup.picasso.Callback");
            obj = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler);
        } catch (Exception e) {
            obj = null;
        }
        return obj;
    }

    /* renamed from: c */
    public static boolean m6261c(Context context) {
        for (int i = 0; i < f31892d.size(); i++) {
            Context context2 = f31892d.get(i).get();
            if (context2 != null && context2.equals(context)) {
                return true;
            }
        }
        return false;
    }
}
