package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zab;
import com.google.android.gms.internal.base.zac;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IResolveAccountCallbacks.class */
public interface IResolveAccountCallbacks extends IInterface {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IResolveAccountCallbacks$Stub.class */
    public static abstract class Stub extends zab implements IResolveAccountCallbacks {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/IResolveAccountCallbacks$Stub$Proxy.class */
        public static class Proxy extends zaa implements IResolveAccountCallbacks {
            Proxy(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IResolveAccountCallbacks");
            }

            @Override // com.google.android.gms.common.internal.IResolveAccountCallbacks
            public void onAccountResolutionComplete(ResolveAccountResponse resolveAccountResponse) {
                Parcel zaa = zaa();
                zac.zaa(zaa, resolveAccountResponse);
                zab(2, zaa);
            }
        }

        public Stub() {
            super("com.google.android.gms.common.internal.IResolveAccountCallbacks");
        }

        public static IResolveAccountCallbacks asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
            return queryLocalInterface instanceof IResolveAccountCallbacks ? (IResolveAccountCallbacks) queryLocalInterface : new Proxy(iBinder);
        }

        @Override // com.google.android.gms.internal.base.zab
        protected boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 2) {
                onAccountResolutionComplete((ResolveAccountResponse) zac.zaa(parcel, ResolveAccountResponse.CREATOR));
                parcel2.writeNoException();
                return true;
            }
            return false;
        }
    }

    void onAccountResolutionComplete(ResolveAccountResponse resolveAccountResponse);
}
