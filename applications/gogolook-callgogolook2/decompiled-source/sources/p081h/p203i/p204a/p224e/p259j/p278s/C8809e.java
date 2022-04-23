package p081h.p203i.p204a.p224e.p259j.p278s;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* renamed from: h.i.a.e.j.s.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/s/e.class */
public final class C8809e extends C8808d implements AbstractC8807c {
    public C8809e(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c
    /* renamed from: a */
    public final int mo16905a(int i, String str, String str2) throws RemoteException {
        Parcel c = m16906c();
        c.writeInt(i);
        c.writeString(str);
        c.writeString(str2);
        Parcel a = m16907a(1, c);
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c
    /* renamed from: a */
    public final Bundle mo16904a(int i, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel c = m16906c();
        c.writeInt(3);
        c.writeString(str);
        c.writeString(str2);
        C8810f.m16895a(c, bundle);
        Parcel a = m16907a(2, c);
        Bundle bundle2 = (Bundle) C8810f.m16896a(a, Bundle.CREATOR);
        a.recycle();
        return bundle2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c
    /* renamed from: a */
    public final Bundle mo16903a(int i, String str, String str2, Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel c = m16906c();
        c.writeInt(10);
        c.writeString(str);
        c.writeString(str2);
        C8810f.m16895a(c, bundle);
        C8810f.m16895a(c, bundle2);
        Parcel a = m16907a(901, c);
        Bundle bundle3 = (Bundle) C8810f.m16896a(a, Bundle.CREATOR);
        a.recycle();
        return bundle3;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c
    /* renamed from: a */
    public final Bundle mo16902a(int i, String str, String str2, String str3) throws RemoteException {
        Parcel c = m16906c();
        c.writeInt(3);
        c.writeString(str);
        c.writeString(str2);
        c.writeString(str3);
        Parcel a = m16907a(4, c);
        Bundle bundle = (Bundle) C8810f.m16896a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c
    /* renamed from: a */
    public final Bundle mo16901a(int i, String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel c = m16906c();
        c.writeInt(9);
        c.writeString(str);
        c.writeString(str2);
        c.writeString(str3);
        C8810f.m16895a(c, bundle);
        Parcel a = m16907a(11, c);
        Bundle bundle2 = (Bundle) C8810f.m16896a(a, Bundle.CREATOR);
        a.recycle();
        return bundle2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c
    /* renamed from: a */
    public final Bundle mo16900a(int i, String str, String str2, String str3, String str4) throws RemoteException {
        Parcel c = m16906c();
        c.writeInt(3);
        c.writeString(str);
        c.writeString(str2);
        c.writeString(str3);
        c.writeString(null);
        Parcel a = m16907a(3, c);
        Bundle bundle = (Bundle) C8810f.m16896a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c
    /* renamed from: a */
    public final Bundle mo16899a(int i, String str, String str2, String str3, String str4, Bundle bundle) throws RemoteException {
        Parcel c = m16906c();
        c.writeInt(i);
        c.writeString(str);
        c.writeString(str2);
        c.writeString(str3);
        c.writeString(str4);
        C8810f.m16895a(c, bundle);
        Parcel a = m16907a(8, c);
        Bundle bundle2 = (Bundle) C8810f.m16896a(a, Bundle.CREATOR);
        a.recycle();
        return bundle2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c
    /* renamed from: a */
    public final Bundle mo16898a(int i, String str, List<String> list, String str2, String str3, String str4) throws RemoteException {
        Parcel c = m16906c();
        c.writeInt(5);
        c.writeString(str);
        c.writeStringList(list);
        c.writeString(str2);
        c.writeString(str3);
        c.writeString(null);
        Parcel a = m16907a(7, c);
        Bundle bundle = (Bundle) C8810f.m16896a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p278s.AbstractC8807c
    /* renamed from: b */
    public final int mo16897b(int i, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel c = m16906c();
        c.writeInt(7);
        c.writeString(str);
        c.writeString(str2);
        C8810f.m16895a(c, bundle);
        Parcel a = m16907a(10, c);
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }
}
