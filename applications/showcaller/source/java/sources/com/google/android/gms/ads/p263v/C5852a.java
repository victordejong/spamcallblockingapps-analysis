package com.google.android.gms.ads.p263v;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.C6086c;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.ServiceConnectionC5982a;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.stats.C6217a;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import p078c.p084c.p085a.p086a.p088b.p089a.AbstractBinderC1839e;
import p078c.p084c.p085a.p086a.p088b.p089a.AbstractC1838d;
/* renamed from: com.google.android.gms.ads.v.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/v/a.class */
public class C5852a {

    /* renamed from: a */
    private ServiceConnectionC5982a f18801a;

    /* renamed from: b */
    private AbstractC1838d f18802b;

    /* renamed from: c */
    private boolean f18803c;

    /* renamed from: d */
    private final Object f18804d;

    /* renamed from: e */
    private C5854b f18805e;

    /* renamed from: f */
    private final Context f18806f;

    /* renamed from: g */
    private final boolean f18807g;

    /* renamed from: h */
    private final long f18808h;

    /* renamed from: com.google.android.gms.ads.v.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/v/a$a.class */
    public static final class C5853a {

        /* renamed from: a */
        private final String f18809a;

        /* renamed from: b */
        private final boolean f18810b;

        public C5853a(String str, boolean z) {
            this.f18809a = str;
            this.f18810b = z;
        }

        /* renamed from: a */
        public final String m17742a() {
            return this.f18809a;
        }

        /* renamed from: b */
        public final boolean m17741b() {
            return this.f18810b;
        }

        public final String toString() {
            String str = this.f18809a;
            boolean z = this.f18810b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    /* renamed from: com.google.android.gms.ads.v.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/v/a$b.class */
    public static final class C5854b extends Thread {

        /* renamed from: d */
        private WeakReference<C5852a> f18811d;

        /* renamed from: e */
        private long f18812e;

        /* renamed from: f */
        CountDownLatch f18813f = new CountDownLatch(1);

        /* renamed from: g */
        boolean f18814g = false;

        public C5854b(C5852a c5852a, long j) {
            this.f18811d = new WeakReference<>(c5852a);
            this.f18812e = j;
            start();
        }

        /* renamed from: a */
        private final void m17740a() {
            C5852a c5852a = this.f18811d.get();
            if (c5852a != null) {
                c5852a.m17754a();
                this.f18814g = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (this.f18813f.await(this.f18812e, TimeUnit.MILLISECONDS)) {
                    return;
                }
                m17740a();
            } catch (InterruptedException e) {
                m17740a();
            }
        }
    }

    public C5852a(Context context) {
        this(context, 30000L, false, false);
    }

    private C5852a(Context context, long j, boolean z, boolean z2) {
        this.f18804d = new Object();
        C6155o.m17018j(context);
        Context context2 = context;
        if (z) {
            context2 = context.getApplicationContext();
            if (context2 == null) {
                context2 = context;
            }
        }
        this.f18806f = context2;
        this.f18803c = false;
        this.f18808h = j;
        this.f18807g = z2;
    }

    /* renamed from: b */
    public static C5853a m17753b(Context context) {
        C5856c c5856c = new C5856c(context);
        boolean m17739a = c5856c.m17739a("gads:ad_id_app_context:enabled", false);
        float m17738b = c5856c.m17738b("gads:ad_id_app_context:ping_ratio", 0.0f);
        String m17737c = c5856c.m17737c("gads:ad_id_use_shared_preference:experiment_id", "");
        C5852a c5852a = new C5852a(context, -1L, m17739a, c5856c.m17739a("gads:ad_id_use_persistent_service:enabled", false));
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            c5852a.m17745j(false);
            C5853a m17752c = c5852a.m17752c();
            c5852a.m17744k(m17752c, m17739a, m17738b, SystemClock.elapsedRealtime() - elapsedRealtime, m17737c, null);
            return m17752c;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: d */
    public static boolean m17751d(Context context) {
        C5856c c5856c = new C5856c(context);
        C5852a c5852a = new C5852a(context, -1L, c5856c.m17739a("gads:ad_id_app_context:enabled", false), c5856c.m17739a("com.google.android.gms.ads.identifier.service.PERSISTENT_START", false));
        try {
            c5852a.m17745j(false);
            return c5852a.m17743l();
        } finally {
            c5852a.m17754a();
        }
    }

    /* renamed from: e */
    public static void m17750e(boolean z) {
    }

    /* renamed from: g */
    private static ServiceConnectionC5982a m17748g(Context context, boolean z) {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            int mo17219h = C6086c.m17221f().mo17219h(context, C6094e.f19409a);
            if (mo17219h != 0 && mo17219h != 2) {
                throw new IOException("Google Play services not available");
            }
            String str = z ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : "com.google.android.gms.ads.identifier.service.START";
            ServiceConnectionC5982a serviceConnectionC5982a = new ServiceConnectionC5982a();
            Intent intent = new Intent(str);
            intent.setPackage("com.google.android.gms");
            try {
                if (!C6217a.m16846b().m16847a(context, intent, serviceConnectionC5982a, 1)) {
                    throw new IOException("Connection failure");
                }
                return serviceConnectionC5982a;
            } catch (Throwable th) {
                throw new IOException(th);
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new GooglePlayServicesNotAvailableException(9);
        }
    }

    /* renamed from: h */
    private static AbstractC1838d m17747h(Context context, ServiceConnectionC5982a serviceConnectionC5982a) {
        try {
            return AbstractBinderC1839e.m28802c0(serviceConnectionC5982a.m17495b(OkHttpUtils.DEFAULT_MILLISECONDS, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    /* renamed from: i */
    private final void m17746i() {
        synchronized (this.f18804d) {
            C5854b c5854b = this.f18805e;
            if (c5854b != null) {
                c5854b.f18813f.countDown();
                try {
                    this.f18805e.join();
                } catch (InterruptedException e) {
                }
            }
            if (this.f18808h > 0) {
                this.f18805e = new C5854b(this, this.f18808h);
            }
        }
    }

    /* renamed from: j */
    private final void m17745j(boolean z) {
        C6155o.m17019i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f18803c) {
                m17754a();
            }
            ServiceConnectionC5982a m17748g = m17748g(this.f18806f, this.f18807g);
            this.f18801a = m17748g;
            this.f18802b = m17747h(this.f18806f, m17748g);
            this.f18803c = true;
            if (z) {
                m17746i();
            }
        }
    }

    /* renamed from: k */
    private final boolean m17744k(C5853a c5853a, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() > f) {
            return false;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("app_context", z ? "1" : "0");
        if (c5853a != null) {
            hashMap.put("limit_ad_tracking", c5853a.m17741b() ? "1" : "0");
        }
        if (c5853a != null && c5853a.m17742a() != null) {
            hashMap.put("ad_id_size", Integer.toString(c5853a.m17742a().length()));
        }
        if (th != null) {
            hashMap.put("error", th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            hashMap.put("experiment_id", str);
        }
        hashMap.put("tag", "AdvertisingIdClient");
        hashMap.put("time_spent", Long.toString(j));
        new C5855b(this, hashMap).start();
        return true;
    }

    /* renamed from: l */
    private final boolean m17743l() {
        boolean mo28801c;
        C6155o.m17019i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f18803c) {
                synchronized (this.f18804d) {
                    C5854b c5854b = this.f18805e;
                    if (c5854b == null || !c5854b.f18814g) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    m17745j(false);
                    if (!this.f18803c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            C6155o.m17018j(this.f18801a);
            C6155o.m17018j(this.f18802b);
            try {
                mo28801c = this.f18802b.mo28801c();
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        m17746i();
        return mo28801c;
    }

    /* renamed from: a */
    public final void m17754a() {
        C6155o.m17019i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f18806f == null || this.f18801a == null) {
                return;
            }
            if (this.f18803c) {
                C6217a.m16846b().m16845c(this.f18806f, this.f18801a);
            }
            this.f18803c = false;
            this.f18802b = null;
            this.f18801a = null;
        }
    }

    /* renamed from: c */
    public C5853a m17752c() {
        C5853a c5853a;
        C6155o.m17019i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f18803c) {
                synchronized (this.f18804d) {
                    C5854b c5854b = this.f18805e;
                    if (c5854b == null || !c5854b.f18814g) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    m17745j(false);
                    if (!this.f18803c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e);
                }
            }
            C6155o.m17018j(this.f18801a);
            C6155o.m17018j(this.f18802b);
            try {
                c5853a = new C5853a(this.f18802b.getId(), this.f18802b.mo28800r0(true));
            } catch (RemoteException e2) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                throw new IOException("Remote exception");
            }
        }
        m17746i();
        return c5853a;
    }

    /* renamed from: f */
    public void m17749f() {
        m17745j(true);
    }

    protected void finalize() {
        m17754a();
        super.finalize();
    }
}
