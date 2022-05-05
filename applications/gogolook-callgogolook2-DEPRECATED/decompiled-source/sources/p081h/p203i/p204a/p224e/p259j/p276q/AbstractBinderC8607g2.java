package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.measurement.zztd;
import com.google.android.gms.internal.measurement.zzts;
/* renamed from: h.i.a.e.j.q.g2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/g2.class */
public abstract class AbstractBinderC8607g2 extends BinderC8597f1 implements AbstractC8598f2 {
    public AbstractBinderC8607g2() {
        super("com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.BinderC8597f1
    /* renamed from: a */
    public final boolean mo16605a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo17675a((Status) C8606g1.m17663a(parcel, Status.CREATOR), (zztd) C8606g1.m17663a(parcel, zztd.CREATOR));
            return true;
        } else if (i != 2) {
            return false;
        } else {
            mo17674a((Status) C8606g1.m17663a(parcel, Status.CREATOR), (zzts) C8606g1.m17663a(parcel, zzts.CREATOR));
            throw null;
        }
    }
}
