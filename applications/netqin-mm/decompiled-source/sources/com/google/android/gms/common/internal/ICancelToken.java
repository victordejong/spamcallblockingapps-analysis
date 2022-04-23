package com.google.android.gms.common.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zzb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ICancelToken.class */
public interface ICancelToken extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ICancelToken$Stub.class */
    public static abstract class Stub extends com.google.android.gms.internal.common.zza implements ICancelToken {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ICancelToken$Stub$zza.class */
        public static final class zza extends zzb implements ICancelToken {
            @Override // com.google.android.gms.common.internal.ICancelToken
            public final void cancel() throws RemoteException {
                m10519c(2, m10522W());
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.ICancelToken");
        }
    }

    void cancel() throws RemoteException;
}
