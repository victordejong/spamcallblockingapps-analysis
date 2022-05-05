package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.k9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/k9.class */
public final class C7303k9 extends C7441w2 implements AbstractC7290j9 {
    public C7303k9(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: L */
    public final void mo20844L() throws RemoteException {
        m20616b(22, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: Q */
    public final boolean mo20843Q() throws RemoteException {
        Parcel a = m20617a(24, m20618G0());
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: a */
    public final void mo20841a(AbstractC7264h9 h9Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, h9Var);
        m20616b(21, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: a */
    public final void mo20840a(AbstractC7273i5 i5Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, i5Var);
        m20616b(26, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: a */
    public final void mo20839a(AbstractC7311l5 l5Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, l5Var);
        m20616b(25, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: a */
    public final boolean mo20842a(Bundle bundle) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, bundle);
        Parcel a = m20617a(16, G0);
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: b */
    public final void mo20838b(Bundle bundle) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, bundle);
        m20616b(17, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: c */
    public final void mo20837c(Bundle bundle) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, bundle);
        m20616b(15, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    public final void destroy() throws RemoteException {
        m20616b(13, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: g */
    public final AbstractC7361p7 mo20836g() throws RemoteException {
        AbstractC7361p7 p7Var;
        Parcel a = m20617a(14, m20618G0());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            p7Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            p7Var = queryLocalInterface instanceof AbstractC7361p7 ? (AbstractC7361p7) queryLocalInterface : new C7374q7(readStrongBinder);
        }
        a.recycle();
        return p7Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    public final Bundle getExtras() throws RemoteException {
        Parcel a = m20617a(20, m20618G0());
        Bundle bundle = (Bundle) C7465y2.m20509a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel a = m20617a(12, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    public final AbstractC7359p5 getVideoController() throws RemoteException {
        Parcel a = m20617a(11, m20618G0());
        AbstractC7359p5 a2 = AbstractBinderC7372q5.m20734a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: h */
    public final String mo20835h() throws RemoteException {
        Parcel a = m20617a(6, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: i */
    public final String mo20834i() throws RemoteException {
        Parcel a = m20617a(2, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: j */
    public final String mo20833j() throws RemoteException {
        Parcel a = m20617a(4, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: k */
    public final List mo20832k() throws RemoteException {
        Parcel a = m20617a(3, m20618G0());
        ArrayList b = C7465y2.m20506b(a);
        a.recycle();
        return b;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: m */
    public final AbstractC7106b mo20831m() throws RemoteException {
        Parcel a = m20617a(19, m20618G0());
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: n */
    public final String mo20830n() throws RemoteException {
        Parcel a = m20617a(10, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: o */
    public final AbstractC7398s7 mo20829o() throws RemoteException {
        AbstractC7398s7 s7Var;
        Parcel a = m20617a(5, m20618G0());
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

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: p */
    public final double mo20828p() throws RemoteException {
        Parcel a = m20617a(8, m20618G0());
        double readDouble = a.readDouble();
        a.recycle();
        return readDouble;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: q */
    public final String mo20827q() throws RemoteException {
        Parcel a = m20617a(7, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: r */
    public final String mo20826r() throws RemoteException {
        Parcel a = m20617a(9, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: t */
    public final AbstractC7106b mo20825t() throws RemoteException {
        Parcel a = m20617a(18, m20618G0());
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7290j9
    /* renamed from: t0 */
    public final List mo20824t0() throws RemoteException {
        Parcel a = m20617a(23, m20618G0());
        ArrayList b = C7465y2.m20506b(a);
        a.recycle();
        return b;
    }
}
