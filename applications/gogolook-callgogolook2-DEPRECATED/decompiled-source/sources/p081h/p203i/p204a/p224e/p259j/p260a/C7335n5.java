package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.n5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/n5.class */
public final class C7335n5 extends C7441w2 implements AbstractC7311l5 {
    public C7335n5(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7311l5
    public final String getDescription() throws RemoteException {
        Parcel a = m20617a(1, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
