package com.facebook.p094a.p099d;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.facebook.C2095j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.d.g */
/* loaded from: classes-dex2jar.jar:com/facebook/a/d/g.class */
public class C1870g {

    /* renamed from: a */
    private static final String f5666a = C1870g.class.getCanonicalName();

    /* renamed from: b */
    private static final AtomicBoolean f5667b = new AtomicBoolean(false);

    /* renamed from: c */
    private static Boolean f5668c = null;

    /* renamed from: d */
    private static Boolean f5669d = null;

    /* renamed from: e */
    private static ServiceConnection f5670e;

    /* renamed from: f */
    private static Application.ActivityLifecycleCallbacks f5671f;

    /* renamed from: g */
    private static Intent f5672g;

    /* renamed from: h */
    private static Object f5673h;

    /* renamed from: a */
    public static void m16049a() {
        m16043d();
        if (f5668c.booleanValue() && C1866d.m16053b()) {
            m16042e();
        }
    }

    /* renamed from: b */
    public static void m16045b(Context context, ArrayList<String> arrayList, boolean z) {
        if (arrayList.isEmpty()) {
            return;
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            try {
                String string = new JSONObject(next).getString("productId");
                hashMap.put(string, next);
                arrayList2.add(string);
            } catch (JSONException e) {
                Log.e(f5666a, "Error parsing in-app purchase data.", e);
            }
        }
        for (Map.Entry<String, String> entry : C1875h.m16035a(context, arrayList2, f5673h, z).entrySet()) {
            C1866d.m16054a((String) hashMap.get(entry.getKey()), entry.getValue(), z);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0058 -> B:8:0x0021). Please submit an issue!!! */
    /* renamed from: d */
    private static void m16043d() {
        if (f5668c != null) {
            return;
        }
        try {
            Class.forName("com.android.vending.billing.IInAppBillingService$Stub");
            f5668c = true;
            try {
                Class.forName("com.android.billingclient.api.ProxyBillingActivity");
                f5669d = true;
            } catch (ClassNotFoundException e) {
                f5669d = false;
            }
            C1875h.m16041a();
            f5672g = new Intent("com.android.vending.billing.InAppBillingService.BIND").setPackage("com.android.vending");
            f5670e = new ServiceConnection() { // from class: com.facebook.a.d.g.1
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    Object unused = C1870g.f5673h = C1875h.m16040a(C2095j.m15360h(), iBinder);
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                }
            };
            f5671f = new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.a.d.g.2
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    try {
                        C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.a.d.g.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Context m15360h = C2095j.m15360h();
                                C1870g.m16045b(m15360h, C1875h.m16039a(m15360h, C1870g.f5673h), false);
                                C1870g.m16045b(m15360h, C1875h.m16030b(m15360h, C1870g.f5673h), true);
                            }
                        });
                    } catch (Exception e2) {
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    try {
                        if (!C1870g.f5669d.booleanValue() || !activity.getLocalClassName().equals("com.android.billingclient.api.ProxyBillingActivity")) {
                            return;
                        }
                        C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.a.d.g.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                Context m15360h = C2095j.m15360h();
                                ArrayList<String> m16039a = C1875h.m16039a(m15360h, C1870g.f5673h);
                                ArrayList<String> arrayList = m16039a;
                                if (m16039a.isEmpty()) {
                                    arrayList = C1875h.m16026c(m15360h, C1870g.f5673h);
                                }
                                C1870g.m16045b(m15360h, arrayList, false);
                            }
                        });
                    } catch (Exception e2) {
                    }
                }
            };
        } catch (ClassNotFoundException e2) {
            f5668c = false;
        }
    }

    /* renamed from: e */
    private static void m16042e() {
        if (!f5667b.compareAndSet(false, true)) {
            return;
        }
        Context m15360h = C2095j.m15360h();
        if (!(m15360h instanceof Application)) {
            return;
        }
        ((Application) m15360h).registerActivityLifecycleCallbacks(f5671f);
        m15360h.bindService(f5672g, f5670e, 1);
    }
}
