package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.r0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/r0.class */
public final class C7379r0 extends C7441w2 implements AbstractC7366q0 {
    public C7379r0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7366q0
    public final int getAmount() throws RemoteException {
        Parcel a = m20617a(2, m20618G0());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7366q0
    public final String getType() throws RemoteException {
        Parcel a = m20617a(1, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
