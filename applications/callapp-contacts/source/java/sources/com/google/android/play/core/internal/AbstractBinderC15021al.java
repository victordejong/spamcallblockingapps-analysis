package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.play.core.internal.al */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/al.class */
public abstract class AbstractBinderC15021al extends BinderC15050bn implements AbstractC15022am {
    public AbstractBinderC15021al() {
        super("com.google.android.play.core.splitinstall.protocol.ISplitInstallServiceCallback");
    }

    @Override // com.google.android.play.core.internal.BinderC15050bn
    /* renamed from: a */
    protected final boolean mo9515a(int i, Parcel parcel) throws RemoteException {
        switch (i) {
            case 2:
                mo9368a(parcel.readInt(), (Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
                return true;
            case 3:
                int readInt = parcel.readInt();
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9365b(readInt);
                return true;
            case 4:
                int readInt2 = parcel.readInt();
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9369a(readInt2);
                return true;
            case 5:
                mo9364b(parcel.readInt(), (Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
                return true;
            case 6:
                mo9367a((Bundle) C15051bo.m9549a(parcel, Bundle.CREATOR));
                return true;
            case 7:
                parcel.createTypedArrayList(Bundle.CREATOR);
                mo9370a();
                return true;
            case 8:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9366b();
                return true;
            case 9:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9363c();
                return true;
            case 10:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9359g();
                return true;
            case 11:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9360f();
                return true;
            case 12:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9362d();
                return true;
            case 13:
                C15051bo.m9549a(parcel, Bundle.CREATOR);
                mo9361e();
                return true;
            default:
                return false;
        }
    }
}
