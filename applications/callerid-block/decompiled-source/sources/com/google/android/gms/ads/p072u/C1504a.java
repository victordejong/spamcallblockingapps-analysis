package com.google.android.gms.ads.p072u;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.C1554b;
import com.google.android.gms.common.C1555c;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.ServiceConnectionC1546a;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.stats.C1599a;
import com.zhy.http.okhttp.OkHttpUtils;
import e.c.a.a.a.a.d;
import e.c.a.a.a.a.e;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.ads.u.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/u/a.class */
public class C1504a {
    @GuardedBy("this")

    /* renamed from: a */
    private ServiceConnectionC1546a f5716a;
    @GuardedBy("this")

    /* renamed from: b */
    private d f5717b;
    @GuardedBy("this")

    /* renamed from: c */
    private boolean f5718c;

    /* renamed from: d */
    private final Object f5719d;
    @GuardedBy("mAutoDisconnectTaskLock")

    /* renamed from: e */
    private C1506b f5720e;
    @GuardedBy("this")

    /* renamed from: f */
    private final Context f5721f;

    /* renamed from: g */
    private final boolean f5722g;

    /* renamed from: h */
    private final long f5723h;

    /* renamed from: com.google.android.gms.ads.u.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/u/a$a.class */
    public static final class C1505a {

        /* renamed from: a */
        private final String f5724a;

        /* renamed from: b */
        private final boolean f5725b;

        public C1505a(String str, boolean z) {
            this.f5724a = str;
            this.f5725b = z;
        }

        /* renamed from: a */
        public final String m8543a() {
            return this.f5724a;
        }

        /* renamed from: b */
        public final boolean m8542b() {
            return this.f5725b;
        }

        public final String toString() {
            String str = this.f5724a;
            boolean z = this.f5725b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.ads.u.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/u/a$b.class */
    public static final class C1506b extends Thread {

        /* renamed from: b */
        private WeakReference<C1504a> f5726b;

        /* renamed from: c */
        private long f5727c;

        /* renamed from: d */
        CountDownLatch f5728d = new CountDownLatch(1);

        /* renamed from: e */
        boolean f5729e = false;

        public C1506b(C1504a aVar, long j) {
            this.f5726b = new WeakReference<>(aVar);
            this.f5727c = j;
            start();
        }

        /* renamed from: a */
        private final void m8541a() {
            C1504a aVar = this.f5726b.get();
            if (aVar != null) {
                aVar.m8555a();
                this.f5729e = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (!this.f5728d.await(this.f5727c, TimeUnit.MILLISECONDS)) {
                    m8541a();
                }
            } catch (InterruptedException e) {
                m8541a();
            }
        }
    }

    public C1504a(Context context) {
        this(context, 30000L, false, false);
    }

    private C1504a(Context context, long j, boolean z, boolean z2) {
        this.f5719d = new Object();
        C1581h.m8347h(context);
        Context context2 = context;
        if (z) {
            context2 = context.getApplicationContext();
            if (context2 == null) {
                context2 = context;
            }
        }
        this.f5721f = context2;
        this.f5718c = false;
        this.f5723h = j;
        this.f5722g = z2;
    }

    /* renamed from: b */
    public static C1505a m8554b(Context context) {
        C1508c cVar = new C1508c(context);
        boolean a = cVar.m8540a("gads:ad_id_app_context:enabled", false);
        float b = cVar.m8539b("gads:ad_id_app_context:ping_ratio", 0.0f);
        String c = cVar.m8538c("gads:ad_id_use_shared_preference:experiment_id", "");
        C1504a aVar = new C1504a(context, -1L, a, cVar.m8540a("gads:ad_id_use_persistent_service:enabled", false));
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            aVar.m8546j(false);
            C1505a c2 = aVar.m8553c();
            aVar.m8545k(c2, a, b, SystemClock.elapsedRealtime() - elapsedRealtime, c, null);
            return c2;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: d */
    public static boolean m8552d(Context context) {
        C1508c cVar = new C1508c(context);
        C1504a aVar = new C1504a(context, -1L, cVar.m8540a("gads:ad_id_app_context:enabled", false), cVar.m8540a("com.google.android.gms.ads.identifier.service.PERSISTENT_START", false));
        try {
            aVar.m8546j(false);
            return aVar.m8544l();
        } finally {
            aVar.m8555a();
        }
    }

    /* renamed from: e */
    public static void m8551e(boolean z) {
    }

    /* renamed from: g */
    private static ServiceConnectionC1546a m8549g(Context context, boolean z) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            int d = C1554b.m8455b().m8453d(context, C1555c.f5812a);
            if (d == 0 || d == 2) {
                String str = z ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : "com.google.android.gms.ads.identifier.service.START";
                ServiceConnectionC1546a aVar = new ServiceConnectionC1546a();
                Intent intent = new Intent(str);
                intent.setPackage("com.google.android.gms");
                try {
                    if (C1599a.m8265b().m8266a(context, intent, aVar, 1)) {
                        return aVar;
                    }
                    throw new IOException("Connection failure");
                } catch (Throwable th) {
                    throw new IOException(th);
                }
            } else {
                throw new IOException("Google Play services not available");
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new GooglePlayServicesNotAvailableException(9);
        }
    }

    /* renamed from: h */
    private static d m8548h(Context context, ServiceConnectionC1546a aVar) {
        try {
            return e.h0(aVar.m8471a(OkHttpUtils.DEFAULT_MILLISECONDS, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    /* renamed from: i */
    private final void m8547i() {
        synchronized (this.f5719d) {
            C1506b bVar = this.f5720e;
            if (bVar != null) {
                bVar.f5728d.countDown();
                try {
                    this.f5720e.join();
                } catch (InterruptedException e) {
                }
            }
            if (this.f5723h > 0) {
                this.f5720e = new C1506b(this, this.f5723h);
            }
        }
    }

    /* renamed from: j */
    private final void m8546j(boolean z) {
        C1581h.m8348g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f5718c) {
                m8555a();
            }
            ServiceConnectionC1546a g = m8549g(this.f5721f, this.f5722g);
            this.f5716a = g;
            this.f5717b = m8548h(this.f5721f, g);
            this.f5718c = true;
            if (z) {
                m8547i();
            }
        }
    }

    /* renamed from: k */
    private final boolean m8545k(C1505a aVar, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() > f) {
            return false;
        }
        HashMap hashMap = new HashMap();
        String str2 = "1";
        hashMap.put("app_context", z ? "1" : "0");
        if (aVar != null) {
            if (!aVar.m8542b()) {
                str2 = "0";
            }
            hashMap.put("limit_ad_tracking", str2);
        }
        if (!(aVar == null || aVar.m8543a() == null)) {
            hashMap.put("ad_id_size", Integer.toString(aVar.m8543a().length()));
        }
        if (th != null) {
            hashMap.put("error", th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            hashMap.put("experiment_id", str);
        }
        hashMap.put("tag", "AdvertisingIdClient");
        hashMap.put("time_spent", Long.toString(j));
        new C1507b(this, hashMap).start();
        return true;
    }

    /* renamed from: l */
    private final boolean m8544l() {
        boolean c;
        C1581h.m8348g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f5718c) {
                synchronized (this.f5719d) {
                    C1506b bVar = this.f5720e;
                    if (bVar == null || !bVar.f5729e) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    m8546j(false);
                    if (!this.f5718c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            C1581h.m8347h(this.f5716a);
            C1581h.m8347h(this.f5717b);
            try {
                c = this.f5717b.c();
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        m8547i();
        return c;
    }

    /* renamed from: a */
    public final void m8555a() {
        C1581h.m8348g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f5721f != null && this.f5716a != null) {
                if (this.f5718c) {
                    C1599a.m8265b().m8264c(this.f5721f, this.f5716a);
                }
                this.f5718c = false;
                this.f5717b = null;
                this.f5716a = null;
            }
        }
    }

    /* renamed from: c */
    public C1505a m8553c() {
        C1505a aVar;
        C1581h.m8348g("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f5718c) {
                synchronized (this.f5719d) {
                    C1506b bVar = this.f5720e;
                    if (bVar == null || !bVar.f5729e) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    m8546j(false);
                    if (!this.f5718c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            C1581h.m8347h(this.f5716a);
            C1581h.m8347h(this.f5717b);
            try {
                aVar = new C1505a(this.f5717b.F(), this.f5717b.q4(true));
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        m8547i();
        return aVar;
    }

    /* renamed from: f */
    public void m8550f() {
        m8546j(true);
    }

    protected void finalize() {
        m8555a();
        super.finalize();
    }
}
