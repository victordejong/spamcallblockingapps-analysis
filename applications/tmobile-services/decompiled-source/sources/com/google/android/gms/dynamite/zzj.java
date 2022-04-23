package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamite/zzj.class */
public final class zzj extends zza implements zzi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    @Override // com.google.android.gms.dynamite.zzi
    /* renamed from: J0 */
    public final int mo14214J0() throws RemoteException {
        Parcel b = m14097b(6, m14098a());
        int readInt = b.readInt();
        b.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.zzi
    /* renamed from: M */
    public final IObjectWrapper mo14213M(IObjectWrapper iObjectWrapper, String str, int i) throws RemoteException {
        Parcel a = m14098a();
        zzc.m14091c(a, iObjectWrapper);
        a.writeString(str);
        a.writeInt(i);
        Parcel b = m14097b(2, a);
        IObjectWrapper b2 = IObjectWrapper.Stub.m14259b(b.readStrongBinder());
        b.recycle();
        return b2;
    }

    @Override // com.google.android.gms.dynamite.zzi
    /* renamed from: b0 */
    public final int mo14212b0(IObjectWrapper iObjectWrapper, String str, boolean z) throws RemoteException {
        Parcel a = m14098a();
        zzc.m14091c(a, iObjectWrapper);
        a.writeString(str);
        zzc.m14093a(a, z);
        Parcel b = m14097b(5, a);
        int readInt = b.readInt();
        b.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.zzi
    /* renamed from: p0 */
    public final int mo14211p0(IObjectWrapper iObjectWrapper, String str, boolean z) throws RemoteException {
        Parcel a = m14098a();
        zzc.m14091c(a, iObjectWrapper);
        a.writeString(str);
        zzc.m14093a(a, z);
        Parcel b = m14097b(3, a);
        int readInt = b.readInt();
        b.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.zzi
    /* renamed from: v0 */
    public final IObjectWrapper mo14210v0(IObjectWrapper iObjectWrapper, String str, int i) throws RemoteException {
        Parcel a = m14098a();
        zzc.m14091c(a, iObjectWrapper);
        a.writeString(str);
        a.writeInt(i);
        Parcel b = m14097b(4, a);
        IObjectWrapper b2 = IObjectWrapper.Stub.m14259b(b.readStrongBinder());
        b.recycle();
        return b2;
    }
}
