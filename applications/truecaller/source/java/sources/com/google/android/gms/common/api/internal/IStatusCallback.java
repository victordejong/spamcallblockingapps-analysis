package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zac;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/IStatusCallback.class */
public interface IStatusCallback extends IInterface {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/IStatusCallback$Stub.class */
    public static abstract class Stub extends zab implements IStatusCallback {
        public Stub() {
            super("com.google.android.gms.common.api.internal.IStatusCallback");
        }

        @RecentlyNonNull
        public static IStatusCallback asInterface(@RecentlyNonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.api.internal.IStatusCallback");
            return queryLocalInterface instanceof IStatusCallback ? (IStatusCallback) queryLocalInterface : new zabs(iBinder);
        }

        @Override // com.google.android.gms.internal.base.zab
        public final boolean zaa(int i, @RecentlyNonNull Parcel parcel, @RecentlyNonNull Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                onResult((Status) zac.zab(parcel, Status.CREATOR));
                return true;
            }
            return false;
        }
    }

    void onResult(@RecentlyNonNull Status status) throws RemoteException;
}
