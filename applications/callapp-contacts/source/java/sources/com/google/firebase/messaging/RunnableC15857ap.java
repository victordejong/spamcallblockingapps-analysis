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
import com.google.android.gms.common.util.p354a.ThreadFactoryC12095a;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.messaging.ap */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ap.class */
public final class RunnableC15857ap implements Runnable {

    /* renamed from: a */
    final FirebaseMessaging f56355a;

    /* renamed from: b */
    ExecutorService f56356b = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC12095a("firebase-iid-executor"));

    /* renamed from: c */
    private final long f56357c;

    /* renamed from: d */
    private final PowerManager.WakeLock f56358d;

    /* renamed from: com.google.firebase.messaging.ap$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ap$a.class */
    static final class C15858a extends BroadcastReceiver {

        /* renamed from: a */
        RunnableC15857ap f56359a;

        public C15858a(RunnableC15857ap runnableC15857ap) {
            this.f56359a = runnableC15857ap;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            RunnableC15857ap runnableC15857ap = this.f56359a;
            if (runnableC15857ap != null && runnableC15857ap.m8165a()) {
                RunnableC15857ap.m8163b();
                FirebaseMessaging unused = this.f56359a.f56355a;
                FirebaseMessaging.m8261a(this.f56359a, 0L);
                this.f56359a.f56355a.f56271a.unregisterReceiver(this);
                this.f56359a = null;
            }
        }
    }

    public RunnableC15857ap(FirebaseMessaging firebaseMessaging, long j) {
        this.f56355a = firebaseMessaging;
        this.f56357c = j;
        PowerManager.WakeLock newWakeLock = ((PowerManager) firebaseMessaging.f56271a.getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f56358d = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    /* renamed from: b */
    static boolean m8163b() {
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

    /* renamed from: c */
    private boolean m8162c() throws IOException {
        try {
            if (this.f56355a.m8254e() == null) {
                Log.e("FirebaseMessaging", "Token retrieval failed: null");
                return false;
            }
            Log.isLoggable("FirebaseMessaging", 3);
            return true;
        } catch (IOException e) {
            String message = e.getMessage();
            boolean z = true;
            if (!"SERVICE_NOT_AVAILABLE".equals(message)) {
                z = true;
                if (!"INTERNAL_SERVER_ERROR".equals(message)) {
                    z = "InternalServerError".equals(message);
                }
            }
            if (!z) {
                if (e.getMessage() != null) {
                    throw e;
                }
                Log.w("FirebaseMessaging", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            }
            String message2 = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message2).length() + 52);
            sb.append("Token retrieval failed: ");
            sb.append(message2);
            sb.append(". Will retry token retrieval");
            Log.w("FirebaseMessaging", sb.toString());
            return false;
        } catch (SecurityException e2) {
            Log.w("FirebaseMessaging", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    /* renamed from: a */
    final boolean m8165a() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f56355a.f56271a.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (C15852al.m8181a().m8180a(this.f56355a.f56271a)) {
            this.f56358d.acquire();
        }
        try {
            try {
                boolean z = true;
                this.f56355a.m8259a(true);
                if (!this.f56355a.f56275e.m8211a()) {
                    this.f56355a.m8259a(false);
                    if (!C15852al.m8181a().m8180a(this.f56355a.f56271a)) {
                        return;
                    }
                } else {
                    C15852al m8181a = C15852al.m8181a();
                    Context context = this.f56355a.f56271a;
                    if (m8181a.f56339b == null) {
                        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
                            z = false;
                        }
                        m8181a.f56339b = Boolean.valueOf(z);
                    }
                    if (!m8181a.f56338a.booleanValue()) {
                        Log.isLoggable("FirebaseMessaging", 3);
                    }
                    if (!m8181a.f56339b.booleanValue() || m8165a()) {
                        if (m8162c()) {
                            this.f56355a.m8259a(false);
                        } else {
                            this.f56355a.m8264a(this.f56357c);
                        }
                        if (!C15852al.m8181a().m8180a(this.f56355a.f56271a)) {
                            return;
                        }
                    } else {
                        C15858a c15858a = new C15858a(this);
                        m8163b();
                        c15858a.f56359a.f56355a.f56271a.registerReceiver(c15858a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        if (!C15852al.m8181a().m8180a(this.f56355a.f56271a)) {
                            return;
                        }
                    }
                }
            } catch (IOException e) {
                String message = e.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 93);
                sb.append("Topic sync or token retrieval failed on hard failure exceptions: ");
                sb.append(message);
                sb.append(". Won't retry the operation.");
                Log.e("FirebaseMessaging", sb.toString());
                this.f56355a.m8259a(false);
                if (!C15852al.m8181a().m8180a(this.f56355a.f56271a)) {
                    return;
                }
            }
            this.f56358d.release();
        } catch (Throwable th) {
            if (C15852al.m8181a().m8180a(this.f56355a.f56271a)) {
                this.f56358d.release();
            }
            throw th;
        }
    }
}
