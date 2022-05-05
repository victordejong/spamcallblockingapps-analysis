package p081h.p203i.p204a.p224e.p235d.p240n;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzj;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p259j.p267h.C7742b;
import p081h.p203i.p204a.p224e.p259j.p267h.C7743c;
/* renamed from: h.i.a.e.d.n.v0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/v0.class */
public final class C7026v0 extends C7742b implements AbstractC7024u0 {
    public C7026v0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7024u0
    /* renamed from: a */
    public final boolean mo21274a(zzj zzjVar, AbstractC7106b bVar) throws RemoteException {
        Parcel c = m19598c();
        C7743c.m19594a(c, zzjVar);
        C7743c.m19596a(c, bVar);
        Parcel a = m19599a(5, c);
        boolean a2 = C7743c.m19597a(a);
        a.recycle();
        return a2;
    }
}
