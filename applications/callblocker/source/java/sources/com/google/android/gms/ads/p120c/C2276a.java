package com.google.android.gms.ads.p120c;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.C2593f;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.ServiceConnectionC2469a;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.stats.C2694a;
import com.google.android.gms.internal.p134a.AbstractBinderC2757f;
import com.google.android.gms.internal.p134a.AbstractC2756e;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.ads.c.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/c/a.class */
public class C2276a {
    @GuardedBy("this")

    /* renamed from: a */
    private ServiceConnectionC2469a f6574a;
    @GuardedBy("this")

    /* renamed from: b */
    private AbstractC2756e f6575b;
    @GuardedBy("this")

    /* renamed from: c */
    private boolean f6576c;

    /* renamed from: d */
    private final Object f6577d;
    @GuardedBy("mAutoDisconnectTaskLock")

    /* renamed from: e */
    private C2278b f6578e;
    @GuardedBy("this")

    /* renamed from: f */
    private final Context f6579f;

    /* renamed from: g */
    private final boolean f6580g;

    /* renamed from: h */
    private final long f6581h;

    /* renamed from: com.google.android.gms.ads.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/c/a$a.class */
    public static final class C2277a {

        /* renamed from: a */
        private final String f6582a;

        /* renamed from: b */
        private final boolean f6583b;

        public C2277a(String str, boolean z) {
            this.f6582a = str;
            this.f6583b = z;
        }

        /* renamed from: a */
        public final String m14848a() {
            return this.f6582a;
        }

        /* renamed from: b */
        public final boolean m14847b() {
            return this.f6583b;
        }

        public final String toString() {
            String str = this.f6582a;
            return new StringBuilder(String.valueOf(str).length() + 7).append("{").append(str).append("}").append(this.f6583b).toString();
        }
    }

    /* renamed from: com.google.android.gms.ads.c.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/c/a$b.class */
    public static final class C2278b extends Thread {

        /* renamed from: a */
        CountDownLatch f6584a = new CountDownLatch(1);

        /* renamed from: b */
        boolean f6585b = false;

        /* renamed from: c */
        private WeakReference<C2276a> f6586c;

        /* renamed from: d */
        private long f6587d;

        public C2278b(C2276a c2276a, long j) {
            this.f6586c = new WeakReference<>(c2276a);
            this.f6587d = j;
            start();
        }

        /* renamed from: a */
        private final void m14846a() {
            C2276a c2276a = this.f6586c.get();
            if (c2276a != null) {
                c2276a.m14851c();
                this.f6585b = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (this.f6584a.await(this.f6587d, TimeUnit.MILLISECONDS)) {
                    return;
                }
                m14846a();
            } catch (InterruptedException e) {
                m14846a();
            }
        }
    }

    public C2276a(Context context) {
        this(context, 30000L, false, false);
    }

    private C2276a(Context context, long j, boolean z, boolean z2) {
        this.f6577d = new Object();
        C2662s.m13981a(context);
        if (z) {
            Context applicationContext = context.getApplicationContext();
            this.f6579f = applicationContext != null ? applicationContext : context;
        } else {
            this.f6579f = context;
        }
        this.f6576c = false;
        this.f6581h = j;
        this.f6580g = z2;
    }

    /* renamed from: a */
    public static C2277a m14865a(Context context) {
        C2280c c2280c = new C2280c(context);
        boolean m14843a = c2280c.m14843a("gads:ad_id_app_context:enabled", false);
        float m14845a = c2280c.m14845a("gads:ad_id_app_context:ping_ratio", 0.0f);
        String m14844a = c2280c.m14844a("gads:ad_id_use_shared_preference:experiment_id", "");
        C2276a c2276a = new C2276a(context, -1L, m14843a, c2280c.m14843a("gads:ad_id_use_persistent_service:enabled", false));
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            c2276a.m14852b(false);
            C2277a m14854b = c2276a.m14854b();
            c2276a.m14857a(m14854b, m14843a, m14845a, SystemClock.elapsedRealtime() - elapsedRealtime, m14844a, null);
            return m14854b;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: a */
    private static ServiceConnectionC2469a m14863a(Context context, boolean z) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            switch (C2593f.m14165b().mo14163b(context, 12451000)) {
                case 0:
                case 2:
                    String str = z ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : "com.google.android.gms.ads.identifier.service.START";
                    ServiceConnectionC2469a serviceConnectionC2469a = new ServiceConnectionC2469a();
                    Intent intent = new Intent(str);
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (!C2694a.m13893a().m13892a(context, intent, serviceConnectionC2469a, 1)) {
                            throw new IOException("Connection failure");
                        }
                        return serviceConnectionC2469a;
                    } catch (Throwable th) {
                        throw new IOException(th);
                    }
                case 1:
                default:
                    throw new IOException("Google Play services not available");
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new GooglePlayServicesNotAvailableException(9);
        }
    }

    /* renamed from: a */
    private static AbstractC2756e m14864a(Context context, ServiceConnectionC2469a serviceConnectionC2469a) {
        try {
            return AbstractBinderC2757f.m13765a(serviceConnectionC2469a.m14470a(10000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    /* renamed from: a */
    public static void m14855a(boolean z) {
    }

    /* renamed from: a */
    private final boolean m14857a(C2277a c2277a, boolean z, float f, long j, String str, Throwable th) {
        boolean z2;
        if (Math.random() > f) {
            z2 = false;
        } else {
            HashMap hashMap = new HashMap();
            hashMap.put("app_context", z ? "1" : "0");
            if (c2277a != null) {
                hashMap.put("limit_ad_tracking", c2277a.m14847b() ? "1" : "0");
            }
            if (c2277a != null && c2277a.m14848a() != null) {
                hashMap.put("ad_id_size", Integer.toString(c2277a.m14848a().length()));
            }
            if (th != null) {
                hashMap.put("error", th.getClass().getName());
            }
            if (str != null && !str.isEmpty()) {
                hashMap.put("experiment_id", str);
            }
            hashMap.put("tag", "AdvertisingIdClient");
            hashMap.put("time_spent", Long.toString(j));
            new C2279b(this, hashMap).start();
            z2 = true;
        }
        return z2;
    }

    /* renamed from: b */
    private final void m14852b(boolean z) {
        C2662s.m13971c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f6576c) {
                m14851c();
            }
            this.f6574a = m14863a(this.f6579f, this.f6580g);
            this.f6575b = m14864a(this.f6579f, this.f6574a);
            this.f6576c = true;
            if (z) {
                m14850d();
            }
        }
    }

    /* renamed from: b */
    public static boolean m14853b(Context context) {
        C2280c c2280c = new C2280c(context);
        C2276a c2276a = new C2276a(context, -1L, c2280c.m14843a("gads:ad_id_app_context:enabled", false), c2280c.m14843a("com.google.android.gms.ads.identifier.service.PERSISTENT_START", false));
        try {
            c2276a.m14852b(false);
            return c2276a.m14849e();
        } finally {
            c2276a.m14851c();
        }
    }

    /* renamed from: d */
    private final void m14850d() {
        synchronized (this.f6577d) {
            if (this.f6578e != null) {
                this.f6578e.f6584a.countDown();
                try {
                    this.f6578e.join();
                } catch (InterruptedException e) {
                }
            }
            if (this.f6581h > 0) {
                this.f6578e = new C2278b(this, this.f6581h);
            }
        }
    }

    /* renamed from: e */
    private final boolean m14849e() {
        boolean mo13762b;
        C2662s.m13971c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f6576c) {
                synchronized (this.f6577d) {
                    if (this.f6578e == null || !this.f6578e.f6585b) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    m14852b(false);
                    if (!this.f6576c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            C2662s.m13981a(this.f6574a);
            C2662s.m13981a(this.f6575b);
            try {
                mo13762b = this.f6575b.mo13762b();
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        m14850d();
        return mo13762b;
    }

    /* renamed from: a */
    public void m14866a() {
        m14852b(true);
    }

    /* renamed from: b */
    public C2277a m14854b() {
        C2277a c2277a;
        C2662s.m13971c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f6576c) {
                synchronized (this.f6577d) {
                    if (this.f6578e == null || !this.f6578e.f6585b) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    m14852b(false);
                    if (!this.f6576c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            C2662s.m13981a(this.f6574a);
            C2662s.m13981a(this.f6575b);
            try {
                c2277a = new C2277a(this.f6575b.mo13764a(), this.f6575b.mo13763a(true));
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        m14850d();
        return c2277a;
    }

    /* renamed from: c */
    public final void m14851c() {
        C2662s.m13971c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f6579f == null || this.f6574a == null) {
                return;
            }
            if (this.f6576c) {
                C2694a.m13893a().m13891a(this.f6579f, this.f6574a);
            }
            this.f6576c = false;
            this.f6575b = null;
            this.f6574a = null;
        }
    }

    protected void finalize() {
        m14851c();
        super.finalize();
    }
}
