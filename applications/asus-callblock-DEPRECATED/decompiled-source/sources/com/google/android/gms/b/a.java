package com.google.android.gms.b;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a.class */
public interface a extends IInterface {

    /* renamed from: com.google.android.gms.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a$a.class */
    public static abstract class AbstractBinderC0107a extends Binder implements a {

        /* renamed from: com.google.android.gms.b.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a$a$a.class */
        private static final class C0108a implements a {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f3914a;

            C0108a(IBinder iBinder) {
                this.f3914a = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f3914a;
            }
        }

        public AbstractBinderC0107a() {
            attachInterface(this, "com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static a a(IBinder iBinder) {
            a aVar;
            if (iBinder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof a)) ? new C0108a(iBinder) : (a) queryLocalInterface;
            }
            return aVar;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            switch (i) {
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.dynamic.IObjectWrapper");
                    z = true;
                    break;
                default:
                    z = super.onTransact(i, parcel, parcel2, i2);
                    break;
            }
            return z;
        }
    }
}
