package com.google.firebase.iid;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.firebase.iid.v */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/v.class */
public class RunnableC9200v implements Runnable {

    /* renamed from: d */
    private final long f39570d;

    /* renamed from: e */
    private final PowerManager.WakeLock f39571e;

    /* renamed from: f */
    private final FirebaseInstanceId f39572f;

    /* renamed from: g */
    ExecutorService f39573g = C9178b.m1608b();

    /* renamed from: com.google.firebase.iid.v$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/v$a.class */
    static class C9201a extends BroadcastReceiver {

        /* renamed from: a */
        private RunnableC9200v f39574a;

        public C9201a(RunnableC9200v runnableC9200v) {
            this.f39574a = runnableC9200v;
        }

        /* renamed from: a */
        public void m1565a() {
            if (FirebaseInstanceId.m1624q()) {
                Log.d("FirebaseInstanceId", "Connectivity change received registered");
            }
            this.f39574a.m1568b().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            RunnableC9200v runnableC9200v = this.f39574a;
            if (runnableC9200v != null && runnableC9200v.m1567c()) {
                if (FirebaseInstanceId.m1624q()) {
                    Log.d("FirebaseInstanceId", "Connectivity changed. Starting background sync.");
                }
                this.f39574a.f39572f.m1635f(this.f39574a, 0L);
                this.f39574a.m1568b().unregisterReceiver(this);
                this.f39574a = null;
            }
        }
    }

    public RunnableC9200v(FirebaseInstanceId firebaseInstanceId, long j) {
        this.f39572f = firebaseInstanceId;
        this.f39570d = j;
        PowerManager.WakeLock newWakeLock = ((PowerManager) m1568b().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f39571e = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    /* renamed from: b */
    Context m1568b() {
        return this.f39572f.m1634g().m2533g();
    }

    /* renamed from: c */
    boolean m1567c() {
        ConnectivityManager connectivityManager = (ConnectivityManager) m1568b().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: d */
    boolean m1566d() {
        if (!this.f39572f.m1641E(this.f39572f.m1626o())) {
            return true;
        }
        try {
            if (this.f39572f.m1637d() == null) {
                Log.e("FirebaseInstanceId", "Token retrieval failed: null");
                return false;
            } else if (!Log.isLoggable("FirebaseInstanceId", 3)) {
                return true;
            } else {
                Log.d("FirebaseInstanceId", "Token successfully retrieved");
                return true;
            }
        } catch (IOException e) {
            if (!C9187k.m1601f(e.getMessage())) {
                if (e.getMessage() != null) {
                    throw e;
                }
                Log.w("FirebaseInstanceId", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            }
            String message = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 52);
            sb.append("Token retrieval failed: ");
            sb.append(message);
            sb.append(". Will retry token retrieval");
            Log.w("FirebaseInstanceId", sb.toString());
            return false;
        } catch (SecurityException e2) {
            Log.w("FirebaseInstanceId", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public void run() {
        if (C9197t.m1586a().m1584c(m1568b())) {
            this.f39571e.acquire();
        }
        try {
            try {
                this.f39572f.m1644B(true);
                if (!this.f39572f.m1623r()) {
                    this.f39572f.m1644B(false);
                    if (!C9197t.m1586a().m1584c(m1568b())) {
                        return;
                    }
                } else if (!C9197t.m1586a().m1585b(m1568b()) || m1567c()) {
                    if (m1566d()) {
                        this.f39572f.m1644B(false);
                    } else {
                        this.f39572f.m1642D(this.f39570d);
                    }
                    if (!C9197t.m1586a().m1584c(m1568b())) {
                        return;
                    }
                } else {
                    new C9201a(this).m1565a();
                    if (!C9197t.m1586a().m1584c(m1568b())) {
                        return;
                    }
                }
            } catch (IOException e) {
                String message = e.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 93);
                sb.append("Topic sync or token retrieval failed on hard failure exceptions: ");
                sb.append(message);
                sb.append(". Won't retry the operation.");
                Log.e("FirebaseInstanceId", sb.toString());
                this.f39572f.m1644B(false);
                if (!C9197t.m1586a().m1584c(m1568b())) {
                    return;
                }
            }
            this.f39571e.release();
        } catch (Throwable th) {
            if (C9197t.m1586a().m1584c(m1568b())) {
                this.f39571e.release();
            }
            throw th;
        }
    }
}
