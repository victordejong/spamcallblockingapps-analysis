package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import com.explorestack.iab.vast.VastError;
import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: com.google.firebase.messaging.al */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/al.class */
public final class C15852al {

    /* renamed from: d */
    private static C15852al f56337d;

    /* renamed from: e */
    private String f56341e = null;

    /* renamed from: a */
    Boolean f56338a = null;

    /* renamed from: b */
    Boolean f56339b = null;

    /* renamed from: c */
    final Queue<Intent> f56340c = new ArrayDeque();

    private C15852al() {
    }

    /* renamed from: a */
    public static C15852al m8181a() {
        C15852al c15852al;
        synchronized (C15852al.class) {
            try {
                if (f56337d == null) {
                    f56337d = new C15852al();
                }
                c15852al = f56337d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c15852al;
    }

    /* renamed from: b */
    private String m8178b(Context context, Intent intent) {
        synchronized (this) {
            String str = this.f56341e;
            if (str != null) {
                return str;
            }
            ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
            if (resolveService != null && resolveService.serviceInfo != null) {
                ServiceInfo serviceInfo = resolveService.serviceInfo;
                if (context.getPackageName().equals(serviceInfo.packageName) && serviceInfo.name != null) {
                    if (serviceInfo.name.startsWith(".")) {
                        String valueOf = String.valueOf(context.getPackageName());
                        String valueOf2 = String.valueOf(serviceInfo.name);
                        this.f56341e = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                    } else {
                        this.f56341e = serviceInfo.name;
                    }
                    return this.f56341e;
                }
                String str2 = serviceInfo.packageName;
                String str3 = serviceInfo.name;
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 94 + String.valueOf(str3).length());
                sb.append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ");
                sb.append(str2);
                sb.append("/");
                sb.append(str3);
                Log.e("FirebaseMessaging", sb.toString());
                return null;
            }
            Log.e("FirebaseMessaging", "Failed to resolve target intent service, skipping classname enforcement");
            return null;
        }
    }

    /* renamed from: a */
    public final int m8179a(Context context, Intent intent) {
        String m8178b = m8178b(context, intent);
        if (m8178b != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                if (m8178b.length() != 0) {
                    "Restricting intent to a specific service: ".concat(m8178b);
                } else {
                    new String("Restricting intent to a specific service: ");
                }
            }
            intent.setClassName(context.getPackageName(), m8178b);
        }
        try {
            if ((m8180a(context) ? C15865av.m8137a(context, intent) : context.startService(intent)) != null) {
                return -1;
            }
            Log.e("FirebaseMessaging", "Error while delivering the message: ServiceIntent not found.");
            return 404;
        } catch (IllegalStateException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 45);
            sb.append("Failed to start service while in background: ");
            sb.append(valueOf);
            Log.e("FirebaseMessaging", sb.toString());
            return 402;
        } catch (SecurityException e2) {
            Log.e("FirebaseMessaging", "Error while delivering the message to the serviceIntent", e2);
            return VastError.ERROR_CODE_NO_FILE;
        }
    }

    /* renamed from: a */
    public final boolean m8180a(Context context) {
        if (this.f56338a == null) {
            this.f56338a = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f56338a.booleanValue()) {
            Log.isLoggable("FirebaseMessaging", 3);
        }
        return this.f56338a.booleanValue();
    }
}
