package p081h.p203i.p204a.p224e.p235d.p240n;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p259j.p267h.C7742b;
/* renamed from: h.i.a.e.d.n.t0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/t0.class */
public final class C7022t0 extends C7742b implements AbstractC7020s0 {
    public C7022t0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7020s0
    /* renamed from: C */
    public final int mo21080C() throws RemoteException {
        Parcel a = m19599a(2, m19598c());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7020s0
    /* renamed from: E0 */
    public final AbstractC7106b mo21079E0() throws RemoteException {
        Parcel a = m19599a(1, m19598c());
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
