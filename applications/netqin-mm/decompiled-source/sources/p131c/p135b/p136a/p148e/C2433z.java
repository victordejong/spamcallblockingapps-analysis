package p131c.p135b.p136a.p148e;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import com.applovin.impl.sdk.EventServiceImpl;
import com.squareup.picasso.Utils;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.p151e.C2267f;
import p131c.p135b.p136a.p148e.p153y.AbstractC2381a;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
/* renamed from: c.b.a.e.z */
/* loaded from: classes-dex2jar.jar:c/b/a/e/z.class */
public class C2433z {

    /* renamed from: a */
    public final C2341l f9365a;

    /* renamed from: b */
    public final AtomicBoolean f9366b = new AtomicBoolean();

    /* renamed from: c */
    public final AtomicBoolean f9367c = new AtomicBoolean();

    /* renamed from: d */
    public Date f9368d;

    /* renamed from: e */
    public Date f9369e;

    /* renamed from: c.b.a.e.z$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/z$a.class */
    public class C2434a extends AbstractC2381a {
        public C2434a() {
        }

        @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            C2433z.this.m29741d();
        }
    }

    /* renamed from: c.b.a.e.z$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/z$b.class */
    public class ComponentCallbacks2C2435b implements ComponentCallbacks2 {
        public ComponentCallbacks2C2435b() {
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i) {
            if (i == 20) {
                C2433z.this.m29740e();
            }
        }
    }

    /* renamed from: c.b.a.e.z$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/z$c.class */
    public class C2436c extends BroadcastReceiver {
        public C2436c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.USER_PRESENT".equals(action)) {
                if (AbstractC2426r.m29782c()) {
                    C2433z.this.m29741d();
                }
            } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                C2433z.this.m29740e();
            }
        }
    }

    public C2433z(C2341l lVar) {
        this.f9365a = lVar;
        Application application = (Application) lVar.m30264d();
        application.registerActivityLifecycleCallbacks(new C2434a());
        application.registerComponentCallbacks(new ComponentCallbacks2C2435b());
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        application.registerReceiver(new C2436c(), intentFilter);
    }

    /* renamed from: a */
    public boolean m29746a() {
        return this.f9367c.get();
    }

    /* renamed from: b */
    public void m29744b() {
        this.f9366b.set(true);
    }

    /* renamed from: c */
    public void m29742c() {
        this.f9366b.set(false);
    }

    /* renamed from: d */
    public final void m29741d() {
        if (this.f9367c.compareAndSet(true, false)) {
            m29738g();
        }
    }

    /* renamed from: e */
    public final void m29740e() {
        if (this.f9367c.compareAndSet(false, true)) {
            m29739f();
        }
    }

    /* renamed from: f */
    public final void m29739f() {
        this.f9365a.m30262d0().m30044b("SessionTracker", "Application Paused");
        this.f9365a.m30317E().sendBroadcastSync(new Intent("com.applovin.application_paused"), null);
        if (!this.f9366b.get() && ((Boolean) this.f9365a.m30291a(C2251d.C2256e.f8570M2)).booleanValue()) {
            boolean booleanValue = ((Boolean) this.f9365a.m30291a(C2251d.C2256e.f8555J2)).booleanValue();
            long millis = TimeUnit.MINUTES.toMillis(((Long) this.f9365a.m30291a(C2251d.C2256e.f8565L2)).longValue());
            if (this.f9368d == null || System.currentTimeMillis() - this.f9368d.getTime() >= millis) {
                ((EventServiceImpl) this.f9365a.m30297Y()).m19043a(Utils.VERB_PAUSED, false);
                if (booleanValue) {
                    this.f9368d = new Date();
                }
            }
            if (!booleanValue) {
                this.f9368d = new Date();
            }
        }
    }

    /* renamed from: g */
    public final void m29738g() {
        this.f9365a.m30262d0().m30044b("SessionTracker", "Application Resumed");
        boolean booleanValue = ((Boolean) this.f9365a.m30291a(C2251d.C2256e.f8555J2)).booleanValue();
        long longValue = ((Long) this.f9365a.m30291a(C2251d.C2256e.f8560K2)).longValue();
        this.f9365a.m30317E().sendBroadcastSync(new Intent("com.applovin.application_resumed"), null);
        if (!this.f9366b.getAndSet(false)) {
            long millis = TimeUnit.MINUTES.toMillis(longValue);
            if (this.f9369e == null || System.currentTimeMillis() - this.f9369e.getTime() >= millis) {
                ((EventServiceImpl) this.f9365a.m30297Y()).m19043a(Utils.VERB_RESUMED, false);
                if (booleanValue) {
                    this.f9369e = new Date();
                }
            }
            if (!booleanValue) {
                this.f9369e = new Date();
            }
            this.f9365a.m30248k().m30522a(C2267f.f8890n);
        }
    }
}
