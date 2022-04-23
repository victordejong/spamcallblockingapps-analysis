package p081h.p203i.p325c.p364t;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceId;
import java.io.IOException;
import javax.annotation.Nullable;
import p081h.p203i.p325c.p364t.C9899q0;
/* renamed from: h.i.c.t.r0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/r0.class */
public class RunnableC9902r0 implements Runnable {

    /* renamed from: a */
    public final long f22425a;

    /* renamed from: b */
    public final PowerManager.WakeLock f22426b = ((PowerManager) m13986a().getSystemService("power")).newWakeLock(1, "fiid-sync");

    /* renamed from: c */
    public final FirebaseInstanceId f22427c;

    /* renamed from: h.i.c.t.r0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/t/r0$a.class */
    public static class C9903a extends BroadcastReceiver {
        @Nullable

        /* renamed from: a */
        public RunnableC9902r0 f22428a;

        public C9903a(RunnableC9902r0 r0Var) {
            this.f22428a = r0Var;
        }

        /* renamed from: a */
        public void m13981a() {
            FirebaseInstanceId.m31078k();
            this.f22428a.m13986a().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            RunnableC9902r0 r0Var = this.f22428a;
            if (r0Var != null && r0Var.m13983b()) {
                FirebaseInstanceId.m31078k();
                this.f22428a.f22427c.m31101a(this.f22428a, 0L);
                this.f22428a.m13986a().unregisterReceiver(this);
                this.f22428a = null;
            }
        }
    }

    public RunnableC9902r0(FirebaseInstanceId firebaseInstanceId, long j) {
        this.f22427c = firebaseInstanceId;
        this.f22425a = j;
        this.f22426b.setReferenceCounted(false);
    }

    /* renamed from: a */
    public Context m13986a() {
        return this.f22427c.m31088c().m15173b();
    }

    /* renamed from: a */
    public final void m13984a(String str) {
        if ("[DEFAULT]".equals(this.f22427c.m31088c().m15170c())) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String valueOf = String.valueOf(this.f22427c.m31088c().m15170c());
                if (valueOf.length() != 0) {
                    "Invoking onNewToken for app: ".concat(valueOf);
                } else {
                    new String("Invoking onNewToken for app: ");
                }
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            C9897p0.m14018d(m13986a(), intent);
        }
    }

    /* renamed from: b */
    public boolean m13983b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) m13986a().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: c */
    public boolean m13982c() throws IOException {
        C9899q0.C9900a f = this.f22427c.m31083f();
        if (!this.f22427c.m31102a(f)) {
            return true;
        }
        try {
            String a = this.f22427c.m31107a();
            if (a == null) {
                Log.e("FirebaseInstanceId", "Token retrieval failed: null");
                return false;
            }
            Log.isLoggable("FirebaseInstanceId", 3);
            if (f != null && (f == null || a.equals(f.f22416a))) {
                return true;
            }
            m13984a(a);
            return true;
        } catch (IOException e) {
            if (C9901r.m13995a(e.getMessage())) {
                String message = e.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 52);
                sb.append("Token retrieval failed: ");
                sb.append(message);
                sb.append(". Will retry token retrieval");
                sb.toString();
                return false;
            } else if (e.getMessage() == null) {
                return false;
            } else {
                throw e;
            }
        } catch (SecurityException e2) {
            return false;
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public void run() {
        if (C9897p0.m14022b().m14021b(m13986a())) {
            this.f22426b.acquire();
        }
        try {
            try {
                this.f22427c.m31094a(true);
                if (!this.f22427c.isGmsCorePresent()) {
                    this.f22427c.m31094a(false);
                    if (C9897p0.m14022b().m14021b(m13986a())) {
                        this.f22426b.release();
                    }
                } else if (!C9897p0.m14022b().m14026a(m13986a()) || m13983b()) {
                    if (m13982c()) {
                        this.f22427c.m31094a(false);
                    } else {
                        this.f22427c.m31106a(this.f22425a);
                    }
                    if (C9897p0.m14022b().m14021b(m13986a())) {
                        this.f22426b.release();
                    }
                } else {
                    new C9903a(this).m13981a();
                    if (C9897p0.m14022b().m14021b(m13986a())) {
                        this.f22426b.release();
                    }
                }
            } catch (IOException e) {
                String message = e.getMessage();
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 93);
                sb.append("Topic sync or token retrieval failed on hard failure exceptions: ");
                sb.append(message);
                sb.append(". Won't retry the operation.");
                Log.e("FirebaseInstanceId", sb.toString());
                this.f22427c.m31094a(false);
                if (C9897p0.m14022b().m14021b(m13986a())) {
                    this.f22426b.release();
                }
            }
        } catch (Throwable th) {
            if (C9897p0.m14022b().m14021b(m13986a())) {
                this.f22426b.release();
            }
            throw th;
        }
    }
}
