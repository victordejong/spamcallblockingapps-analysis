package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjk;
/* renamed from: h.i.a.e.j.a.g4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/g4.class */
public final class C7246g4 extends C7441w2 implements AbstractC7220e4 {
    public C7246g4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7220e4
    /* renamed from: H */
    public final String mo20917H() throws RemoteException {
        Parcel a = m20617a(4, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7220e4
    /* renamed from: a */
    public final void mo20916a(zzjk zzjkVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, zzjkVar);
        m20616b(1, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7220e4
    /* renamed from: a */
    public final void mo20915a(zzjk zzjkVar, int i) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, zzjkVar);
        G0.writeInt(i);
        m20616b(5, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7220e4
    public final boolean isLoading() throws RemoteException {
        Parcel a = m20617a(3, m20618G0());
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }
}
