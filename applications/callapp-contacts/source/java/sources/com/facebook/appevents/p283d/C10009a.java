package com.facebook.appevents.p283d;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.facebook.C10181g;
import com.facebook.appevents.p285f.C10037d;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.d.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/d/a.class */
public class C10009a {

    /* renamed from: a */
    private static final String f33267a = "com.facebook.appevents.d.a";

    /* renamed from: b */
    private static final AtomicBoolean f33268b = new AtomicBoolean(false);

    /* renamed from: c */
    private static Boolean f33269c = null;

    /* renamed from: d */
    private static Boolean f33270d = null;

    /* renamed from: e */
    private static ServiceConnection f33271e;

    /* renamed from: f */
    private static Application.ActivityLifecycleCallbacks f33272f;

    /* renamed from: g */
    private static Intent f33273g;

    /* renamed from: h */
    private static Object f33274h;

    /* renamed from: a */
    public static void m23629a() {
        if (f33269c == null) {
            try {
                Class.forName("com.android.vending.billing.IInAppBillingService$Stub");
                f33269c = Boolean.TRUE;
                try {
                    Class.forName("com.android.billingclient.api.ProxyBillingActivity");
                    f33270d = Boolean.TRUE;
                } catch (ClassNotFoundException e) {
                    f33270d = Boolean.FALSE;
                }
                C10014b.m23624a();
                f33273g = new Intent("com.android.vending.billing.InAppBillingService.BIND").setPackage("com.android.vending");
                f33271e = new ServiceConnection() { // from class: com.facebook.appevents.d.a.1
                    @Override // android.content.ServiceConnection
                    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                        Object unused = C10009a.f33274h = C10014b.m23623a(C10181g.m23290i(), iBinder);
                    }

                    @Override // android.content.ServiceConnection
                    public final void onServiceDisconnected(ComponentName componentName) {
                    }
                };
                f33272f = new Application.ActivityLifecycleCallbacks() { // from class: com.facebook.appevents.d.a.2
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
                            C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.d.a.2.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (C10249a.m23108a(this)) {
                                        return;
                                    }
                                    try {
                                        Context m23290i = C10181g.m23290i();
                                        C10009a.m23628a(m23290i, C10014b.m23622a(m23290i, C10009a.f33274h), false);
                                        C10009a.m23628a(m23290i, C10014b.m23613b(m23290i, C10009a.f33274h), true);
                                    } catch (Throwable th) {
                                        C10249a.m23106a(th, this);
                                    }
                                }
                            });
                        } catch (Exception e2) {
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
                            if (!C10009a.f33270d.booleanValue() || !activity.getLocalClassName().equals("com.android.billingclient.api.ProxyBillingActivity")) {
                                return;
                            }
                            C10181g.m23293f().execute(new Runnable() { // from class: com.facebook.appevents.d.a.2.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    if (C10249a.m23108a(this)) {
                                        return;
                                    }
                                    try {
                                        Context m23290i = C10181g.m23290i();
                                        ArrayList<String> m23622a = C10014b.m23622a(m23290i, C10009a.f33274h);
                                        ArrayList<String> arrayList = m23622a;
                                        if (m23622a.isEmpty()) {
                                            arrayList = C10014b.m23609c(m23290i, C10009a.f33274h);
                                        }
                                        C10009a.m23628a(m23290i, arrayList, false);
                                    } catch (Throwable th) {
                                        C10249a.m23106a(th, this);
                                    }
                                }
                            });
                        } catch (Exception e2) {
                        }
                    }
                };
            } catch (ClassNotFoundException e2) {
                f33269c = Boolean.FALSE;
            }
        }
        if (f33269c.booleanValue() && C10037d.m23549b() && f33268b.compareAndSet(false, true)) {
            Context m23290i = C10181g.m23290i();
            if (!(m23290i instanceof Application)) {
                return;
            }
            ((Application) m23290i).registerActivityLifecycleCallbacks(f33272f);
            m23290i.bindService(f33273g, f33271e, 1);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m23628a(Context context, ArrayList arrayList, boolean z) {
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
                } catch (JSONException e) {
                    Log.e(f33267a, "Error parsing in-app purchase data.", e);
                }
            }
            for (Map.Entry<String, String> entry : C10014b.m23618a(context, arrayList2, f33274h, z).entrySet()) {
                C10037d.m23550a((String) hashMap.get(entry.getKey()), entry.getValue(), z);
            }
        }
    }
}
