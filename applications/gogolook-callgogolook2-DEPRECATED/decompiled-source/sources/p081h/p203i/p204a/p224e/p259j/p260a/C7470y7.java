package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.y7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/y7.class */
public final class C7470y7 extends C7441w2 implements AbstractC7446w7 {
    public C7470y7(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7446w7
    /* renamed from: a */
    public final void mo20471a(String str, AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        C7465y2.m20510a(G0, bVar);
        m20616b(1, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7446w7
    /* renamed from: c */
    public final void mo20470c(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        m20616b(3, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7446w7
    /* renamed from: d */
    public final void mo20469d(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        m20616b(6, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7446w7
    public final void destroy() throws RemoteException {
        m20616b(4, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7446w7
    /* renamed from: e */
    public final void mo20468e(AbstractC7106b bVar, int i) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        G0.writeInt(i);
        m20616b(5, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7446w7
    /* renamed from: i */
    public final AbstractC7106b mo20467i(String str) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        Parcel a = m20617a(2, G0);
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
