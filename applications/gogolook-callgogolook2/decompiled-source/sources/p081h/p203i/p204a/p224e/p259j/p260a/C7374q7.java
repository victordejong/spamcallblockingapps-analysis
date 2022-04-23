package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.i.a.e.j.a.q7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/q7.class */
public final class C7374q7 extends C7441w2 implements AbstractC7361p7 {
    public C7374q7(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7361p7
    /* renamed from: l0 */
    public final String mo20733l0() throws RemoteException {
        Parcel a = m20617a(2, m20618G0());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7361p7
    /* renamed from: x0 */
    public final List<AbstractC7398s7> mo20732x0() throws RemoteException {
        Parcel a = m20617a(3, m20618G0());
        ArrayList b = C7465y2.m20506b(a);
        a.recycle();
        return b;
    }
}
