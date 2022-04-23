package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzk;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzo.class */
public final class zzo extends zza implements zzm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.zzm
    /* renamed from: G */
    public final boolean mo14402G(zzk zzkVar, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel a = m14098a();
        zzc.m14090d(a, zzkVar);
        zzc.m14091c(a, iObjectWrapper);
        Parcel b = m14097b(5, a);
        boolean e = zzc.m14089e(b);
        b.recycle();
        return e;
    }
}
