package p081h.p203i.p204a.p224e.p226b.p227e.p232h.p233b;

import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p263d.BinderC7505b;
/* renamed from: h.i.a.e.b.e.h.b.o */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/b/e/h/b/o.class */
public abstract class AbstractBinderC6753o extends BinderC7505b implements AbstractC6752n {
    public AbstractBinderC6753o() {
        super("com.google.android.gms.auth.api.signin.internal.IRevocationService");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p263d.BinderC7505b
    /* renamed from: a */
    public final boolean mo20407a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo21944h0();
            return true;
        } else if (i != 2) {
            return false;
        } else {
            mo21946D();
            return true;
        }
    }
}
