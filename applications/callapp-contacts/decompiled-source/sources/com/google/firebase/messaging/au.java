package com.google.firebase.messaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/au.class */
public final class au implements Runnable {
    private static final Object f = new Object();
    private static Boolean g;
    private static Boolean h;

    /* renamed from: a  reason: collision with root package name */
    private final Context f32513a;

    /* renamed from: b  reason: collision with root package name */
    private final ag f32514b;

    /* renamed from: c  reason: collision with root package name */
    private final PowerManager.WakeLock f32515c;

    /* renamed from: d  reason: collision with root package name */
    private final as f32516d;
    private final long e;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/au$a.class */
    final class a extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        private au f32518b;

        public a(au auVar) {
            this.f32518b = auVar;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (this) {
                au auVar = this.f32518b;
                if (auVar != null) {
                    if (auVar.b()) {
                        au.c();
                        this.f32518b.f32516d.a(this.f32518b, 0L);
                        context.unregisterReceiver(this);
                        this.f32518b = null;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(as asVar, Context context, ag agVar, long j) {
        this.f32516d = asVar;
        this.f32513a = context;
        this.e = j;
        this.f32514b = agVar;
        this.f32515c = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    private static String a(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 142);
        sb.append("Missing Permission: ");
        sb.append(str);
        sb.append(". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        return sb.toString();
    }

    private static boolean a(Context context) {
        boolean booleanValue;
        synchronized (f) {
            Boolean bool = g;
            Boolean valueOf = Boolean.valueOf(bool == null ? a(context, "android.permission.WAKE_LOCK", bool) : bool.booleanValue());
            g = valueOf;
            booleanValue = valueOf.booleanValue();
        }
        return booleanValue;
    }

    private static boolean a(Context context, String str, Boolean bool) {
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = context.checkCallingOrSelfPermission(str) == 0;
        if (z || !Log.isLoggable("FirebaseMessaging", 3)) {
            return z;
        }
        a(str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() {
        boolean z;
        synchronized (this) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f32513a.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    private static boolean b(Context context) {
        boolean booleanValue;
        synchronized (f) {
            Boolean bool = h;
            Boolean valueOf = Boolean.valueOf(bool == null ? a(context, "android.permission.ACCESS_NETWORK_STATE", bool) : bool.booleanValue());
            h = valueOf;
            booleanValue = valueOf.booleanValue();
        }
        return booleanValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c() {
        boolean z = false;
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            if (Build.VERSION.SDK_INT == 23) {
                if (!Log.isLoggable("FirebaseMessaging", 3)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (a(this.f32513a)) {
            this.f32515c.acquire(b.f32531a);
        }
        try {
            try {
                this.f32516d.a(true);
                if (!this.f32514b.a()) {
                    this.f32516d.a(false);
                    if (a(this.f32513a)) {
                        try {
                            this.f32515c.release();
                        } catch (RuntimeException e) {
                        }
                    }
                } else if (!b(this.f32513a) || b()) {
                    if (this.f32516d.a()) {
                        this.f32516d.a(false);
                    } else {
                        this.f32516d.a(this.e);
                    }
                    if (a(this.f32513a)) {
                        try {
                            this.f32515c.release();
                        } catch (RuntimeException e2) {
                        }
                    }
                } else {
                    a aVar = new a(this);
                    c();
                    au.this.f32513a.registerReceiver(aVar, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    if (a(this.f32513a)) {
                        try {
                            this.f32515c.release();
                        } catch (RuntimeException e3) {
                        }
                    }
                }
            } catch (IOException e4) {
                String valueOf = String.valueOf(e4.getMessage());
                Log.e("FirebaseMessaging", valueOf.length() != 0 ? "Failed to sync topics. Won't retry sync. ".concat(valueOf) : new String("Failed to sync topics. Won't retry sync. "));
                this.f32516d.a(false);
                if (a(this.f32513a)) {
                    try {
                        this.f32515c.release();
                    } catch (RuntimeException e5) {
                    }
                }
            }
        } catch (Throwable th) {
            if (a(this.f32513a)) {
                try {
                    this.f32515c.release();
                } catch (RuntimeException e6) {
                }
            }
            throw th;
        }
    }
}
