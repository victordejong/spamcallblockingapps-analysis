package com.facebook.appevents.d;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.facebook.appevents.f.d;
import com.facebook.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/d/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19517a = "com.facebook.appevents.d.a";

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f19518b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private static Boolean f19519c = null;

    /* renamed from: d  reason: collision with root package name */
    private static Boolean f19520d = null;
    private static ServiceConnection e;
    private static Application.ActivityLifecycleCallbacks f;
    private static Intent g;
    private static Object h;

    public static void a() {
        if (f19519c == null) {
            try {
                Class.forName("com.android.vending.billing.IInAppBillingService$Stub");
                f19519c = Boolean.TRUE;
                try {
                    Class.forName("com.android.billingclient.api.ProxyBillingActivity");
                    f19520d = Boolean.TRUE;
                } catch (ClassNotFoundException e2) {
                    f19520d = Boolean.FALSE;
                }
                b.a();
                g = new Intent("com.android.vending.billing.InAppBillingService.BIND").setPackage("com.android.vending");
                e = new ServiceConnection() { // from class: com.facebook.appevents.d.a.1
                    @Override // android.content.ServiceConnection
                    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                        Object unused = a.h = b.a(g.i(), iBinder);
                    }

                    @Override // android.content.ServiceConnection
                    public final void onServiceDisconnected(ComponentName componentName) {
                    }
                };
                f = new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.appevents.d.a.2
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityCreated(Activity activity, Bundle bundle) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityDestroyed(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPaused(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityResumed(Activity activity) {
                        try {
                            g.f().execute(new Runnable() { // from class: com.facebook.appevents.d.a.2.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (!com.facebook.internal.b.b.a.a(this)) {
                                        try {
                                            Context i = g.i();
                                            a.a(i, b.a(i, a.h), false);
                                            a.a(i, b.b(i, a.h), true);
                                        } catch (Throwable th) {
                                            com.facebook.internal.b.b.a.a(th, this);
                                        }
                                    }
                                }
                            });
                        } catch (Exception e3) {
                        }
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStarted(Activity activity) {
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityStopped(Activity activity) {
                        try {
                            if (a.f19520d.booleanValue() && activity.getLocalClassName().equals("com.android.billingclient.api.ProxyBillingActivity")) {
                                g.f().execute(new Runnable() { // from class: com.facebook.appevents.d.a.2.2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        if (!com.facebook.internal.b.b.a.a(this)) {
                                            try {
                                                Context i = g.i();
                                                ArrayList<String> a2 = b.a(i, a.h);
                                                ArrayList<String> arrayList = a2;
                                                if (a2.isEmpty()) {
                                                    arrayList = b.c(i, a.h);
                                                }
                                                a.a(i, arrayList, false);
                                            } catch (Throwable th) {
                                                com.facebook.internal.b.b.a.a(th, this);
                                            }
                                        }
                                    }
                                });
                            }
                        } catch (Exception e3) {
                        }
                    }
                };
            } catch (ClassNotFoundException e3) {
                f19519c = Boolean.FALSE;
            }
        }
        if (f19519c.booleanValue() && d.b() && f19518b.compareAndSet(false, true)) {
            Context i = g.i();
            if (i instanceof Application) {
                ((Application) i).registerActivityLifecycleCallbacks(f);
                i.bindService(g, e, 1);
            }
        }
    }

    static /* synthetic */ void a(Context context, ArrayList arrayList, boolean z) {
        if (!arrayList.isEmpty()) {
            HashMap hashMap = new HashMap();
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                try {
                    String string = new JSONObject(str).getString("productId");
                    hashMap.put(string, str);
                    arrayList2.add(string);
                } catch (JSONException e2) {
                    Log.e(f19517a, "Error parsing in-app purchase data.", e2);
                }
            }
            for (Map.Entry<String, String> entry : b.a(context, arrayList2, h, z).entrySet()) {
                d.a((String) hashMap.get(entry.getKey()), entry.getValue(), z);
            }
        }
    }
}
