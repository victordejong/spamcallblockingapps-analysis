package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.k */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/k.class */
public final class C7293k extends C7441w2 implements AbstractC7280j {
    public C7293k(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7280j
    /* renamed from: a */
    public final void mo20871a(String str) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        m20616b(2, G0);
    }
}
