package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.d4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/d4.class */
public final class C7207d4 extends C7441w2 implements AbstractC7181b4 {
    public C7207d4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7181b4
    public final void onAdFailedToLoad(int i) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeInt(i);
        m20616b(2, G0);
    }
}
