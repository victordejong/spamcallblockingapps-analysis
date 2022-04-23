package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafi.class */
public abstract class zzafi extends zzgt implements zzaff {
    public zzafi() {
        super("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    /* renamed from: a */
    public static zzaff m16805a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
        return queryLocalInterface instanceof zzaff ? (zzaff) queryLocalInterface : new zzafh(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzaew zzaewVar;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            zzaewVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
            zzaewVar = queryLocalInterface instanceof zzaew ? (zzaew) queryLocalInterface : new zzaey(readStrongBinder);
        }
        mo16773a(zzaewVar);
        parcel2.writeNoException();
        return true;
    }
}
