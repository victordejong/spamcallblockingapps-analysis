package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zzl.class */
public final class zzl extends zzb implements zzm {
    public zzl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    @Override // com.google.android.gms.dynamite.zzm
    /* renamed from: a */
    public final IObjectWrapper mo16974a(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel W = m10522W();
        zzd.m10517a(W, iObjectWrapper);
        W.writeString(str);
        W.writeInt(i);
        zzd.m10517a(W, iObjectWrapper2);
        Parcel a = m10521a(2, W);
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.dynamite.zzm
    /* renamed from: b */
    public final IObjectWrapper mo16973b(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel W = m10522W();
        zzd.m10517a(W, iObjectWrapper);
        W.writeString(str);
        W.writeInt(i);
        zzd.m10517a(W, iObjectWrapper2);
        Parcel a = m10521a(3, W);
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
