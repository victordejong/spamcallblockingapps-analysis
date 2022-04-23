package com.google.android.gms.internal.e;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/k.class */
public final class k extends a implements i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    }

    @Override // com.google.android.gms.internal.e.i
    public final b M_() throws RemoteException {
        Parcel a2 = a(4, N_());
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.i
    public final b a(float f) throws RemoteException {
        Parcel N_ = N_();
        N_.writeFloat(f);
        Parcel a2 = a(5, N_);
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.i
    public final b a(int i) throws RemoteException {
        Parcel N_ = N_();
        N_.writeInt(i);
        Parcel a2 = a(1, N_);
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.i
    public final b a(Bitmap bitmap) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, bitmap);
        Parcel a2 = a(6, N_);
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.i
    public final b a(String str) throws RemoteException {
        Parcel N_ = N_();
        N_.writeString(str);
        Parcel a2 = a(2, N_);
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.i
    public final b b(String str) throws RemoteException {
        Parcel N_ = N_();
        N_.writeString(str);
        Parcel a2 = a(3, N_);
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.internal.e.i
    public final b c(String str) throws RemoteException {
        Parcel N_ = N_();
        N_.writeString(str);
        Parcel a2 = a(7, N_);
        b a3 = b.a.a(a2.readStrongBinder());
        a2.recycle();
        return a3;
    }
}
