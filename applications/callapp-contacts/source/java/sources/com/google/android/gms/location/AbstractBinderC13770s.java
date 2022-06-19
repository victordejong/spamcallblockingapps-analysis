package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.BinderC13342q;
import com.google.android.gms.internal.location.C13321ai;
/* renamed from: com.google.android.gms.location.s */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/s.class */
public abstract class AbstractBinderC13770s extends BinderC13342q implements AbstractC13771t {
    public AbstractBinderC13770s() {
        super("com.google.android.gms.location.ILocationCallback");
    }

    /* renamed from: a */
    public static AbstractC13771t m12265a(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        return queryLocalInterface instanceof AbstractC13771t ? (AbstractC13771t) queryLocalInterface : new C13769r(iBinder);
    }

    @Override // com.google.android.gms.internal.location.BinderC13342q
    /* renamed from: a */
    public final boolean mo12262a(int i, Parcel parcel) throws RemoteException {
        if (i == 1) {
            mo12263a((LocationResult) C13321ai.m13337a(parcel, LocationResult.CREATOR));
            return true;
        } else if (i != 2) {
            return false;
        } else {
            mo12264a((LocationAvailability) C13321ai.m13337a(parcel, LocationAvailability.CREATOR));
            return true;
        }
    }
}
