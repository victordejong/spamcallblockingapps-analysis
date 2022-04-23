package p081h.p203i.p204a.p224e.p235d.p240n.p242y;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6854d;
/* renamed from: h.i.a.e.d.n.y.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/y/g.class */
public final class BinderC7040g extends BinderC7035b {

    /* renamed from: a */
    public final AbstractC6854d<Status> f17174a;

    public BinderC7040g(AbstractC6854d<Status> dVar) {
        this.f17174a = dVar;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.p242y.AbstractC7044k
    /* renamed from: d */
    public final void mo21194d(int i) throws RemoteException {
        this.f17174a.mo21767a(new Status(i));
    }
}
