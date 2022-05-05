package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.b1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/b1.class */
public final class C7178b1 extends C7441w2 implements AbstractC7475z0 {
    public C7178b1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7475z0
    public final void onRewardedVideoAdFailedToLoad(int i) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeInt(i);
        m20616b(7, G0);
    }
}
