package p081h.p203i.p204a.p224e.p253f;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p259j.p267h.C7742b;
import p081h.p203i.p204a.p224e.p259j.p267h.C7743c;
/* renamed from: h.i.a.e.f.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/f/l.class */
public final class C7130l extends C7742b implements AbstractC7131m {
    public C7130l(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    @Override // p081h.p203i.p204a.p224e.p253f.AbstractC7131m
    /* renamed from: a */
    public final AbstractC7106b mo21046a(AbstractC7106b bVar, String str, int i, AbstractC7106b bVar2) throws RemoteException {
        Parcel c = m19598c();
        C7743c.m19596a(c, bVar);
        c.writeString(str);
        c.writeInt(i);
        C7743c.m19596a(c, bVar2);
        Parcel a = m19599a(2, c);
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p253f.AbstractC7131m
    /* renamed from: b */
    public final AbstractC7106b mo21045b(AbstractC7106b bVar, String str, int i, AbstractC7106b bVar2) throws RemoteException {
        Parcel c = m19598c();
        C7743c.m19596a(c, bVar);
        c.writeString(str);
        c.writeInt(i);
        C7743c.m19596a(c, bVar2);
        Parcel a = m19599a(3, c);
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
