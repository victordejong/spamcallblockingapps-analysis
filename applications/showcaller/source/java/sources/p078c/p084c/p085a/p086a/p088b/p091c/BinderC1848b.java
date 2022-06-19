package p078c.p084c.p085a.p086a.p088b.p091c;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: c.c.a.a.b.c.b */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/c/b.class */
public class BinderC1848b extends Binder implements IInterface {
    public BinderC1848b(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    /* renamed from: c0 */
    protected boolean mo16914c0(int i, Parcel parcel, Parcel parcel2, int i2) {
        return false;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i, parcel, parcel2, i2)) {
            return true;
        }
        return mo16914c0(i, parcel, parcel2, i2);
    }
}
