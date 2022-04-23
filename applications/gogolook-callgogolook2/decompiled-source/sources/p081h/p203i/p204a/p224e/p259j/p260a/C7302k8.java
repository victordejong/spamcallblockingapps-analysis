package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.k8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/k8.class */
public final class C7302k8 extends C7441w2 implements AbstractC7289j8 {
    public C7302k8(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    /* renamed from: B */
    public final AbstractC7398s7 mo20855B() throws RemoteException {
        AbstractC7398s7 s7Var;
        Parcel a = m20617a(6, m20618G0());
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

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    /* renamed from: a */
    public final boolean mo20854a(Bundle bundle) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, bundle);
        Parcel a = m20617a(13, G0);
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    /* renamed from: b */
    public final void mo20853b(Bundle bundle) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, bundle);
        m20616b(14, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    /* renamed from: c */
    public final void mo20852c(Bundle bundle) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, bundle);
        m20616b(12, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    public final void destroy() throws RemoteException {
        m20616b(10, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    /* renamed from: g */
    public final AbstractC7361p7 mo20851g() throws RemoteException {
        AbstractC7361p7 p7Var;
        Parcel a = m20617a(15, m20618G0());
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

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    public final Bundle getExtras() throws RemoteException {
        Parcel a = m20617a(9, m20618G0());
        Bundle bundle = (Bundle) C7465y2.m20509a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel a = m20617a(17, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    public final AbstractC7359p5 getVideoController() throws RemoteException {
        Parcel a = m20617a(11, m20618G0());
        AbstractC7359p5 a2 = AbstractBinderC7372q5.m20734a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    /* renamed from: h */
    public final String mo20850h() throws RemoteException {
        Parcel a = m20617a(7, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    /* renamed from: i */
    public final String mo20849i() throws RemoteException {
        Parcel a = m20617a(3, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    /* renamed from: j */
    public final String mo20848j() throws RemoteException {
        Parcel a = m20617a(5, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    /* renamed from: k */
    public final List mo20847k() throws RemoteException {
        Parcel a = m20617a(4, m20618G0());
        ArrayList b = C7465y2.m20506b(a);
        a.recycle();
        return b;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    /* renamed from: q */
    public final String mo20846q() throws RemoteException {
        Parcel a = m20617a(8, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7289j8
    /* renamed from: t */
    public final AbstractC7106b mo20845t() throws RemoteException {
        Parcel a = m20617a(2, m20618G0());
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
