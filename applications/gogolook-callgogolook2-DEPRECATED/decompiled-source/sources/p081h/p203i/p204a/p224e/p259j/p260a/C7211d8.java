package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.d8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/d8.class */
public final class C7211d8 extends C7441w2 implements AbstractC7185b8 {
    public C7211d8(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7185b8
    /* renamed from: c */
    public final void mo20789c(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        m20616b(1, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7185b8
    /* renamed from: d */
    public final void mo20788d(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        m20616b(3, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7185b8
    /* renamed from: e0 */
    public final void mo20787e0() throws RemoteException {
        m20616b(2, m20618G0());
    }
}
