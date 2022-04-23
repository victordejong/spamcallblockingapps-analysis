package p081h.p203i.p204a.p224e.p259j.p260a;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.u7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/u7.class */
public final class C7422u7 extends C7441w2 implements AbstractC7398s7 {
    public C7422u7(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7398s7
    public final double getScale() throws RemoteException {
        Parcel a = m20617a(3, m20618G0());
        double readDouble = a.readDouble();
        a.recycle();
        return readDouble;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7398s7
    public final Uri getUri() throws RemoteException {
        Parcel a = m20617a(2, m20618G0());
        Uri uri = (Uri) C7465y2.m20509a(a, Uri.CREATOR);
        a.recycle();
        return uri;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7398s7
    /* renamed from: y0 */
    public final AbstractC7106b mo20646y0() throws RemoteException {
        Parcel a = m20617a(1, m20618G0());
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
