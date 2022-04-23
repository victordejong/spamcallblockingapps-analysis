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
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ap.class */
public final class ap implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final FirebaseMessaging f32492a;

    /* renamed from: b  reason: collision with root package name */
    ExecutorService f32493b = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.google.android.gms.common.util.a.a("firebase-iid-executor"));

    /* renamed from: c  reason: collision with root package name */
    private final long f32494c;

    /* renamed from: d  reason: collision with root package name */
    private final PowerManager.WakeLock f32495d;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ap$a.class */
    static final class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        ap f32496a;

        public a(ap apVar) {
            this.f32496a = apVar;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            ap apVar = this.f32496a;
            if (apVar != null && apVar.a()) {
                ap.b();
                FirebaseMessaging unused = this.f32496a.f32492a;
                FirebaseMessaging.a(this.f32496a, 0L);
                this.f32496a.f32492a.f32443a.unregisterReceiver(this);
                this.f32496a = null;
            }
        }
    }

    public ap(FirebaseMessaging firebaseMessaging, long j) {
        this.f32492a = firebaseMessaging;
        this.f32494c = j;
        PowerManager.WakeLock newWakeLock = ((PowerManager) firebaseMessaging.f32443a.getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f32495d = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    static boolean b() {
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

    private boolean c() throws IOException {
        try {
            if (this.f32492a.e() == null) {
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
            if (z) {
                String message2 = e.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message2).length() + 52);
                sb.append("Token retrieval failed: ");
                sb.append(message2);
                sb.append(". Will retry token retrieval");
                Log.w("FirebaseMessaging", sb.toString());
                return false;
            } else if (e.getMessage() == null) {
                Log.w("FirebaseMessaging", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            } else {
                throw e;
            }
        } catch (SecurityException e2) {
            Log.w("FirebaseMessaging", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    final boolean a() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f32492a.f32443a.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (al.a().a(this.f32492a.f32443a)) {
            this.f32495d.acquire();
        }
        try {
            try {
                boolean z = true;
                this.f32492a.a(true);
                if (!this.f32492a.e.a()) {
                    this.f32492a.a(false);
                    if (!al.a().a(this.f32492a.f32443a)) {
                        return;
                    }
                } else {
                    al a2 = al.a();
                    Context context = this.f32492a.f32443a;
                    if (a2.f32479b == null) {
                        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
                            z = false;
                        }
                        a2.f32479b = Boolean.valueOf(z);
                    }
                    if (!a2.f32478a.booleanValue()) {
                        Log.isLoggable("FirebaseMessaging", 3);
                    }
                    if (!a2.f32479b.booleanValue() || a()) {
                        if (c()) {
                            this.f32492a.a(false);
                        } else {
                            this.f32492a.a(this.f32494c);
                        }
                        if (!al.a().a(this.f32492a.f32443a)) {
                            return;
                        }
                    } else {
                        a aVar = new a(this);
                        b();
                        aVar.f32496a.f32492a.f32443a.registerReceiver(aVar, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        if (!al.a().a(this.f32492a.f32443a)) {
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
                this.f32492a.a(false);
                if (!al.a().a(this.f32492a.f32443a)) {
                    return;
                }
            }
            this.f32495d.release();
        } catch (Throwable th) {
            if (al.a().a(this.f32492a.f32443a)) {
                this.f32495d.release();
            }
            throw th;
        }
    }
}
