package com.google.android.gms.maps.a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.e.a;
import com.google.android.gms.internal.e.g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/a/z.class */
public final class z extends a implements h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public z(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IUiSettingsDelegate");
    }

    @Override // com.google.android.gms.maps.a.h
    public final void a(boolean z) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, false);
        b(1, N_);
    }

    @Override // com.google.android.gms.maps.a.h
    public final void b(boolean z) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, false);
        b(8, N_);
    }

    @Override // com.google.android.gms.maps.a.h
    public final void c(boolean z) throws RemoteException {
        Parcel N_ = N_();
        g.a(N_, false);
        b(18, N_);
    }
}
