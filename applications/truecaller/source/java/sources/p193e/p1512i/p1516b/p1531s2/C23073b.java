package p193e.p1512i.p1516b.p1531s2;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
/* renamed from: e.i.b.s2.b */
/* loaded from: classes-dex2jar.jar:e/i/b/s2/b.class */
public class C23073b {

    /* renamed from: b */
    public final C23077d f63892b;

    /* renamed from: c */
    public final Context f63893c;

    /* renamed from: d */
    public final Executor f63894d;

    /* renamed from: a */
    public final C23021h f63891a = C23023i.m7583a(C23073b.class);

    /* renamed from: e */
    public final AtomicReference<C23075b> f63895e = new AtomicReference<>();

    /* renamed from: e.i.b.s2.b$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/s2/b$a.class */
    public class C23074a extends AbstractRunnableC22929c3 {
        public C23074a() {
            C23073b.this = r4;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() {
            C23073b.this.m7569a();
        }
    }

    /* renamed from: e.i.b.s2.b$b */
    /* loaded from: classes-dex2jar.jar:e/i/b/s2/b$b.class */
    public static class C23075b {

        /* renamed from: c */
        public static final C23075b f63897c = new C23075b(null, false);

        /* renamed from: d */
        public static final C23075b f63898d = new C23075b("00000000-0000-0000-0000-000000000000", true);

        /* renamed from: a */
        public final String f63899a;

        /* renamed from: b */
        public final boolean f63900b;

        public C23075b(String str, boolean z) {
            this.f63899a = str;
            this.f63900b = z;
        }
    }

    /* renamed from: e.i.b.s2.b$c */
    /* loaded from: classes-dex2jar.jar:e/i/b/s2/b$c.class */
    public static class C23076c extends Exception {
        public C23076c(Throwable th) {
            super("play-services-ads-identifier does not seems to be in the classpath", th);
        }
    }

    /* renamed from: e.i.b.s2.b$d */
    /* loaded from: classes-dex2jar.jar:e/i/b/s2/b$d.class */
    public static class C23077d {
    }

    public C23073b(Context context, Executor executor) {
        C23077d c23077d = new C23077d();
        this.f63893c = context;
        this.f63894d = executor;
        this.f63892b = c23077d;
    }

    /* renamed from: a */
    public final void m7569a() {
        C23075b c23075b;
        try {
            C23077d c23077d = this.f63892b;
            Context context = this.f63893c;
            Objects.requireNonNull(c23077d);
            try {
                String id = AdvertisingIdClient.getAdvertisingIdInfo(context).getId();
                C23077d c23077d2 = this.f63892b;
                Context context2 = this.f63893c;
                Objects.requireNonNull(c23077d2);
                try {
                    c23075b = AdvertisingIdClient.getAdvertisingIdInfo(context2).isLimitAdTrackingEnabled() ? C23075b.f63898d : new C23075b(id, false);
                } catch (LinkageError e) {
                    throw new C23076c(e);
                }
            } catch (LinkageError e2) {
                throw new C23076c(e2);
            }
        } catch (C23076c e3) {
            c23075b = C23075b.f63897c;
            this.f63891a.m7586a(new C23019f(3, "Error getting advertising id", e3, null));
        } catch (Exception e4) {
            this.f63891a.m7586a(new C23019f(3, "Error getting advertising id", e4, null));
            return;
        }
        this.f63895e.compareAndSet(null, c23075b);
    }

    /* renamed from: b */
    public String m7568b() {
        return m7567c().f63899a;
    }

    /* renamed from: c */
    public final C23075b m7567c() {
        if (this.f63895e.get() == null) {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper == null ? false : Thread.currentThread().equals(mainLooper.getThread())) {
                this.f63894d.execute(new C23074a());
            } else {
                m7569a();
            }
        }
        C23075b c23075b = this.f63895e.get();
        C23075b c23075b2 = c23075b;
        if (c23075b == null) {
            c23075b2 = C23075b.f63897c;
        }
        return c23075b2;
    }
}
