package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzl.class */
public final class zzl extends zza implements IGmsCallbacks {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    /* renamed from: P */
    public final void mo14406P(int i, IBinder iBinder, zzb zzbVar) throws RemoteException {
        Parcel a = m14098a();
        a.writeInt(i);
        a.writeStrongBinder(iBinder);
        zzc.m14090d(a, zzbVar);
        m14096c(3, a);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    /* renamed from: W */
    public final void mo14405W(int i, Bundle bundle) throws RemoteException {
        Parcel a = m14098a();
        a.writeInt(i);
        zzc.m14090d(a, bundle);
        m14096c(2, a);
    }

    @Override // com.google.android.gms.common.internal.IGmsCallbacks
    /* renamed from: a0 */
    public final void mo14404a0(int i, IBinder iBinder, Bundle bundle) throws RemoteException {
        Parcel a = m14098a();
        a.writeInt(i);
        a.writeStrongBinder(iBinder);
        zzc.m14090d(a, bundle);
        m14096c(1, a);
    }
}
