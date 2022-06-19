package com.criteo.publisher.p256m0;

import android.content.Context;
import android.os.Looper;
import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import io.bidmachine.C17824c;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.criteo.publisher.m0.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/b.class */
public class C8424b {

    /* renamed from: a */
    private final C8402g f30178a;

    /* renamed from: b */
    private final C8428d f30179b;

    /* renamed from: c */
    private final Context f30180c;

    /* renamed from: d */
    private final Executor f30181d;

    /* renamed from: e */
    private final AtomicReference<C8426b> f30182e;

    /* renamed from: com.criteo.publisher.m0.b$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/b$a.class */
    public final class C8425a extends AbstractRunnableC8529v {
        C8425a() {
            C8424b.this = r4;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            C8424b.this.m25703d();
        }
    }

    /* renamed from: com.criteo.publisher.m0.b$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/b$b.class */
    public static final class C8426b {

        /* renamed from: c */
        private static final C8426b f30184c = new C8426b(null, false);

        /* renamed from: d */
        private static final C8426b f30185d = new C8426b(C17824c.DEFAULT_ADVERTISING_ID, true);

        /* renamed from: a */
        public final String f30186a;

        /* renamed from: b */
        public final boolean f30187b;

        private C8426b(String str, boolean z) {
            this.f30186a = str;
            this.f30187b = z;
        }

        /* renamed from: a */
        static C8426b m25702a() {
            return f30185d;
        }

        /* renamed from: a */
        static C8426b m25701a(String str) {
            return new C8426b(str, false);
        }

        /* renamed from: b */
        static C8426b m25700b() {
            return f30184c;
        }
    }

    /* renamed from: com.criteo.publisher.m0.b$c */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/b$c.class */
    public static final class C8427c extends Exception {
        C8427c(Throwable th) {
            super("play-services-ads-identifier does not seems to be in the classpath", th);
        }
    }

    /* renamed from: com.criteo.publisher.m0.b$d */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/b$d.class */
    public static final class C8428d {
        C8428d() {
        }

        /* renamed from: a */
        public static String m25699a(Context context) throws Exception {
            try {
                return AdvertisingIdClient.getAdvertisingIdInfo(context).getId();
            } catch (LinkageError e) {
                throw new C8427c(e);
            }
        }

        /* renamed from: b */
        public static boolean m25698b(Context context) throws Exception {
            try {
                return AdvertisingIdClient.getAdvertisingIdInfo(context).isLimitAdTrackingEnabled();
            } catch (LinkageError e) {
                throw new C8427c(e);
            }
        }
    }

    public C8424b(Context context, Executor executor) {
        this(context, executor, new C8428d());
    }

    C8424b(Context context, Executor executor, C8428d c8428d) {
        this.f30178a = C8404h.m25741a(getClass());
        this.f30182e = new AtomicReference<>();
        this.f30180c = context;
        this.f30181d = executor;
        this.f30179b = c8428d;
    }

    /* renamed from: c */
    private static boolean m25704c() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null) {
            return false;
        }
        return Thread.currentThread().equals(mainLooper.getThread());
    }

    /* renamed from: d */
    public void m25703d() {
        C8426b c8426b;
        try {
            c8426b = C8428d.m25698b(this.f30180c) ? C8426b.m25702a() : C8426b.m25701a(C8428d.m25699a(this.f30180c));
        } catch (C8427c e) {
            c8426b = C8426b.m25700b();
            this.f30178a.m25743a("Error getting advertising id", e);
        } catch (Exception e2) {
            this.f30178a.m25743a("Error getting advertising id", e2);
            return;
        }
        this.f30182e.compareAndSet(null, c8426b);
    }

    /* renamed from: a */
    public final C8426b m25707a() {
        if (this.f30182e.get() == null) {
            if (m25704c()) {
                this.f30181d.execute(new C8425a());
            } else {
                m25703d();
            }
        }
        C8426b c8426b = this.f30182e.get();
        C8426b c8426b2 = c8426b;
        if (c8426b == null) {
            c8426b2 = C8426b.m25700b();
        }
        return c8426b2;
    }

    /* renamed from: b */
    public final String m25705b() {
        return m25707a().f30186a;
    }
}
