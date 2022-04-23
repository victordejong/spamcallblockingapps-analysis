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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/v.class */
public final class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    ExecutorService f32369a = com.google.firebase.iid.a.b();

    /* renamed from: b  reason: collision with root package name */
    private final long f32370b;

    /* renamed from: c  reason: collision with root package name */
    private final PowerManager.WakeLock f32371c;

    /* renamed from: d  reason: collision with root package name */
    private final FirebaseInstanceId f32372d;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/v$a.class */
    static final class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        v f32373a;

        public a(v vVar) {
            this.f32373a = vVar;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            v vVar = this.f32373a;
            if (vVar != null && vVar.b()) {
                FirebaseInstanceId.c();
                FirebaseInstanceId unused = this.f32373a.f32372d;
                FirebaseInstanceId.a(this.f32373a, 0L);
                this.f32373a.a().unregisterReceiver(this);
                this.f32373a = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(FirebaseInstanceId firebaseInstanceId, long j) {
        this.f32372d = firebaseInstanceId;
        this.f32370b = j;
        PowerManager.WakeLock newWakeLock = ((PowerManager) a().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f32371c = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    private boolean c() throws IOException {
        if (!this.f32372d.a(this.f32372d.b())) {
            return true;
        }
        try {
            FirebaseInstanceId firebaseInstanceId = this.f32372d;
            if (firebaseInstanceId.getToken(n.a(firebaseInstanceId.f32321d), "*") == null) {
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
            if (z) {
                String message2 = e.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message2).length() + 52);
                sb.append("Token retrieval failed: ");
                sb.append(message2);
                sb.append(". Will retry token retrieval");
                Log.w("FirebaseInstanceId", sb.toString());
                return false;
            } else if (e.getMessage() == null) {
                Log.w("FirebaseInstanceId", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            } else {
                throw e;
            }
        } catch (SecurityException e2) {
            Log.w("FirebaseInstanceId", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    final Context a() {
        return this.f32372d.f32321d.a();
    }

    final boolean b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) a().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (t.a().a(a())) {
            this.f32371c.acquire();
        }
        try {
            try {
                boolean z = true;
                this.f32372d.a(true);
                if (!this.f32372d.isGmsCorePresent()) {
                    this.f32372d.a(false);
                    if (!t.a().a(a())) {
                        return;
                    }
                } else {
                    t a2 = t.a();
                    Context a3 = a();
                    if (a2.f32361b == null) {
                        if (a3.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
                            z = false;
                        }
                        a2.f32361b = Boolean.valueOf(z);
                    }
                    if (!a2.f32360a.booleanValue()) {
                        Log.isLoggable("FirebaseInstanceId", 3);
                    }
                    if (!a2.f32361b.booleanValue() || b()) {
                        if (c()) {
                            this.f32372d.a(false);
                        } else {
                            this.f32372d.a(this.f32370b);
                        }
                        if (!t.a().a(a())) {
                            return;
                        }
                    } else {
                        a aVar = new a(this);
                        FirebaseInstanceId.c();
                        aVar.f32373a.a().registerReceiver(aVar, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        if (!t.a().a(a())) {
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
                this.f32372d.a(false);
                if (!t.a().a(a())) {
                    return;
                }
            }
            this.f32371c.release();
        } catch (Throwable th) {
            if (t.a().a(a())) {
                this.f32371c.release();
            }
            throw th;
        }
    }
}
