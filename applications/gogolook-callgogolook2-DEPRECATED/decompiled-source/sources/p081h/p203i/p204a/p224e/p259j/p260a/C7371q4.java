package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjo;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.q4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/q4.class */
public final class C7371q4 extends C7441w2 implements AbstractC7358p4 {
    public C7371q4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7358p4
    /* renamed from: a */
    public final IBinder mo20735a(AbstractC7106b bVar, zzjo zzjoVar, String str, AbstractC7226ea eaVar, int i, int i2) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        C7465y2.m20508a(G0, zzjoVar);
        G0.writeString(str);
        C7465y2.m20510a(G0, eaVar);
        G0.writeInt(13000000);
        G0.writeInt(i2);
        Parcel a = m20617a(2, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        a.recycle();
        return readStrongBinder;
    }
}
