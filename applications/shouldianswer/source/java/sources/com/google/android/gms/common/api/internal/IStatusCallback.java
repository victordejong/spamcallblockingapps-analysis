package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/IStatusCallback.class */
public interface IStatusCallback extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/IStatusCallback$Stub.class */
    public static abstract class Stub extends zab implements IStatusCallback {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/IStatusCallback$Stub$zaa.class */
        public static final class zaa extends com.google.android.gms.internal.base.zaa implements IStatusCallback {
            zaa(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.api.internal.IStatusCallback");
            }

            @Override // com.google.android.gms.common.api.internal.IStatusCallback
            public final void onResult(Status status) {
                Parcel zaa = zaa();
                zac.zaa(zaa, status);
                zac(1, zaa);
            }
        }

        public Stub() {
            super("com.google.android.gms.common.api.internal.IStatusCallback");
        }

        public static IStatusCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.api.internal.IStatusCallback");
            return queryLocalInterface instanceof IStatusCallback ? (IStatusCallback) queryLocalInterface : new zaa(iBinder);
        }

        @Override // com.google.android.gms.internal.base.zab
        protected boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                onResult((Status) zac.zaa(parcel, Status.CREATOR));
                return true;
            }
            return false;
        }
    }

    void onResult(Status status);
}
