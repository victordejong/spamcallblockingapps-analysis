package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.r5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/r5.class */
public final class C7384r5 extends C7441w2 implements AbstractC7359p5 {
    public C7384r5(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: J */
    public final boolean mo20674J() throws RemoteException {
        Parcel a = m20617a(12, m20618G0());
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: a */
    public final void mo20673a(AbstractC7396s5 s5Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, s5Var);
        m20616b(8, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: c */
    public final void mo20672c(boolean z) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20507a(G0, z);
        m20616b(3, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    public final float getAspectRatio() throws RemoteException {
        Parcel a = m20617a(9, m20618G0());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    public final int getPlaybackState() throws RemoteException {
        Parcel a = m20617a(5, m20618G0());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: m0 */
    public final boolean mo20670m0() throws RemoteException {
        Parcel a = m20617a(4, m20618G0());
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    public final void pause() throws RemoteException {
        m20616b(2, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    public final void play() throws RemoteException {
        m20616b(1, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7359p5
    /* renamed from: z0 */
    public final boolean mo20668z0() throws RemoteException {
        Parcel a = m20617a(10, m20618G0());
        boolean a2 = C7465y2.m20511a(a);
        a.recycle();
        return a2;
    }
}
