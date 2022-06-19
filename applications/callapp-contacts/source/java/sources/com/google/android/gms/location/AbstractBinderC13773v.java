package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.BinderC13342q;
import com.google.android.gms.internal.location.C13321ai;
/* renamed from: com.google.android.gms.location.v */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/v.class */
public abstract class AbstractBinderC13773v extends BinderC13342q implements AbstractC13774w {
    public AbstractBinderC13773v() {
        super("com.google.android.gms.location.ILocationListener");
    }

    /* renamed from: a */
    public static AbstractC13774w m12261a(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
        return queryLocalInterface instanceof AbstractC13774w ? (AbstractC13774w) queryLocalInterface : new C13772u(iBinder);
    }

    @Override // com.google.android.gms.internal.location.BinderC13342q
    /* renamed from: a */
    public final boolean mo12262a(int i, Parcel parcel) throws RemoteException {
        if (i == 1) {
            mo12260a((Location) C13321ai.m13337a(parcel, Location.CREATOR));
            return true;
        }
        return false;
    }
}
