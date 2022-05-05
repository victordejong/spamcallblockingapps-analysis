package p081h.p203i.p204a.p224e.p259j.p275p;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.p.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/p/i.class */
public final class C8541i extends C8533a implements AbstractC8539g {
    public C8541i(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8539g
    /* renamed from: a */
    public final AbstractC7106b mo17853a(Bitmap bitmap) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17856a(G0, bitmap);
        Parcel a = m17862a(6, G0);
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8539g
    /* renamed from: e */
    public final AbstractC7106b mo17852e(int i) throws RemoteException {
        Parcel G0 = m17863G0();
        G0.writeInt(i);
        Parcel a = m17862a(1, G0);
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
