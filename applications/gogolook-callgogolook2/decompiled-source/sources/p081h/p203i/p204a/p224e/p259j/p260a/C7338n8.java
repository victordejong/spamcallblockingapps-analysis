package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.n8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/n8.class */
public final class C7338n8 extends C7441w2 implements AbstractC7326m8 {
    public C7338n8(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7326m8
    public final void destroy() throws RemoteException {
        m20616b(8, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7326m8
    /* renamed from: f */
    public final String mo20786f(String str) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        Parcel a = m20617a(1, G0);
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7326m8
    /* renamed from: f0 */
    public final AbstractC7106b mo20785f0() throws RemoteException {
        Parcel a = m20617a(9, m20618G0());
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7326m8
    public final List<String> getAvailableAssetNames() throws RemoteException {
        Parcel a = m20617a(3, m20618G0());
        ArrayList<String> createStringArrayList = a.createStringArrayList();
        a.recycle();
        return createStringArrayList;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7326m8
    public final String getCustomTemplateId() throws RemoteException {
        Parcel a = m20617a(4, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7326m8
    public final AbstractC7359p5 getVideoController() throws RemoteException {
        Parcel a = m20617a(7, m20618G0());
        AbstractC7359p5 a2 = AbstractBinderC7372q5.m20734a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7326m8
    /* renamed from: n */
    public final AbstractC7398s7 mo20784n(String str) throws RemoteException {
        AbstractC7398s7 s7Var;
        Parcel G0 = m20618G0();
        G0.writeString(str);
        Parcel a = m20617a(2, G0);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            s7Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            s7Var = queryLocalInterface instanceof AbstractC7398s7 ? (AbstractC7398s7) queryLocalInterface : new C7422u7(readStrongBinder);
        }
        a.recycle();
        return s7Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7326m8
    public final void performClick(String str) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        m20616b(5, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7326m8
    public final void recordImpression() throws RemoteException {
        m20616b(6, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7326m8
    /* renamed from: y */
    public final boolean mo20783y(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        Parcel a = m20617a(10, G0);
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }
}
