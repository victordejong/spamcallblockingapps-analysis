package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.h5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/h5.class */
public final class C7260h5 extends C7441w2 implements AbstractC7247g5 {
    public C7260h5(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7247g5
    /* renamed from: a */
    public final IBinder mo20918a(AbstractC7106b bVar, int i) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        G0.writeInt(13000000);
        Parcel a = m20617a(1, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        a.recycle();
        return readStrongBinder;
    }
}
