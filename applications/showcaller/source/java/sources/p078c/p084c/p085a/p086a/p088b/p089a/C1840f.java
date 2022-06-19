package p078c.p084c.p085a.p086a.p088b.p089a;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: c.c.a.a.b.a.f */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/a/f.class */
public final class C1840f extends C1835a implements AbstractC1838d {
    public C1840f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p089a.AbstractC1838d
    /* renamed from: c */
    public final boolean mo28801c() {
        Parcel m28806D0 = m28806D0(6, m28805c0());
        boolean m28803b = C1837c.m28803b(m28806D0);
        m28806D0.recycle();
        return m28803b;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p089a.AbstractC1838d
    public final String getId() {
        Parcel m28806D0 = m28806D0(1, m28805c0());
        String readString = m28806D0.readString();
        m28806D0.recycle();
        return readString;
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p089a.AbstractC1838d
    /* renamed from: r0 */
    public final boolean mo28800r0(boolean z) {
        Parcel m28805c0 = m28805c0();
        C1837c.m28804a(m28805c0, true);
        Parcel m28806D0 = m28806D0(2, m28805c0);
        boolean m28803b = C1837c.m28803b(m28806D0);
        m28806D0.recycle();
        return m28803b;
    }
}
