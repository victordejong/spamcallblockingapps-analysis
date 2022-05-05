package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/i.class */
public final class C7267i extends C7441w2 implements AbstractC7254h {
    public C7267i(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7254h
    /* renamed from: a */
    public final void mo20901a(String str) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        m20616b(3, G0);
    }
}
