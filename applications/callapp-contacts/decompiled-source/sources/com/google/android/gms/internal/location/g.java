package com.google.android.gms.internal.location;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/g.class */
public final class g extends a implements h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // com.google.android.gms.internal.location.h
    public final Location a(String str) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        Parcel a3 = a(80, a2);
        Location location = (Location) ai.a(a3, Location.CREATOR);
        a3.recycle();
        return location;
    }

    @Override // com.google.android.gms.internal.location.h
    public final void a(zzbc zzbcVar) throws RemoteException {
        Parcel a2 = a();
        ai.a(a2, zzbcVar);
        b(59, a2);
    }

    @Override // com.google.android.gms.internal.location.h
    public final void a(zzl zzlVar) throws RemoteException {
        Parcel a2 = a();
        ai.a(a2, zzlVar);
        b(75, a2);
    }

    @Override // com.google.android.gms.internal.location.h
    public final void a(boolean z) throws RemoteException {
        Parcel a2 = a();
        ai.a(a2, false);
        b(12, a2);
    }

    @Override // com.google.android.gms.internal.location.h
    public final Location b() throws RemoteException {
        Parcel a2 = a(7, a());
        Location location = (Location) ai.a(a2, Location.CREATOR);
        a2.recycle();
        return location;
    }
}
