package p081h.p203i.p204a.p224e.p259j.p261b;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.b.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/b/f.class */
public final class C7491f extends C7486a implements AbstractC7489d {
    public C7491f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p261b.AbstractC7489d
    /* renamed from: C */
    public final boolean mo20421C() throws RemoteException {
        Parcel a = m20425a(6, m20426G0());
        boolean a2 = C7488c.m20424a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p261b.AbstractC7489d
    /* renamed from: d */
    public final boolean mo20420d(boolean z) throws RemoteException {
        Parcel G0 = m20426G0();
        C7488c.m20423a(G0, true);
        Parcel a = m20425a(2, G0);
        boolean a2 = C7488c.m20424a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p261b.AbstractC7489d
    public final String getId() throws RemoteException {
        Parcel a = m20425a(1, m20426G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
