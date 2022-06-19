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
/* renamed from: com.google.firebase.messaging.au */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/au.class */
public final class RunnableC15863au implements Runnable {

    /* renamed from: f */
    private static final Object f56384f = new Object();

    /* renamed from: g */
    private static Boolean f56385g;

    /* renamed from: h */
    private static Boolean f56386h;

    /* renamed from: a */
    private final Context f56387a;

    /* renamed from: b */
    private final C15846ag f56388b;

    /* renamed from: c */
    private final PowerManager.WakeLock f56389c;

    /* renamed from: d */
    private final C15861as f56390d;

    /* renamed from: e */
    private final long f56391e;

    /* renamed from: com.google.firebase.messaging.au$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/au$a.class */
    final class C15864a extends BroadcastReceiver {

        /* renamed from: b */
        private RunnableC15863au f56393b;

        public C15864a(RunnableC15863au runnableC15863au) {
            RunnableC15863au.this = r4;
            this.f56393b = runnableC15863au;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (this) {
                RunnableC15863au runnableC15863au = this.f56393b;
                if (runnableC15863au == null) {
                    return;
                }
                if (!runnableC15863au.m8141b()) {
                    return;
                }
                RunnableC15863au.m8138c();
                this.f56393b.f56390d.m8150a(this.f56393b, 0L);
                context.unregisterReceiver(this);
                this.f56393b = null;
            }
        }
    }

    public RunnableC15863au(C15861as c15861as, Context context, C15846ag c15846ag, long j) {
        this.f56390d = c15861as;
        this.f56387a = context;
        this.f56391e = j;
        this.f56388b = c15846ag;
        this.f56389c = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    /* renamed from: a */
    private static String m8142a(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 142);
        sb.append("Missing Permission: ");
        sb.append(str);
        sb.append(". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        return sb.toString();
    }

    /* renamed from: a */
    private static boolean m8145a(Context context) {
        boolean booleanValue;
        synchronized (f56384f) {
            Boolean bool = f56385g;
            Boolean valueOf = Boolean.valueOf(bool == null ? m8144a(context, "android.permission.WAKE_LOCK", bool) : bool.booleanValue());
            f56385g = valueOf;
            booleanValue = valueOf.booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: a */
    private static boolean m8144a(Context context, String str, Boolean bool) {
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z = context.checkCallingOrSelfPermission(str) == 0;
        if (z || !Log.isLoggable("FirebaseMessaging", 3)) {
            return z;
        }
        m8142a(str);
        return false;
    }

    /* renamed from: b */
    public boolean m8141b() {
        boolean z;
        synchronized (this) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f56387a.getSystemService("connectivity");
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

    /* renamed from: b */
    private static boolean m8140b(Context context) {
        boolean booleanValue;
        synchronized (f56384f) {
            Boolean bool = f56386h;
            Boolean valueOf = Boolean.valueOf(bool == null ? m8144a(context, "android.permission.ACCESS_NETWORK_STATE", bool) : bool.booleanValue());
            f56386h = valueOf;
            booleanValue = valueOf.booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: c */
    public static boolean m8138c() {
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
        if (m8145a(this.f56387a)) {
            this.f56389c.acquire(C15872b.f56408a);
        }
        try {
            try {
                this.f56390d.m8149a(true);
                if (!this.f56388b.m8211a()) {
                    this.f56390d.m8149a(false);
                    if (!m8145a(this.f56387a)) {
                        return;
                    }
                    try {
                        this.f56389c.release();
                    } catch (RuntimeException e) {
                    }
                } else if (!m8140b(this.f56387a) || m8141b()) {
                    if (this.f56390d.m8156a()) {
                        this.f56390d.m8149a(false);
                    } else {
                        this.f56390d.m8155a(this.f56391e);
                    }
                    if (!m8145a(this.f56387a)) {
                        return;
                    }
                    try {
                        this.f56389c.release();
                    } catch (RuntimeException e2) {
                    }
                } else {
                    C15864a c15864a = new C15864a(this);
                    m8138c();
                    RunnableC15863au.this.f56387a.registerReceiver(c15864a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    if (!m8145a(this.f56387a)) {
                        return;
                    }
                    try {
                        this.f56389c.release();
                    } catch (RuntimeException e3) {
                    }
                }
            } catch (IOException e4) {
                String valueOf = String.valueOf(e4.getMessage());
                Log.e("FirebaseMessaging", valueOf.length() != 0 ? "Failed to sync topics. Won't retry sync. ".concat(valueOf) : new String("Failed to sync topics. Won't retry sync. "));
                this.f56390d.m8149a(false);
                if (!m8145a(this.f56387a)) {
                    return;
                }
                try {
                    this.f56389c.release();
                } catch (RuntimeException e5) {
                }
            }
        } catch (Throwable th) {
            if (m8145a(this.f56387a)) {
                try {
                    this.f56389c.release();
                } catch (RuntimeException e6) {
                }
            }
            throw th;
        }
    }
}
