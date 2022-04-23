package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zzb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ICancelToken.class */
public interface ICancelToken extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ICancelToken$Stub.class */
    public static abstract class Stub extends zzb implements ICancelToken {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ICancelToken$Stub$zza.class */
        public static final class zza extends com.google.android.gms.internal.common.zza implements ICancelToken {
            zza(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.ICancelToken");
            }

            @Override // com.google.android.gms.common.internal.ICancelToken
            public final void cancel() throws RemoteException {
                zzc(2, zza());
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.ICancelToken");
        }

        public static ICancelToken asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICancelToken");
            return queryLocalInterface instanceof ICancelToken ? (ICancelToken) queryLocalInterface : new zza(iBinder);
        }
    }

    void cancel() throws RemoteException;
}
