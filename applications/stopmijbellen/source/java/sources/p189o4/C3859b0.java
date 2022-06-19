package p189o4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* renamed from: o4.b0 */
/* loaded from: classes-dex2jar.jar:o4/b0.class */
public final class C3859b0 extends C3883t implements AbstractC3863d0 {
    public C3859b0(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p189o4.AbstractC3863d0
    /* renamed from: a */
    public final void mo1761a(String str, Bundle bundle, Bundle bundle2, AbstractC3867f0 abstractC3867f0) throws RemoteException {
        Parcel m1735q = m1735q();
        m1735q.writeString(str);
        int i = C3885v.f12380a;
        m1735q.writeInt(1);
        bundle.writeToParcel(m1735q, 0);
        m1735q.writeInt(1);
        bundle2.writeToParcel(m1735q, 0);
        m1735q.writeStrongBinder(abstractC3867f0);
        m1734r(7, m1735q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p189o4.AbstractC3863d0
    /* renamed from: c */
    public final void mo1760c(String str, Bundle bundle, AbstractC3867f0 abstractC3867f0) throws RemoteException {
        Parcel m1735q = m1735q();
        m1735q.writeString(str);
        int i = C3885v.f12380a;
        m1735q.writeInt(1);
        bundle.writeToParcel(m1735q, 0);
        m1735q.writeStrongBinder(abstractC3867f0);
        m1734r(5, m1735q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p189o4.AbstractC3863d0
    /* renamed from: f */
    public final void mo1759f(String str, Bundle bundle, Bundle bundle2, AbstractC3867f0 abstractC3867f0) throws RemoteException {
        Parcel m1735q = m1735q();
        m1735q.writeString(str);
        int i = C3885v.f12380a;
        m1735q.writeInt(1);
        bundle.writeToParcel(m1735q, 0);
        m1735q.writeInt(1);
        bundle2.writeToParcel(m1735q, 0);
        m1735q.writeStrongBinder(abstractC3867f0);
        m1734r(11, m1735q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p189o4.AbstractC3863d0
    /* renamed from: g */
    public final void mo1758g(String str, Bundle bundle, Bundle bundle2, AbstractC3867f0 abstractC3867f0) throws RemoteException {
        Parcel m1735q = m1735q();
        m1735q.writeString(str);
        int i = C3885v.f12380a;
        m1735q.writeInt(1);
        bundle.writeToParcel(m1735q, 0);
        m1735q.writeInt(1);
        bundle2.writeToParcel(m1735q, 0);
        m1735q.writeStrongBinder(abstractC3867f0);
        m1734r(9, m1735q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p189o4.AbstractC3863d0
    /* renamed from: k */
    public final void mo1757k(String str, List list, Bundle bundle, AbstractC3867f0 abstractC3867f0) throws RemoteException {
        Parcel m1735q = m1735q();
        m1735q.writeString(str);
        m1735q.writeTypedList(list);
        int i = C3885v.f12380a;
        m1735q.writeInt(1);
        bundle.writeToParcel(m1735q, 0);
        m1735q.writeStrongBinder(abstractC3867f0);
        m1734r(14, m1735q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p189o4.AbstractC3863d0
    /* renamed from: n */
    public final void mo1756n(String str, Bundle bundle, Bundle bundle2, AbstractC3867f0 abstractC3867f0) throws RemoteException {
        Parcel m1735q = m1735q();
        m1735q.writeString(str);
        int i = C3885v.f12380a;
        m1735q.writeInt(1);
        bundle.writeToParcel(m1735q, 0);
        m1735q.writeInt(1);
        bundle2.writeToParcel(m1735q, 0);
        m1735q.writeStrongBinder(abstractC3867f0);
        m1734r(6, m1735q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p189o4.AbstractC3863d0
    /* renamed from: o */
    public final void mo1755o(String str, Bundle bundle, AbstractC3867f0 abstractC3867f0) throws RemoteException {
        Parcel m1735q = m1735q();
        m1735q.writeString(str);
        int i = C3885v.f12380a;
        m1735q.writeInt(1);
        bundle.writeToParcel(m1735q, 0);
        m1735q.writeStrongBinder(abstractC3867f0);
        m1734r(10, m1735q);
    }
}
