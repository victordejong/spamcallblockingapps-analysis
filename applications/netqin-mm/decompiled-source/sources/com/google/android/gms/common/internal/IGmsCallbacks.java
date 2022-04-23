package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zzd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsCallbacks.class */
public interface IGmsCallbacks extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsCallbacks$zza.class */
    public static abstract class zza extends com.google.android.gms.internal.common.zza implements IGmsCallbacks {
        public zza() {
            super("com.google.android.gms.common.internal.IGmsCallbacks");
        }

        @Override // com.google.android.gms.internal.common.zza
        /* renamed from: a */
        public final boolean mo10523a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                mo17160a(parcel.readInt(), parcel.readStrongBinder(), (Bundle) zzd.m10516a(parcel, Bundle.CREATOR));
            } else if (i == 2) {
                mo17161a(parcel.readInt(), (Bundle) zzd.m10516a(parcel, Bundle.CREATOR));
            } else if (i != 3) {
                return false;
            } else {
                mo17159a(parcel.readInt(), parcel.readStrongBinder(), (zzc) zzd.m10516a(parcel, zzc.CREATOR));
            }
            parcel2.writeNoException();
            return true;
        }
    }

    /* renamed from: a */
    void mo17161a(int i, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo17160a(int i, IBinder iBinder, Bundle bundle) throws RemoteException;

    /* renamed from: a */
    void mo17159a(int i, IBinder iBinder, zzc zzcVar) throws RemoteException;
}
