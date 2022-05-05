package p081h.p203i.p204a.p224e.p259j.p262c;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* renamed from: h.i.a.e.j.c.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/c/g.class */
public abstract class AbstractBinderC7498g extends BinderC7493b implements AbstractC7497f {
    public AbstractBinderC7498g() {
        super("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverResultCallback");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p262c.BinderC7493b
    /* renamed from: a */
    public final boolean mo20414a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo20412a((Status) C7494c.m20416a(parcel, Status.CREATOR));
        return true;
    }
}
