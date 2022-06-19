package p189o4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: o4.w */
/* loaded from: classes-dex2jar.jar:o4/w.class */
public final class C3886w extends C3883t implements AbstractC3888y {
    public C3886w(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.appupdate.protocol.IAppUpdateService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p189o4.AbstractC3888y
    /* renamed from: i */
    public final void mo1732i(String str, Bundle bundle, AbstractC3857a0 abstractC3857a0) throws RemoteException {
        Parcel m1735q = m1735q();
        m1735q.writeString(str);
        int i = C3885v.f12380a;
        m1735q.writeInt(1);
        bundle.writeToParcel(m1735q, 0);
        m1735q.writeStrongBinder(abstractC3857a0);
        m1734r(2, m1735q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p189o4.AbstractC3888y
    /* renamed from: l */
    public final void mo1731l(String str, Bundle bundle, AbstractC3857a0 abstractC3857a0) throws RemoteException {
        Parcel m1735q = m1735q();
        m1735q.writeString(str);
        int i = C3885v.f12380a;
        m1735q.writeInt(1);
        bundle.writeToParcel(m1735q, 0);
        m1735q.writeStrongBinder(abstractC3857a0);
        m1734r(3, m1735q);
    }
}
