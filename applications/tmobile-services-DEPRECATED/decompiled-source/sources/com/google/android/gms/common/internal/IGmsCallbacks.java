package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsCallbacks.class */
public interface IGmsCallbacks extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IGmsCallbacks$zza.class */
    public static abstract class zza extends zzb implements IGmsCallbacks {
        public zza() {
            super("com.google.android.gms.common.internal.IGmsCallbacks");
        }

        @Override // com.google.android.gms.internal.common.zzb
        /* renamed from: a */
        protected final boolean mo14094a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                mo14404a0(parcel.readInt(), parcel.readStrongBinder(), (Bundle) zzc.m14092b(parcel, Bundle.CREATOR));
            } else if (i == 2) {
                mo14405W(parcel.readInt(), (Bundle) zzc.m14092b(parcel, Bundle.CREATOR));
            } else if (i != 3) {
                return false;
            } else {
                mo14406P(parcel.readInt(), parcel.readStrongBinder(), (zzb) zzc.m14092b(parcel, zzb.CREATOR));
            }
            parcel2.writeNoException();
            return true;
        }
    }

    /* renamed from: P */
    void mo14406P(int i, IBinder iBinder, zzb zzbVar) throws RemoteException;

    /* renamed from: W */
    void mo14405W(int i, Bundle bundle) throws RemoteException;

    /* renamed from: a0 */
    void mo14404a0(int i, IBinder iBinder, Bundle bundle) throws RemoteException;
}
