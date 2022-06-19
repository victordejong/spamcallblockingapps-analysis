package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: com.google.firebase.messaging.k0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/k0.class */
public class C9292k0 {

    /* renamed from: a */
    private static C9292k0 f39803a;

    /* renamed from: b */
    private String f39804b = null;

    /* renamed from: c */
    private Boolean f39805c = null;

    /* renamed from: d */
    private Boolean f39806d = null;

    /* renamed from: e */
    private final Queue<Intent> f39807e = new ArrayDeque();

    private C9292k0() {
    }

    /* renamed from: a */
    private int m1225a(Context context, Intent intent) {
        ComponentName componentName;
        String m1220f = m1220f(context, intent);
        if (m1220f != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", m1220f.length() != 0 ? "Restricting intent to a specific service: ".concat(m1220f) : new String("Restricting intent to a specific service: "));
            }
            intent.setClassName(context.getPackageName(), m1220f);
        }
        try {
            if (m1221e(context)) {
                componentName = C9315u0.m1137e(context, intent);
            } else {
                componentName = context.startService(intent);
                Log.d("FirebaseMessaging", "Missing wake lock permission, service start may be delayed");
            }
            if (componentName != null) {
                return -1;
            }
            Log.e("FirebaseMessaging", "Error while delivering the message: ServiceIntent not found.");
            return 404;
        } catch (IllegalStateException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 45);
            sb.append("Failed to start service while in background: ");
            sb.append(valueOf);
            Log.e("FirebaseMessaging", sb.toString());
            return 402;
        } catch (SecurityException e2) {
            Log.e("FirebaseMessaging", "Error while delivering the message to the serviceIntent", e2);
            return 401;
        }
    }

    /* renamed from: b */
    public static C9292k0 m1224b() {
        C9292k0 c9292k0;
        synchronized (C9292k0.class) {
            try {
                if (f39803a == null) {
                    f39803a = new C9292k0();
                }
                c9292k0 = f39803a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c9292k0;
    }

    /* renamed from: f */
    private String m1220f(Context context, Intent intent) {
        ServiceInfo serviceInfo;
        String str;
        synchronized (this) {
            String str2 = this.f39804b;
            if (str2 != null) {
                return str2;
            }
            ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
            if (resolveService == null || (serviceInfo = resolveService.serviceInfo) == null) {
                Log.e("FirebaseMessaging", "Failed to resolve target intent service, skipping classname enforcement");
                return null;
            } else if (context.getPackageName().equals(serviceInfo.packageName) && (str = serviceInfo.name) != null) {
                if (str.startsWith(".")) {
                    String valueOf = String.valueOf(context.getPackageName());
                    String valueOf2 = String.valueOf(serviceInfo.name);
                    this.f39804b = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                } else {
                    this.f39804b = serviceInfo.name;
                }
                return this.f39804b;
            } else {
                String str3 = serviceInfo.packageName;
                String str4 = serviceInfo.name;
                StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 94 + String.valueOf(str4).length());
                sb.append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ");
                sb.append(str3);
                sb.append("/");
                sb.append(str4);
                Log.e("FirebaseMessaging", sb.toString());
                return null;
            }
        }
    }

    /* renamed from: c */
    public Intent m1223c() {
        return this.f39807e.poll();
    }

    /* renamed from: d */
    public boolean m1222d(Context context) {
        if (this.f39806d == null) {
            this.f39806d = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f39805c.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f39806d.booleanValue();
    }

    /* renamed from: e */
    public boolean m1221e(Context context) {
        if (this.f39805c == null) {
            this.f39805c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f39805c.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f39805c.booleanValue();
    }

    /* renamed from: g */
    public int m1219g(Context context, Intent intent) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Starting service");
        }
        this.f39807e.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return m1225a(context, intent2);
    }
}
