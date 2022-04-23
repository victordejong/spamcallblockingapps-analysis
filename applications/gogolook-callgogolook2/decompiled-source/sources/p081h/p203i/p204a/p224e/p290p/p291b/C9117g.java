package p081h.p203i.p204a.p224e.p290p.p291b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.signin.internal.zah;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7003m;
import p081h.p203i.p204a.p224e.p259j.p265f.C7529a;
import p081h.p203i.p204a.p224e.p259j.p265f.C7531c;
/* renamed from: h.i.a.e.p.b.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/p/b/g.class */
public final class C9117g extends C7529a implements AbstractC9116f {
    public C9117g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    @Override // p081h.p203i.p204a.p224e.p290p.p291b.AbstractC9116f
    /* renamed from: a */
    public final void mo16061a(zah zahVar, AbstractC9114d dVar) throws RemoteException {
        Parcel G0 = m20394G0();
        C7531c.m20388a(G0, zahVar);
        C7531c.m20390a(G0, dVar);
        m20392b(12, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p290p.p291b.AbstractC9116f
    /* renamed from: a */
    public final void mo16060a(AbstractC7003m mVar, int i, boolean z) throws RemoteException {
        Parcel G0 = m20394G0();
        C7531c.m20390a(G0, mVar);
        G0.writeInt(i);
        C7531c.m20387a(G0, z);
        m20392b(9, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p290p.p291b.AbstractC9116f
    /* renamed from: b */
    public final void mo16059b(int i) throws RemoteException {
        Parcel G0 = m20394G0();
        G0.writeInt(i);
        m20392b(7, G0);
    }
}
