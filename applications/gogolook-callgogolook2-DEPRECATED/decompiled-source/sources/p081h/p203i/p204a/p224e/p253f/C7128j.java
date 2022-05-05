package p081h.p203i.p204a.p224e.p253f;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p259j.p267h.C7742b;
import p081h.p203i.p204a.p224e.p259j.p267h.C7743c;
/* renamed from: h.i.a.e.f.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/f/j.class */
public final class C7128j extends C7742b implements AbstractC7129k {
    public C7128j(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    @Override // p081h.p203i.p204a.p224e.p253f.AbstractC7129k
    /* renamed from: a */
    public final int mo21050a(AbstractC7106b bVar, String str, boolean z) throws RemoteException {
        Parcel c = m19598c();
        C7743c.m19596a(c, bVar);
        c.writeString(str);
        C7743c.m19593a(c, z);
        Parcel a = m19599a(5, c);
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // p081h.p203i.p204a.p224e.p253f.AbstractC7129k
    /* renamed from: a */
    public final AbstractC7106b mo21051a(AbstractC7106b bVar, String str, int i) throws RemoteException {
        Parcel c = m19598c();
        C7743c.m19596a(c, bVar);
        c.writeString(str);
        c.writeInt(i);
        Parcel a = m19599a(2, c);
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p253f.AbstractC7129k
    /* renamed from: b */
    public final int mo21048b(AbstractC7106b bVar, String str, boolean z) throws RemoteException {
        Parcel c = m19598c();
        C7743c.m19596a(c, bVar);
        c.writeString(str);
        C7743c.m19593a(c, z);
        Parcel a = m19599a(3, c);
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // p081h.p203i.p204a.p224e.p253f.AbstractC7129k
    /* renamed from: b */
    public final AbstractC7106b mo21049b(AbstractC7106b bVar, String str, int i) throws RemoteException {
        Parcel c = m19598c();
        C7743c.m19596a(c, bVar);
        c.writeString(str);
        c.writeInt(i);
        Parcel a = m19599a(4, c);
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p253f.AbstractC7129k
    /* renamed from: u */
    public final int mo21047u() throws RemoteException {
        Parcel a = m19599a(6, m19598c());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }
}
