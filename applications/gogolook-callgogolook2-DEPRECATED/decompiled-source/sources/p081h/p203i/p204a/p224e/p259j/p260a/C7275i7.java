package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.i7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/i7.class */
public final class C7275i7 extends C7441w2 implements AbstractC7262h7 {
    public C7275i7(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7262h7
    public final String getContent() throws RemoteException {
        Parcel a = m20617a(2, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7262h7
    /* renamed from: o0 */
    public final String mo20899o0() throws RemoteException {
        Parcel a = m20617a(1, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7262h7
    public final void recordClick() throws RemoteException {
        m20616b(4, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7262h7
    public final void recordImpression() throws RemoteException {
        m20616b(5, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7262h7
    /* renamed from: t */
    public final void mo20898t(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        m20616b(3, G0);
    }
}
