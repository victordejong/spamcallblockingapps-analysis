package com.criteo.publisher.m0;

import android.content.Context;
import android.os.Looper;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.v;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final g f17496a;

    /* renamed from: b  reason: collision with root package name */
    private final d f17497b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f17498c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f17499d;
    private final AtomicReference<C0349b> e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/b$a.class */
    public final class a extends v {
        a() {
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            b.this.d();
        }
    }

    /* renamed from: com.criteo.publisher.m0.b$b  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/b$b.class */
    public static final class C0349b {

        /* renamed from: c  reason: collision with root package name */
        private static final C0349b f17501c = new C0349b(null, false);

        /* renamed from: d  reason: collision with root package name */
        private static final C0349b f17502d = new C0349b(io.bidmachine.c.DEFAULT_ADVERTISING_ID, true);

        /* renamed from: a  reason: collision with root package name */
        public final String f17503a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f17504b;

        private C0349b(String str, boolean z) {
            this.f17503a = str;
            this.f17504b = z;
        }

        static C0349b a() {
            return f17502d;
        }

        static C0349b a(String str) {
            return new C0349b(str, false);
        }

        static C0349b b() {
            return f17501c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/b$c.class */
    public static final class c extends Exception {
        c(Throwable th) {
            super("play-services-ads-identifier does not seems to be in the classpath", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/b$d.class */
    public static final class d {
        d() {
        }

        public static String a(Context context) throws Exception {
            try {
                return AdvertisingIdClient.getAdvertisingIdInfo(context).getId();
            } catch (LinkageError e) {
                throw new c(e);
            }
        }

        public static boolean b(Context context) throws Exception {
            try {
                return AdvertisingIdClient.getAdvertisingIdInfo(context).isLimitAdTrackingEnabled();
            } catch (LinkageError e) {
                throw new c(e);
            }
        }
    }

    public b(Context context, Executor executor) {
        this(context, executor, new d());
    }

    b(Context context, Executor executor, d dVar) {
        this.f17496a = h.a(getClass());
        this.e = new AtomicReference<>();
        this.f17498c = context;
        this.f17499d = executor;
        this.f17497b = dVar;
    }

    private static boolean c() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null) {
            return false;
        }
        return Thread.currentThread().equals(mainLooper.getThread());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        C0349b bVar;
        try {
            bVar = d.b(this.f17498c) ? C0349b.a() : C0349b.a(d.a(this.f17498c));
        } catch (c e) {
            bVar = C0349b.b();
            this.f17496a.a("Error getting advertising id", e);
        } catch (Exception e2) {
            this.f17496a.a("Error getting advertising id", e2);
            return;
        }
        this.e.compareAndSet(null, bVar);
    }

    public final C0349b a() {
        if (this.e.get() == null) {
            if (c()) {
                this.f17499d.execute(new a());
            } else {
                d();
            }
        }
        C0349b bVar = this.e.get();
        C0349b bVar2 = bVar;
        if (bVar == null) {
            bVar2 = C0349b.b();
        }
        return bVar2;
    }

    public final String b() {
        return a().f17503a;
    }
}
