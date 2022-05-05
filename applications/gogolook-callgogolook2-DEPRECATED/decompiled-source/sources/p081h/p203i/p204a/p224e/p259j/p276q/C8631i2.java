package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.q.i2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i2.class */
public final class C8631i2 extends C8588e1 implements AbstractC8620h2 {
    public C8631i2(IBinder iBinder) {
        super(iBinder, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8620h2
    /* renamed from: a */
    public final void mo17550a(AbstractC8598f2 f2Var, String str) throws RemoteException {
        Parcel G0 = m17698G0();
        C8606g1.m17664a(G0, f2Var);
        G0.writeString(str);
        m17696b(1, G0);
    }
}
