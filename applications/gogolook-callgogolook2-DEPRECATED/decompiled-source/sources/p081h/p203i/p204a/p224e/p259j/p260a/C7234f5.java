package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.f5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/f5.class */
public final class C7234f5 extends C7441w2 implements AbstractC7208d5 {
    public C7234f5(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7208d5
    /* renamed from: O */
    public final float mo20818O() throws RemoteException {
        Parcel a = m20617a(7, m20618G0());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7208d5
    /* renamed from: U */
    public final boolean mo20817U() throws RemoteException {
        Parcel a = m20617a(8, m20618G0());
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7208d5
    /* renamed from: a */
    public final void mo20816a(float f) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeFloat(f);
        m20616b(2, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7208d5
    /* renamed from: a */
    public final void mo20815a(AbstractC7106b bVar, String str) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        G0.writeString(str);
        m20616b(5, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7208d5
    /* renamed from: a */
    public final void mo20814a(AbstractC7226ea eaVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, eaVar);
        m20616b(11, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7208d5
    /* renamed from: b */
    public final void mo20813b(String str, AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        C7465y2.m20510a(G0, bVar);
        m20616b(6, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7208d5
    /* renamed from: b */
    public final void mo20812b(boolean z) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20507a(G0, z);
        m20616b(4, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7208d5
    /* renamed from: c */
    public final void mo20811c() throws RemoteException {
        m20616b(1, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7208d5
    /* renamed from: f */
    public final String mo20810f() throws RemoteException {
        Parcel a = m20617a(9, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7208d5
    /* renamed from: o */
    public final void mo20808o(String str) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        m20616b(10, G0);
    }
}
