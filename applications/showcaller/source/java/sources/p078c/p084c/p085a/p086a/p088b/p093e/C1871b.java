package p078c.p084c.p085a.p086a.p088b.p093e;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
/* renamed from: c.c.a.a.b.e.b */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/e/b.class */
public final class C1871b extends C1874e implements AbstractC1873d {
    public C1871b(IBinder iBinder) {
        super(iBinder, "com.android.vending.billing.IInAppBillingService");
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d
    /* renamed from: B3 */
    public final Bundle mo28767B3(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel m28755c0 = m28755c0();
        m28755c0.writeInt(9);
        m28755c0.writeString(str);
        m28755c0.writeString(str2);
        m28755c0.writeString(str3);
        C1876g.m28753b(m28755c0, bundle);
        Parcel m28756D0 = m28756D0(11, m28755c0);
        Bundle bundle2 = (Bundle) C1876g.m28754a(m28756D0, Bundle.CREATOR);
        m28756D0.recycle();
        return bundle2;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d
    /* renamed from: L4 */
    public final Bundle mo28766L4(int i, String str, String str2, Bundle bundle) {
        Parcel m28755c0 = m28755c0();
        m28755c0.writeInt(3);
        m28755c0.writeString(str);
        m28755c0.writeString(str2);
        C1876g.m28753b(m28755c0, bundle);
        Parcel m28756D0 = m28756D0(2, m28755c0);
        Bundle bundle2 = (Bundle) C1876g.m28754a(m28756D0, Bundle.CREATOR);
        m28756D0.recycle();
        return bundle2;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d
    /* renamed from: T0 */
    public final Bundle mo28765T0(int i, String str, String str2, Bundle bundle) {
        Parcel m28755c0 = m28755c0();
        m28755c0.writeInt(9);
        m28755c0.writeString(str);
        m28755c0.writeString(str2);
        C1876g.m28753b(m28755c0, bundle);
        Parcel m28756D0 = m28756D0(902, m28755c0);
        Bundle bundle2 = (Bundle) C1876g.m28754a(m28756D0, Bundle.CREATOR);
        m28756D0.recycle();
        return bundle2;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d
    /* renamed from: d1 */
    public final int mo28764d1(int i, String str, String str2) {
        Parcel m28755c0 = m28755c0();
        m28755c0.writeInt(i);
        m28755c0.writeString(str);
        m28755c0.writeString(str2);
        Parcel m28756D0 = m28756D0(1, m28755c0);
        int readInt = m28756D0.readInt();
        m28756D0.recycle();
        return readInt;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d
    /* renamed from: d3 */
    public final Bundle mo28763d3(int i, String str, String str2, Bundle bundle, Bundle bundle2) {
        Parcel m28755c0 = m28755c0();
        m28755c0.writeInt(10);
        m28755c0.writeString(str);
        m28755c0.writeString(str2);
        C1876g.m28753b(m28755c0, bundle);
        C1876g.m28753b(m28755c0, bundle2);
        Parcel m28756D0 = m28756D0(901, m28755c0);
        Bundle bundle3 = (Bundle) C1876g.m28754a(m28756D0, Bundle.CREATOR);
        m28756D0.recycle();
        return bundle3;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d
    /* renamed from: e4 */
    public final int mo28762e4(int i, String str, String str2) {
        Parcel m28755c0 = m28755c0();
        m28755c0.writeInt(3);
        m28755c0.writeString(str);
        m28755c0.writeString(str2);
        Parcel m28756D0 = m28756D0(5, m28755c0);
        int readInt = m28756D0.readInt();
        m28756D0.recycle();
        return readInt;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d
    /* renamed from: g5 */
    public final Bundle mo28761g5(int i, String str, String str2, Bundle bundle) {
        Parcel m28755c0 = m28755c0();
        m28755c0.writeInt(9);
        m28755c0.writeString(str);
        m28755c0.writeString(str2);
        C1876g.m28753b(m28755c0, bundle);
        Parcel m28756D0 = m28756D0(12, m28755c0);
        Bundle bundle2 = (Bundle) C1876g.m28754a(m28756D0, Bundle.CREATOR);
        m28756D0.recycle();
        return bundle2;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d
    /* renamed from: h5 */
    public final Bundle mo28760h5(int i, String str, String str2, String str3) {
        Parcel m28755c0 = m28755c0();
        m28755c0.writeInt(3);
        m28755c0.writeString(str);
        m28755c0.writeString(str2);
        m28755c0.writeString(str3);
        Parcel m28756D0 = m28756D0(4, m28755c0);
        Bundle bundle = (Bundle) C1876g.m28754a(m28756D0, Bundle.CREATOR);
        m28756D0.recycle();
        return bundle;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d
    /* renamed from: i1 */
    public final Bundle mo28759i1(int i, String str, String str2, String str3, String str4) {
        Parcel m28755c0 = m28755c0();
        m28755c0.writeInt(3);
        m28755c0.writeString(str);
        m28755c0.writeString(str2);
        m28755c0.writeString(str3);
        m28755c0.writeString(null);
        Parcel m28756D0 = m28756D0(3, m28755c0);
        Bundle bundle = (Bundle) C1876g.m28754a(m28756D0, Bundle.CREATOR);
        m28756D0.recycle();
        return bundle;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d
    /* renamed from: k4 */
    public final Bundle mo28758k4(int i, String str, List<String> list, String str2, String str3, String str4) {
        Parcel m28755c0 = m28755c0();
        m28755c0.writeInt(5);
        m28755c0.writeString(str);
        m28755c0.writeStringList(list);
        m28755c0.writeString(str2);
        m28755c0.writeString("subs");
        m28755c0.writeString(null);
        Parcel m28756D0 = m28756D0(7, m28755c0);
        Bundle bundle = (Bundle) C1876g.m28754a(m28756D0, Bundle.CREATOR);
        m28756D0.recycle();
        return bundle;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p093e.AbstractC1873d
    /* renamed from: n4 */
    public final Bundle mo28757n4(int i, String str, String str2, String str3, String str4, Bundle bundle) {
        Parcel m28755c0 = m28755c0();
        m28755c0.writeInt(i);
        m28755c0.writeString(str);
        m28755c0.writeString(str2);
        m28755c0.writeString(str3);
        m28755c0.writeString(null);
        C1876g.m28753b(m28755c0, bundle);
        Parcel m28756D0 = m28756D0(8, m28755c0);
        Bundle bundle2 = (Bundle) C1876g.m28754a(m28756D0, Bundle.CREATOR);
        m28756D0.recycle();
        return bundle2;
    }
}
