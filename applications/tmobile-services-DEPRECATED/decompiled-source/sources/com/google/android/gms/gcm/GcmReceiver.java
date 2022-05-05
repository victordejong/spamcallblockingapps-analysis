package com.google.android.gms.gcm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.facebook.stetho.server.http.HttpStatus;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.iid.zzk;
import com.google.firebase.messaging.Constants;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmReceiver.class */
public class GcmReceiver extends WakefulBroadcastReceiver {

    /* renamed from: c */
    private static zzk f7715c;

    /* renamed from: d */
    private static zzk f7716d;

    /* renamed from: d */
    private final int m14197d(Context context, Intent intent) {
        if (Log.isLoggable("GcmReceiver", 3)) {
            Log.d("GcmReceiver", "Binding to service");
        }
        if (isOrderedBroadcast()) {
            setResultCode(-1);
        }
        m14196e(context, intent.getAction()).m14141a(intent, goAsync());
        return -1;
    }

    /* renamed from: e */
    private final zzk m14196e(Context context, String str) {
        synchronized (this) {
            if ("com.google.android.c2dm.intent.RECEIVE".equals(str)) {
                if (f7716d == null) {
                    f7716d = new zzk(context, str);
                }
                return f7716d;
            }
            if (f7715c == null) {
                f7715c = new zzk(context, str);
            }
            return f7715c;
        }
    }

    /* renamed from: f */
    private static int m14195f(Context context, Intent intent) {
        ComponentName componentName;
        ServiceInfo serviceInfo;
        String str;
        if (Log.isLoggable("GcmReceiver", 3)) {
            Log.d("GcmReceiver", "Starting service");
        }
        ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
        if (resolveService == null || (serviceInfo = resolveService.serviceInfo) == null) {
            Log.e("GcmReceiver", "Failed to resolve target intent service, skipping classname enforcement");
        } else if (!context.getPackageName().equals(serviceInfo.packageName) || (str = serviceInfo.name) == null) {
            String str2 = serviceInfo.packageName;
            String str3 = serviceInfo.name;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 94 + String.valueOf(str3).length());
            sb.append("Error resolving target intent service, skipping classname enforcement. Resolved service was: ");
            sb.append(str2);
            sb.append("/");
            sb.append(str3);
            Log.e("GcmReceiver", sb.toString());
        } else {
            String str4 = str;
            if (str.startsWith(".")) {
                String valueOf = String.valueOf(context.getPackageName());
                String valueOf2 = String.valueOf(str);
                str4 = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
            }
            if (Log.isLoggable("GcmReceiver", 3)) {
                String valueOf3 = String.valueOf(str4);
                Log.d("GcmReceiver", valueOf3.length() != 0 ? "Restricting intent to a specific service: ".concat(valueOf3) : new String("Restricting intent to a specific service: "));
            }
            intent.setClassName(context.getPackageName(), str4);
        }
        try {
            if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                componentName = WakefulBroadcastReceiver.m18266c(context, intent);
            } else {
                componentName = context.startService(intent);
                Log.d("GcmReceiver", "Missing wake lock permission, service start may be delayed");
            }
            if (componentName != null) {
                return -1;
            }
            Log.e("GcmReceiver", "Error while delivering the message: ServiceIntent not found.");
            return HttpStatus.HTTP_NOT_FOUND;
        } catch (IllegalStateException e) {
            String valueOf4 = String.valueOf(e);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf4).length() + 45);
            sb2.append("Failed to start service while in background: ");
            sb2.append(valueOf4);
            Log.e("GcmReceiver", sb2.toString());
            return 402;
        } catch (SecurityException e2) {
            Log.e("GcmReceiver", "Error while delivering the message to the serviceIntent", e2);
            return 401;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int i;
        if (Log.isLoggable("GcmReceiver", 3)) {
            Log.d("GcmReceiver", "received new intent");
        }
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (Build.VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        if ("google.com/iid".equals(intent.getStringExtra(Constants.MessagePayloadKeys.FROM))) {
            intent.setAction("com.google.android.gms.iid.InstanceID");
        }
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        boolean z = false;
        if (stringExtra != null) {
            intent.putExtra(Constants.MessagePayloadKeys.RAW_DATA, Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        if (isOrderedBroadcast()) {
            setResultCode(500);
        }
        boolean z2 = PlatformVersion.m14314i() && context.getApplicationInfo().targetSdkVersion >= 26;
        if ((intent.getFlags() & 268435456) != 0) {
            z = true;
        }
        if (!z2 || z) {
            i = "com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction()) ? m14195f(context, intent) : m14195f(context, intent);
            if (PlatformVersion.m14314i() && i == 402) {
                m14197d(context, intent);
                i = 403;
            }
        } else {
            i = m14197d(context, intent);
        }
        if (isOrderedBroadcast()) {
            setResultCode(i);
        }
    }
}
