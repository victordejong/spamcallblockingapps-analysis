package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zzl.class */
public final class zzl extends zza implements zzk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    @Override // com.google.android.gms.dynamite.zzk
    /* renamed from: A */
    public final IObjectWrapper mo14209A(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel a = m14098a();
        zzc.m14091c(a, iObjectWrapper);
        a.writeString(str);
        a.writeInt(i);
        zzc.m14091c(a, iObjectWrapper2);
        Parcel b = m14097b(3, a);
        IObjectWrapper b2 = IObjectWrapper.Stub.m14259b(b.readStrongBinder());
        b.recycle();
        return b2;
    }

    @Override // com.google.android.gms.dynamite.zzk
    /* renamed from: y */
    public final IObjectWrapper mo14208y(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel a = m14098a();
        zzc.m14091c(a, iObjectWrapper);
        a.writeString(str);
        a.writeInt(i);
        zzc.m14091c(a, iObjectWrapper2);
        Parcel b = m14097b(2, a);
        IObjectWrapper b2 = IObjectWrapper.Stub.m14259b(b.readStrongBinder());
        b.recycle();
        return b2;
    }
}
