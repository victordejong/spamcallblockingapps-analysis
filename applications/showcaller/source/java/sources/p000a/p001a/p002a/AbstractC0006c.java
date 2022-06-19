package p000a.p001a.p002a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p000a.p001a.p002a.AbstractC0000a;
/* renamed from: a.a.a.c */
/* loaded from: classes-dex2jar.jar:a/a/a/c.class */
public interface AbstractC0006c extends IInterface {

    /* renamed from: a.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/c$a.class */
    public static abstract class AbstractBinderC0007a extends Binder implements AbstractC0006c {
        public AbstractBinderC0007a() {
            attachInterface(this, "android.support.customtabs.IPostMessageService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Bundle bundle = null;
            if (i == 2) {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                AbstractC0000a m35937c0 = AbstractC0000a.AbstractBinderC0001a.m35937c0(parcel.readStrongBinder());
                Bundle bundle2 = null;
                if (parcel.readInt() != 0) {
                    bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo34664B2(m35937c0, bundle2);
                parcel2.writeNoException();
                return true;
            } else if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("android.support.customtabs.IPostMessageService");
                return true;
            } else {
                parcel.enforceInterface("android.support.customtabs.IPostMessageService");
                AbstractC0000a m35937c02 = AbstractC0000a.AbstractBinderC0001a.m35937c0(parcel.readStrongBinder());
                String readString = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                mo34663q3(m35937c02, readString, bundle);
                parcel2.writeNoException();
                return true;
            }
        }
    }

    /* renamed from: B2 */
    void mo34664B2(AbstractC0000a abstractC0000a, Bundle bundle);

    /* renamed from: q3 */
    void mo34663q3(AbstractC0000a abstractC0000a, String str, Bundle bundle);
}
