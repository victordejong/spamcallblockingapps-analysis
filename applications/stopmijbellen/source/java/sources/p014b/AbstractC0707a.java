package p014b;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.Objects;
import p014b.C0710b;
/* renamed from: b.a */
/* loaded from: classes-dex2jar.jar:b/a.class */
public interface AbstractC0707a extends IInterface {

    /* renamed from: b.a$a */
    /* loaded from: classes-dex2jar.jar:b/a$a.class */
    public static abstract class AbstractBinderC0708a extends Binder implements AbstractC0707a {

        /* renamed from: a */
        public static final /* synthetic */ int f2745a = 0;

        /* renamed from: b.a$a$a */
        /* loaded from: classes-dex2jar.jar:b/a$a$a.class */
        public static class C0709a implements AbstractC0707a {

            /* renamed from: a */
            public IBinder f2746a;

            public C0709a(IBinder iBinder) {
                this.f2746a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f2746a;
            }
        }

        public AbstractBinderC0708a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("android.support.v4.os.IResultReceiver");
                return true;
            }
            parcel.enforceInterface("android.support.v4.os.IResultReceiver");
            int readInt = parcel.readInt();
            Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
            C0710b.BinderC0712b binderC0712b = (C0710b.BinderC0712b) this;
            Objects.requireNonNull(C0710b.this);
            C0710b.this.mo7445a(readInt, bundle);
            return true;
        }
    }
}
