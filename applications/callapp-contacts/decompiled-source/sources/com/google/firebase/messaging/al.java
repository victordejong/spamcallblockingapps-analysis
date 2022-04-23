package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import com.explorestack.iab.vast.VastError;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/al.class */
public final class al {

    /* renamed from: d  reason: collision with root package name */
    private static al f32477d;
    private String e = null;

    /* renamed from: a  reason: collision with root package name */
    Boolean f32478a = null;

    /* renamed from: b  reason: collision with root package name */
    Boolean f32479b = null;

    /* renamed from: c  reason: collision with root package name */
    final Queue<Intent> f32480c = new ArrayDeque();

    private al() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static al a() {
        al alVar;
        synchronized (al.class) {
            try {
                if (f32477d == null) {
                    f32477d = new al();
                }
                alVar = f32477d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return alVar;
    }

    private String b(Context context, Intent intent) {
        synchronized (this) {
            String str = this.e;
            if (str != null) {
                return str;
            }
            ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
            if (!(resolveService == null || resolveService.serviceInfo == null)) {
                ServiceInfo serviceInfo = resolveService.serviceInfo;
                if (context.getPackageName().equals(serviceInfo.packageName) && serviceInfo.name != null) {
                    if (serviceInfo.name.startsWith(".")) {
                        String valueOf = String.valueOf(context.getPackageName());
                        String valueOf2 = String.valueOf(serviceInfo.name);
                        this.e = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                    } else {
                        this.e = serviceInfo.name;
                    }
                    return this.e;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(Context context, Intent intent) {
        String b2 = b(context, intent);
        if (b2 != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                if (b2.length() != 0) {
                    "Restricting intent to a specific service: ".concat(b2);
                } else {
                    new String("Restricting intent to a specific service: ");
                }
            }
            intent.setClassName(context.getPackageName(), b2);
        }
        try {
            if ((a(context) ? av.a(context, intent) : context.startService(intent)) != null) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Context context) {
        if (this.f32478a == null) {
            this.f32478a = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f32478a.booleanValue()) {
            Log.isLoggable("FirebaseMessaging", 3);
        }
        return this.f32478a.booleanValue();
    }
}
