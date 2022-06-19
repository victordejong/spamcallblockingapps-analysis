package com.google.firebase.messaging;

import android.annotation.SuppressLint;
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
/* renamed from: com.google.firebase.messaging.t0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/t0.class */
public class RunnableC9312t0 implements Runnable {

    /* renamed from: d */
    private static final Object f39863d = new Object();

    /* renamed from: e */
    private static Boolean f39864e;

    /* renamed from: f */
    private static Boolean f39865f;

    /* renamed from: g */
    private final Context f39866g;

    /* renamed from: h */
    private final C9281f0 f39867h;

    /* renamed from: i */
    private final PowerManager.WakeLock f39868i;

    /* renamed from: j */
    private final C9310s0 f39869j;

    /* renamed from: k */
    private final long f39870k;

    /* renamed from: com.google.firebase.messaging.t0$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/t0$a.class */
    class C9313a extends BroadcastReceiver {

        /* renamed from: a */
        private RunnableC9312t0 f39871a;

        public C9313a(RunnableC9312t0 runnableC9312t0) {
            RunnableC9312t0.this = r4;
            this.f39871a = runnableC9312t0;
        }

        /* renamed from: a */
        public void m1143a() {
            if (RunnableC9312t0.m1144j()) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            RunnableC9312t0.this.f39866g.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (this) {
                RunnableC9312t0 runnableC9312t0 = this.f39871a;
                if (runnableC9312t0 == null) {
                    return;
                }
                if (!runnableC9312t0.m1145i()) {
                    return;
                }
                if (RunnableC9312t0.m1144j()) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                this.f39871a.f39869j.m1159k(this.f39871a, 0L);
                context.unregisterReceiver(this);
                this.f39871a = null;
            }
        }
    }

    public RunnableC9312t0(C9310s0 c9310s0, Context context, C9281f0 c9281f0, long j) {
        this.f39869j = c9310s0;
        this.f39866g = context;
        this.f39870k = j;
        this.f39867h = c9281f0;
        this.f39868i = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    /* renamed from: e */
    private static String m1149e(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 142);
        sb.append("Missing Permission: ");
        sb.append(str);
        sb.append(". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        return sb.toString();
    }

    /* renamed from: f */
    private static boolean m1148f(Context context) {
        boolean booleanValue;
        synchronized (f39863d) {
            Boolean bool = f39865f;
            Boolean valueOf = Boolean.valueOf(bool == null ? m1147g(context, "android.permission.ACCESS_NETWORK_STATE", bool) : bool.booleanValue());
            f39865f = valueOf;
            booleanValue = valueOf.booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: g */
    private static boolean m1147g(Context context, String str, Boolean bool) {
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = context.checkCallingOrSelfPermission(str) == 0;
        if (z || !Log.isLoggable("FirebaseMessaging", 3)) {
            return z;
        }
        Log.d("FirebaseMessaging", m1149e(str));
        return false;
    }

    /* renamed from: h */
    private static boolean m1146h(Context context) {
        boolean booleanValue;
        synchronized (f39863d) {
            Boolean bool = f39864e;
            Boolean valueOf = Boolean.valueOf(bool == null ? m1147g(context, "android.permission.WAKE_LOCK", bool) : bool.booleanValue());
            f39864e = valueOf;
            booleanValue = valueOf.booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: i */
    public boolean m1145i() {
        boolean z;
        synchronized (this) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f39866g.getSystemService("connectivity");
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

    /* renamed from: j */
    public static boolean m1144j() {
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
    @SuppressLint({"Wakelock"})
    public void run() {
        if (m1146h(this.f39866g)) {
            this.f39868i.acquire(C9271b.f39770a);
        }
        try {
            try {
                this.f39869j.m1158l(true);
                if (!this.f39867h.m1258g()) {
                    this.f39869j.m1158l(false);
                    if (!m1146h(this.f39866g)) {
                        return;
                    }
                    try {
                        this.f39868i.release();
                    } catch (RuntimeException e) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                } else if (m1148f(this.f39866g) && !m1145i()) {
                    new C9313a(this).m1143a();
                    if (!m1146h(this.f39866g)) {
                        return;
                    }
                    try {
                        this.f39868i.release();
                    } catch (RuntimeException e2) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                } else {
                    if (this.f39869j.m1155o()) {
                        this.f39869j.m1158l(false);
                    } else {
                        this.f39869j.m1154p(this.f39870k);
                    }
                    if (!m1146h(this.f39866g)) {
                        return;
                    }
                    try {
                        this.f39868i.release();
                    } catch (RuntimeException e3) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            } catch (Throwable th) {
                if (m1146h(this.f39866g)) {
                    try {
                        this.f39868i.release();
                    } catch (RuntimeException e4) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            String valueOf = String.valueOf(e5.getMessage());
            Log.e("FirebaseMessaging", valueOf.length() != 0 ? "Failed to sync topics. Won't retry sync. ".concat(valueOf) : new String("Failed to sync topics. Won't retry sync. "));
            this.f39869j.m1158l(false);
            if (!m1146h(this.f39866g)) {
                return;
            }
            try {
                this.f39868i.release();
            } catch (RuntimeException e6) {
                Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
            }
        }
    }
}
