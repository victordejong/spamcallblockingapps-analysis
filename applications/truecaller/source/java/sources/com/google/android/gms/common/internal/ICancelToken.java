package com.google.android.gms.common.internal;

import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zzb;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/ICancelToken.class */
public interface ICancelToken extends IInterface {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/ICancelToken$Stub.class */
    public static abstract class Stub extends zzb implements ICancelToken {
        public Stub() {
            super("com.google.android.gms.common.internal.ICancelToken");
        }

        @Override // com.google.android.gms.internal.common.zzb
        public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 2) {
                cancel();
                return true;
            }
            return false;
        }
    }

    void cancel() throws RemoteException;
}
