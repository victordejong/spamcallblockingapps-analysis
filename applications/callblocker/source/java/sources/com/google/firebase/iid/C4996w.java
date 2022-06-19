package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Queue;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.firebase.iid.w */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/w.class */
public final class C4996w {

    /* renamed from: a */
    private static C4996w f21187a;
    @GuardedBy("this")

    /* renamed from: b */
    private String f21188b = null;

    /* renamed from: c */
    private Boolean f21189c = null;

    /* renamed from: d */
    private Boolean f21190d = null;

    /* renamed from: e */
    private final Queue<Intent> f21191e = new ArrayDeque();

    private C4996w() {
    }

    /* renamed from: a */
    public static C4996w m1899a() {
        C4996w c4996w;
        synchronized (C4996w.class) {
            try {
                if (f21187a == null) {
                    f21187a = new C4996w();
                }
                c4996w = f21187a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c4996w;
    }

    /* renamed from: b */
    private final int m1895b(Context context, Intent intent) {
        int i;
        ComponentName startService;
        String m1894c = m1894c(context, intent);
        if (m1894c != null) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(m1894c);
                Log.d("FirebaseInstanceId", valueOf.length() != 0 ? "Restricting intent to a specific service: ".concat(valueOf) : new String("Restricting intent to a specific service: "));
            }
            intent.setClassName(context.getPackageName(), m1894c);
        }
        try {
            if (m1898a(context)) {
                startService = C4944ae.m1968a(context, intent);
            } else {
                startService = context.startService(intent);
                Log.d("FirebaseInstanceId", "Missing wake lock permission, service start may be delayed");
            }
            if (startService == null) {
                Log.e("FirebaseInstanceId", "Error while delivering the message: ServiceIntent not found.");
                i = 404;
            } else {
                i = -1;
            }
        } catch (IllegalStateException e) {
            String valueOf2 = String.valueOf(e);
            Log.e("FirebaseInstanceId", new StringBuilder(String.valueOf(valueOf2).length() + 45).append("Failed to start service while in background: ").append(valueOf2).toString());
            i = 402;
        } catch (SecurityException e2) {
            Log.e("FirebaseInstanceId", "Error while delivering the message to the serviceIntent", e2);
            i = 401;
        }
        return i;
    }

    /* renamed from: c */
    private final String m1894c(Context context, Intent intent) {
        String str;
        synchronized (this) {
            if (this.f21188b != null) {
                str = this.f21188b;
            } else {
                ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
                if (resolveService == null || resolveService.serviceInfo == null) {
                    Log.e("FirebaseInstanceId", "Failed to resolve target intent service, skipping classname enforcement");
                    str = null;
                } else {
                    ServiceInfo serviceInfo = resolveService.serviceInfo;
                    if (!context.getPackageName().equals(serviceInfo.packageName) || serviceInfo.name == null) {
                        String str2 = serviceInfo.packageName;
                        String str3 = serviceInfo.name;
                        Log.e("FirebaseInstanceId", new StringBuilder(String.valueOf(str2).length() + 94 + String.valueOf(str3).length()).append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ").append(str2).append("/").append(str3).toString());
                        str = null;
                    } else {
                        if (serviceInfo.name.startsWith(".")) {
                            String valueOf = String.valueOf(context.getPackageName());
                            String valueOf2 = String.valueOf(serviceInfo.name);
                            this.f21188b = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                        } else {
                            this.f21188b = serviceInfo.name;
                        }
                        str = this.f21188b;
                    }
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    public final int m1897a(Context context, Intent intent) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Starting service");
        }
        this.f21191e.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return m1895b(context, intent2);
    }

    /* renamed from: a */
    public final boolean m1898a(Context context) {
        if (this.f21189c == null) {
            this.f21189c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f21189c.booleanValue() && Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f21189c.booleanValue();
    }

    /* renamed from: b */
    public final boolean m1896b(Context context) {
        if (this.f21190d == null) {
            this.f21190d = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f21189c.booleanValue() && Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f21190d.booleanValue();
    }
}
