package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaio;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.w0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/w0.class */
public final class C7439w0 extends C7441w2 implements AbstractC7415u0 {
    public C7439w0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    /* renamed from: a */
    public final void mo20625a(zzaio zzaioVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, zzaioVar);
        m20616b(1, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    /* renamed from: a */
    public final void mo20624a(AbstractC7383r4 r4Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, r4Var);
        m20616b(14, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    /* renamed from: a */
    public final void mo20623a(AbstractC7475z0 z0Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, z0Var);
        m20616b(3, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    /* renamed from: e */
    public final void mo20622e(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        m20616b(11, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    public final Bundle getAdMetadata() throws RemoteException {
        Parcel a = m20617a(15, m20618G0());
        Bundle bundle = (Bundle) C7465y2.m20509a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    public final String getMediationAdapterClassName() throws RemoteException {
        Parcel a = m20617a(12, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    public final boolean isLoaded() throws RemoteException {
        Parcel a = m20617a(5, m20618G0());
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    /* renamed from: p */
    public final void mo20621p(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        m20616b(10, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    /* renamed from: r */
    public final void mo20620r(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, bVar);
        m20616b(9, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    public final void setCustomData(String str) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        m20616b(19, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    public final void setImmersiveMode(boolean z) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20507a(G0, z);
        m20616b(34, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    public final void setUserId(String str) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        m20616b(13, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7415u0
    public final void show() throws RemoteException {
        m20616b(2, m20618G0());
    }
}
