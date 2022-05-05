package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.RemoteException;
/* renamed from: h.i.a.e.m.b.n2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/n2.class */
public final class RunnableC9024n2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C8976f2 f20507a;

    /* renamed from: b */
    public final /* synthetic */ C9000j2 f20508b;

    public RunnableC9024n2(C9000j2 j2Var, C8976f2 f2Var) {
        this.f20508b = j2Var;
        this.f20507a = f2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC8973f fVar;
        fVar = this.f20508b.f20451d;
        if (fVar == null) {
            this.f20508b.mo16178c().m16375s().m16338a("Failed to send current screen to service");
            return;
        }
        try {
            if (this.f20507a == null) {
                fVar.mo16148a(0L, (String) null, (String) null, this.f20508b.getContext().getPackageName());
            } else {
                fVar.mo16148a(this.f20507a.f20364c, this.f20507a.f20362a, this.f20507a.f20363b, this.f20508b.getContext().getPackageName());
            }
            this.f20508b.m16545C();
        } catch (RemoteException e) {
            this.f20508b.mo16178c().m16375s().m16337a("Failed to send current screen to the service", e);
        }
    }
}
