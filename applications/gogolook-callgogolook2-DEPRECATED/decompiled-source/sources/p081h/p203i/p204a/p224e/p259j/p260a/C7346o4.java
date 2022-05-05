package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjk;
import com.google.android.gms.internal.ads.zzjo;
import com.google.android.gms.internal.ads.zznf;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.o4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/o4.class */
public final class C7346o4 extends C7441w2 implements AbstractC7322m4 {
    public C7346o4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: D0 */
    public final String mo20760D0() throws RemoteException {
        Parcel a = m20617a(31, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: H */
    public final String mo20759H() throws RemoteException {
        Parcel a = m20617a(35, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: I */
    public final zzjo mo20758I() throws RemoteException {
        Parcel a = m20617a(12, m20618G0());
        zzjo zzjoVar = (zzjo) C7465y2.m20509a(a, zzjo.CREATOR);
        a.recycle();
        return zzjoVar;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: a */
    public final void mo20757a(zzjo zzjoVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, zzjoVar);
        m20616b(13, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: a */
    public final void mo20756a(zznf zznfVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, zznfVar);
        m20616b(29, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: a */
    public final void mo20755a(AbstractC7288j7 j7Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, j7Var);
        m20616b(19, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: a */
    public final void mo20754a(AbstractC7383r4 r4Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, r4Var);
        m20616b(36, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: a */
    public final void mo20753a(AbstractC7419u4 u4Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, u4Var);
        m20616b(8, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: a */
    public final void mo20752a(AbstractC7466y3 y3Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, y3Var);
        m20616b(20, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: a */
    public final void mo20751a(AbstractC7475z0 z0Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, z0Var);
        m20616b(24, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: b */
    public final AbstractC7106b mo20750b() throws RemoteException {
        Parcel a = m20617a(1, m20618G0());
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: b */
    public final void mo20748b(AbstractC7169a5 a5Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, a5Var);
        m20616b(21, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: b */
    public final void mo20747b(AbstractC7181b4 b4Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, b4Var);
        m20616b(7, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: b */
    public final boolean mo20749b(zzjk zzjkVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, zzjkVar);
        Parcel a = m20617a(4, G0);
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    public final void destroy() throws RemoteException {
        m20616b(2, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: e */
    public final AbstractC7181b4 mo20746e() throws RemoteException {
        AbstractC7181b4 b4Var;
        Parcel a = m20617a(33, m20618G0());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            b4Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            b4Var = queryLocalInterface instanceof AbstractC7181b4 ? (AbstractC7181b4) queryLocalInterface : new C7207d4(readStrongBinder);
        }
        a.recycle();
        return b4Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: g0 */
    public final void mo20745g0() throws RemoteException {
        m20616b(11, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    public final Bundle getAdMetadata() throws RemoteException {
        Parcel a = m20617a(37, m20618G0());
        Bundle bundle = (Bundle) C7465y2.m20509a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    public final AbstractC7359p5 getVideoController() throws RemoteException {
        AbstractC7359p5 p5Var;
        Parcel a = m20617a(26, m20618G0());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            p5Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            p5Var = queryLocalInterface instanceof AbstractC7359p5 ? (AbstractC7359p5) queryLocalInterface : new C7384r5(readStrongBinder);
        }
        a.recycle();
        return p5Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: h */
    public final void mo20744h(boolean z) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20507a(G0, z);
        m20616b(22, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    public final boolean isLoading() throws RemoteException {
        Parcel a = m20617a(23, m20618G0());
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    public final boolean isReady() throws RemoteException {
        Parcel a = m20617a(3, m20618G0());
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    public final void pause() throws RemoteException {
        m20616b(5, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    public final void resume() throws RemoteException {
        m20616b(6, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20507a(G0, z);
        m20616b(34, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    public final void showInterstitial() throws RemoteException {
        m20616b(9, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7322m4
    /* renamed from: z */
    public final AbstractC7419u4 mo20743z() throws RemoteException {
        AbstractC7419u4 u4Var;
        Parcel a = m20617a(32, m20618G0());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            u4Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            u4Var = queryLocalInterface instanceof AbstractC7419u4 ? (AbstractC7419u4) queryLocalInterface : new C7443w4(readStrongBinder);
        }
        a.recycle();
        return u4Var;
    }
}
