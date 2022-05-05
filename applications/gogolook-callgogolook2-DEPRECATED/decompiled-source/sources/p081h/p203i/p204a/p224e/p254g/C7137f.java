package p081h.p203i.p204a.p224e.p254g;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p272m.C8484a;
/* renamed from: h.i.a.e.g.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/g/f.class */
public final class C7137f extends C8484a implements AbstractC7136e {
    public C7137f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gcm.INetworkTaskCallback");
    }

    @Override // p081h.p203i.p204a.p224e.p254g.AbstractC7136e
    /* renamed from: c */
    public final void mo21034c(int i) throws RemoteException {
        Parcel G0 = m17903G0();
        G0.writeInt(i);
        m17902a(2, G0);
    }
}
