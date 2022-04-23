package p081h.p203i.p204a.p224e.p285m.p287b;

import java.lang.Thread;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.p0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/p0.class */
public final class C9034p0 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    public final String f20557a;

    /* renamed from: b */
    public final /* synthetic */ C9028o0 f20558b;

    public C9034p0(C9028o0 o0Var, String str) {
        this.f20558b = o0Var;
        C7021t.m21290a(str);
        this.f20557a = str;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (this) {
            this.f20558b.mo16178c().m16375s().m16337a(this.f20557a, th);
        }
    }
}
