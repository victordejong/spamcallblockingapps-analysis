package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.by */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/by.class */
public abstract class AbstractBinderC15061by extends BinderC15050bn implements AbstractC15062bz {
    public AbstractBinderC15061by() {
        super("com.google.android.play.core.assetpacks.protocol.IAssetModuleServiceCallback");
    }

    @Override // com.google.android.play.core.internal.BinderC15050bn
    /* renamed from: a */
    protected final boolean mo9515a(int i, Parcel parcel) throws RemoteException {
        switch (i) {
            case 2:
                int readInt = parcel.readInt();
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9533a(readInt);
                return true;
            case 3:
                int readInt2 = parcel.readInt();
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9528b(readInt2);
                return true;
            case 4:
                int readInt3 = parcel.readInt();
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9524c(readInt3);
                return true;
            case 5:
                mo9530a(parcel.createTypedArrayList(Bundle.CREATOR));
                return true;
            case 6:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9527b((Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
                return true;
            case 7:
                mo9532a((Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
                return true;
            case 8:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9523c((Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
                return true;
            case 9:
            default:
                return false;
            case 10:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9522d((Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
                return true;
            case 11:
                mo9531a((Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR), (Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
                return true;
            case 12:
                mo9526b((Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR), (Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
                return true;
            case 13:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9534a();
                return true;
            case 14:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9525c();
                return true;
            case 15:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9529b();
                return true;
        }
    }
}
