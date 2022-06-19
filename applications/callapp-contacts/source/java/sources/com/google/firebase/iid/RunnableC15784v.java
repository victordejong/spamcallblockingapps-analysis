package com.google.firebase.iid;

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
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/v.class */
public final class RunnableC15784v implements Runnable {

    /* renamed from: a */
    ExecutorService f56169a = C15759a.m8427b();

    /* renamed from: b */
    private final long f56170b;

    /* renamed from: c */
    private final PowerManager.WakeLock f56171c;

    /* renamed from: d */
    private final FirebaseInstanceId f56172d;

    /* renamed from: com.google.firebase.iid.v$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/v$a.class */
    static final class C15785a extends BroadcastReceiver {

        /* renamed from: a */
        RunnableC15784v f56173a;

        public C15785a(RunnableC15784v runnableC15784v) {
            this.f56173a = runnableC15784v;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            RunnableC15784v runnableC15784v = this.f56173a;
            if (runnableC15784v != null && runnableC15784v.m8389b()) {
                FirebaseInstanceId.m8437c();
                FirebaseInstanceId unused = this.f56173a.f56172d;
                FirebaseInstanceId.m8446a(this.f56173a, 0L);
                this.f56173a.m8391a().unregisterReceiver(this);
                this.f56173a = null;
            }
        }
    }

    public RunnableC15784v(FirebaseInstanceId firebaseInstanceId, long j) {
        this.f56172d = firebaseInstanceId;
        this.f56170b = j;
        PowerManager.WakeLock newWakeLock = ((PowerManager) m8391a().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f56171c = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    /* renamed from: c */
    private boolean m8388c() throws IOException {
        if (!this.f56172d.m8447a(this.f56172d.m8441b())) {
            return true;
        }
        try {
            FirebaseInstanceId firebaseInstanceId = this.f56172d;
            if (firebaseInstanceId.getToken(C15774n.m8417a(firebaseInstanceId.f56111d), "*") == null) {
                Log.e("FirebaseInstanceId", "Token retrieval failed: null");
                return false;
            }
            Log.isLoggable("FirebaseInstanceId", 3);
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
                Log.w("FirebaseInstanceId", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            }
            String message2 = e.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(message2).length() + 52);
            sb.append("Token retrieval failed: ");
            sb.append(message2);
            sb.append(". Will retry token retrieval");
            Log.w("FirebaseInstanceId", sb.toString());
            return false;
        } catch (SecurityException e2) {
            Log.w("FirebaseInstanceId", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    /* renamed from: a */
    final Context m8391a() {
        return this.f56172d.f56111d.m8583a();
    }

    /* renamed from: b */
    final boolean m8389b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) m8391a().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (C15781t.m8408a().m8407a(m8391a())) {
            this.f56171c.acquire();
        }
        try {
            try {
                boolean z = true;
                this.f56172d.m8442a(true);
                if (!this.f56172d.isGmsCorePresent()) {
                    this.f56172d.m8442a(false);
                    if (!C15781t.m8408a().m8407a(m8391a())) {
                        return;
                    }
                } else {
                    C15781t m8408a = C15781t.m8408a();
                    Context m8391a = m8391a();
                    if (m8408a.f56161b == null) {
                        if (m8391a.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
                            z = false;
                        }
                        m8408a.f56161b = Boolean.valueOf(z);
                    }
                    if (!m8408a.f56160a.booleanValue()) {
                        Log.isLoggable("FirebaseInstanceId", 3);
                    }
                    if (!m8408a.f56161b.booleanValue() || m8389b()) {
                        if (m8388c()) {
                            this.f56172d.m8442a(false);
                        } else {
                            this.f56172d.m8450a(this.f56170b);
                        }
                        if (!C15781t.m8408a().m8407a(m8391a())) {
                            return;
                        }
                    } else {
                        C15785a c15785a = new C15785a(this);
                        FirebaseInstanceId.m8437c();
                        c15785a.f56173a.m8391a().registerReceiver(c15785a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        if (!C15781t.m8408a().m8407a(m8391a())) {
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
                Log.e("FirebaseInstanceId", sb.toString());
                this.f56172d.m8442a(false);
                if (!C15781t.m8408a().m8407a(m8391a())) {
                    return;
                }
            }
            this.f56171c.release();
        } catch (Throwable th) {
            if (C15781t.m8408a().m8407a(m8391a())) {
                this.f56171c.release();
            }
            throw th;
        }
    }
}
