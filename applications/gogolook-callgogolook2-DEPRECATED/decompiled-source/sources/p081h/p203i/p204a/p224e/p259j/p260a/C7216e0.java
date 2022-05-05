package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.e0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/e0.class */
public final class C7216e0 extends C7441w2 implements AbstractC7203d0 {
    public C7216e0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7203d0
    /* renamed from: k */
    public final IBinder mo20940k(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        Parcel a = m20617a(1, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        a.recycle();
        return readStrongBinder;
    }
}
