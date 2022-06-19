package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
/* renamed from: com.google.android.gms.cloudmessaging.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/a.class */
interface AbstractC5954a extends IInterface {

    /* renamed from: com.google.android.gms.cloudmessaging.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/a$a.class */
    public static class C5955a implements AbstractC5954a {

        /* renamed from: d */
        private final IBinder f19091d;

        public C5955a(IBinder iBinder) {
            this.f19091d = iBinder;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f19091d;
        }

        @Override // com.google.android.gms.cloudmessaging.AbstractC5954a
        /* renamed from: x1 */
        public void mo17544x1(Message message) {
            Parcel obtain = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
            obtain.writeInt(1);
            message.writeToParcel(obtain, 0);
            try {
                this.f19091d.transact(1, obtain, null, 1);
            } finally {
                obtain.recycle();
            }
        }
    }

    /* renamed from: x1 */
    void mo17544x1(Message message);
}
