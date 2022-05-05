package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.MainThread;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractBinderC8701p3;
import p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8700p2;
/* renamed from: h.i.a.e.m.b.h0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/h0.class */
public final class ServiceConnectionC8986h0 implements ServiceConnection {

    /* renamed from: a */
    public final String f20409a;

    /* renamed from: b */
    public final /* synthetic */ C8980g0 f20410b;

    public ServiceConnectionC8986h0(C8980g0 g0Var, String str) {
        this.f20410b = g0Var;
        this.f20409a = str;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f20410b.f20398a.mo16178c().m16372v().m16338a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            AbstractC8700p2 a = AbstractBinderC8701p3.m17245a(iBinder);
            if (a == null) {
                this.f20410b.f20398a.mo16178c().m16372v().m16338a("Install Referrer Service implementation was not found");
                return;
            }
            this.f20410b.f20398a.mo16178c().m16369y().m16338a("Install Referrer Service connected");
            this.f20410b.f20398a.mo16214a().m16364a(new RunnableC8992i0(this, a, this));
        } catch (Exception e) {
            this.f20410b.f20398a.mo16178c().m16372v().m16337a("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f20410b.f20398a.mo16178c().m16369y().m16338a("Install Referrer Service disconnected");
    }
}
