package p189o4;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import ba.C0758g;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import p201p6.C4018c;
import p220r4.C4194c;
import p220r4.C4196e;
import p220r4.C4203l;
import p220r4.C4206o;
/* renamed from: o4.j */
/* loaded from: classes-dex2jar.jar:o4/j.class */
public final class C3873j {

    /* renamed from: o */
    public static final Map f12355o = new HashMap();

    /* renamed from: a */
    public final Context f12356a;

    /* renamed from: b */
    public final C4018c f12357b;

    /* renamed from: c */
    public final String f12358c;

    /* renamed from: g */
    public boolean f12362g;

    /* renamed from: h */
    public final Intent f12363h;

    /* renamed from: i */
    public final AbstractC3866f f12364i;

    /* renamed from: m */
    public ServiceConnection f12368m;

    /* renamed from: n */
    public IInterface f12369n;

    /* renamed from: d */
    public final List f12359d = new ArrayList();

    /* renamed from: e */
    public final Set f12360e = new HashSet();

    /* renamed from: f */
    public final Object f12361f = new Object();

    /* renamed from: k */
    public final IBinder.DeathRecipient f12366k = new IBinder.DeathRecipient() { // from class: o4.b
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            C3873j c3873j = C3873j.this;
            c3873j.f12357b.m1507e("reportBinderDeath", new Object[0]);
            AbstractC3864e abstractC3864e = (AbstractC3864e) c3873j.f12365j.get();
            if (abstractC3864e != null) {
                c3873j.f12357b.m1507e("calling onBinderDied", new Object[0]);
                abstractC3864e.zza();
            } else {
                c3873j.f12357b.m1507e("%s : Binder has died.", c3873j.f12358c);
                for (AbstractRunnableC3856a abstractRunnableC3856a : c3873j.f12359d) {
                    RemoteException remoteException = new RemoteException(String.valueOf(c3873j.f12358c).concat(" : Binder has died."));
                    C4203l c4203l = abstractRunnableC3856a.f12345a;
                    if (c4203l != null) {
                        c4203l.m1294a(remoteException);
                    }
                }
                c3873j.f12359d.clear();
            }
            c3873j.m1746d();
        }
    };

    /* renamed from: l */
    public final AtomicInteger f12367l = new AtomicInteger(0);

    /* renamed from: j */
    public final WeakReference f12365j = new WeakReference(null);

    public C3873j(Context context, C4018c c4018c, String str, Intent intent, AbstractC3866f abstractC3866f, AbstractC3864e abstractC3864e) {
        this.f12356a = context;
        this.f12357b = c4018c;
        this.f12358c = str;
        this.f12363h = intent;
        this.f12364i = abstractC3866f;
    }

    /* renamed from: a */
    public final Handler m1749a() {
        Handler handler;
        Map map = f12355o;
        synchronized (map) {
            if (!((HashMap) map).containsKey(this.f12358c)) {
                HandlerThread handlerThread = new HandlerThread(this.f12358c, 10);
                handlerThread.start();
                ((HashMap) map).put(this.f12358c, new Handler(handlerThread.getLooper()));
            }
            handler = (Handler) ((HashMap) map).get(this.f12358c);
        }
        return handler;
    }

    /* renamed from: b */
    public final void m1748b(AbstractRunnableC3856a abstractRunnableC3856a, C4203l c4203l) {
        synchronized (this.f12361f) {
            this.f12360e.add(c4203l);
            C4206o c4206o = c4203l.f13196a;
            C0758g c0758g = new C0758g(this, c4203l, 3);
            Objects.requireNonNull(c4206o);
            c4206o.f13199b.m1296a(new C4196e(C4194c.f13178a, c0758g));
            c4206o.m1287f();
        }
        synchronized (this.f12361f) {
            if (this.f12367l.getAndIncrement() > 0) {
                this.f12357b.m1510b("Already connected to the service.", new Object[0]);
            }
        }
        m1749a().post(new C3860c(this, abstractRunnableC3856a.f12345a, abstractRunnableC3856a));
    }

    /* renamed from: c */
    public final void m1747c(C4203l c4203l) {
        synchronized (this.f12361f) {
            this.f12360e.remove(c4203l);
        }
        synchronized (this.f12361f) {
            if (this.f12367l.get() > 0 && this.f12367l.decrementAndGet() > 0) {
                this.f12357b.m1507e("Leaving the connection open for other ongoing calls.", new Object[0]);
                return;
            }
            m1749a().post(new C3862d(this));
        }
    }

    /* renamed from: d */
    public final void m1746d() {
        synchronized (this.f12361f) {
            for (C4203l c4203l : this.f12360e) {
                c4203l.m1294a(new RemoteException(String.valueOf(this.f12358c).concat(" : Binder has died.")));
            }
            this.f12360e.clear();
        }
    }
}
