package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.sa */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/sa.class */
public final class BinderC7401sa extends AbstractBinderC7372q5 {

    /* renamed from: a */
    public final Object f17455a = new Object();

    /* renamed from: b */
    public volatile AbstractC7396s5 f17456b;

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: C0 */
    public final AbstractC7396s5 mo20675C0() throws RemoteException {
        AbstractC7396s5 s5Var;
        synchronized (this.f17455a) {
            s5Var = this.f17456b;
        }
        return s5Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: J */
    public final boolean mo20674J() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: a */
    public final void mo20673a(AbstractC7396s5 s5Var) throws RemoteException {
        synchronized (this.f17455a) {
            this.f17456b = s5Var;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: c */
    public final void mo20672c(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    public final float getAspectRatio() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    public final int getPlaybackState() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: k0 */
    public final float mo20671k0() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: m0 */
    public final boolean mo20670m0() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: n0 */
    public final float mo20669n0() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    public final void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    public final void play() throws RemoteException {
        throw new RemoteException();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: z0 */
    public final boolean mo20668z0() throws RemoteException {
        throw new RemoteException();
    }
}
