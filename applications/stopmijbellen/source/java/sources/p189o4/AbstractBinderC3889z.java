package p189o4;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: o4.z */
/* loaded from: classes-dex2jar.jar:o4/z.class */
public abstract class AbstractBinderC3889z extends BinderC3884u implements AbstractC3857a0 {
    public AbstractBinderC3889z() {
        super("com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback");
    }

    @Override // p189o4.BinderC3884u
    /* renamed from: q */
    public final boolean mo1730q(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            mo1762b((Bundle) C3885v.m1733a(parcel, Bundle.CREATOR));
            return true;
        } else if (i != 3) {
            return false;
        } else {
            zzb((Bundle) C3885v.m1733a(parcel, Bundle.CREATOR));
            return true;
        }
    }
}
