package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.f8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/f8.class */
public final class C7237f8 extends C7441w2 implements AbstractC7224e8 {
    public C7237f8(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7224e8
    /* renamed from: b */
    public final IBinder mo20929b(AbstractC7106b bVar, AbstractC7106b bVar2, AbstractC7106b bVar3) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        C7465y2.m20510a(G0, bVar2);
        C7465y2.m20510a(G0, bVar3);
        Parcel a = m20617a(1, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        a.recycle();
        return readStrongBinder;
    }
}
