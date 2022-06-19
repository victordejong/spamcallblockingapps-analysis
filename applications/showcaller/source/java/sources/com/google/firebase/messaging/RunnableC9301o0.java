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
import com.google.android.gms.common.util.p273v.ThreadFactoryC6244a;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.messaging.o0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/o0.class */
public class RunnableC9301o0 implements Runnable {

    /* renamed from: d */
    private final long f39827d;

    /* renamed from: e */
    private final PowerManager.WakeLock f39828e;

    /* renamed from: f */
    private final FirebaseMessaging f39829f;

    /* renamed from: g */
    ExecutorService f39830g = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC6244a("firebase-iid-executor"));

    /* renamed from: com.google.firebase.messaging.o0$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/o0$a.class */
    static class C9302a extends BroadcastReceiver {

        /* renamed from: a */
        private RunnableC9301o0 f39831a;

        public C9302a(RunnableC9301o0 runnableC9301o0) {
            this.f39831a = runnableC9301o0;
        }

        /* renamed from: a */
        public void m1180a() {
            if (RunnableC9301o0.m1183c()) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            this.f39831a.m1184b().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            RunnableC9301o0 runnableC9301o0 = this.f39831a;
            if (runnableC9301o0 != null && runnableC9301o0.m1182d()) {
                if (RunnableC9301o0.m1183c()) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                this.f39831a.f39829f.m1384e(this.f39831a, 0L);
                this.f39831a.m1184b().unregisterReceiver(this);
                this.f39831a = null;
            }
        }
    }

    @SuppressLint({"InvalidWakeLockTag"})
    public RunnableC9301o0(FirebaseMessaging firebaseMessaging, long j) {
        this.f39829f = firebaseMessaging;
        this.f39827d = j;
        PowerManager.WakeLock newWakeLock = ((PowerManager) m1184b().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f39828e = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    /* renamed from: c */
    static boolean m1183c() {
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

    /* renamed from: b */
    Context m1184b() {
        return this.f39829f.m1383f();
    }

    /* renamed from: d */
    boolean m1182d() {
        ConnectivityManager connectivityManager = (ConnectivityManager) m1184b().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: e */
    boolean m1181e() {
        try {
            if (this.f39829f.m1386c() == null) {
                Log.e("FirebaseMessaging", "Token retrieval failed: null");
                return false;
            } else if (!Log.isLoggable("FirebaseMessaging", 3)) {
                return true;
            } else {
                Log.d("FirebaseMessaging", "Token successfully retrieved");
                return true;
            }
        } catch (IOException e) {
            if (!C9268a0.m1318f(e.getMessage())) {
                if (e.getMessage() != null) {
                    throw e;
                }
                Log.w("FirebaseMessaging", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            }
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 52);
            sb.append("Token retrieval failed: ");
            sb.append(message);
            sb.append(". Will retry token retrieval");
            Log.w("FirebaseMessaging", sb.toString());
            return false;
        } catch (SecurityException e2) {
            Log.w("FirebaseMessaging", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"WakelockTimeout"})
    public void run() {
        if (C9292k0.m1224b().m1221e(m1184b())) {
            this.f39828e.acquire();
        }
        try {
            try {
                this.f39829f.m1372q(true);
                if (!this.f39829f.m1377l()) {
                    this.f39829f.m1372q(false);
                    if (!C9292k0.m1224b().m1221e(m1184b())) {
                        return;
                    }
                } else if (!C9292k0.m1224b().m1222d(m1184b()) || m1182d()) {
                    if (m1181e()) {
                        this.f39829f.m1372q(false);
                    } else {
                        this.f39829f.m1369t(this.f39827d);
                    }
                    if (!C9292k0.m1224b().m1221e(m1184b())) {
                        return;
                    }
                } else {
                    new C9302a(this).m1180a();
                    if (!C9292k0.m1224b().m1221e(m1184b())) {
                        return;
                    }
                }
            } catch (IOException e) {
                String message = e.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 93);
                sb.append("Topic sync or token retrieval failed on hard failure exceptions: ");
                sb.append(message);
                sb.append(". Won't retry the operation.");
                Log.e("FirebaseMessaging", sb.toString());
                this.f39829f.m1372q(false);
                if (!C9292k0.m1224b().m1221e(m1184b())) {
                    return;
                }
            }
            this.f39828e.release();
        } catch (Throwable th) {
            if (C9292k0.m1224b().m1221e(m1184b())) {
                this.f39828e.release();
            }
            throw th;
        }
    }
}
