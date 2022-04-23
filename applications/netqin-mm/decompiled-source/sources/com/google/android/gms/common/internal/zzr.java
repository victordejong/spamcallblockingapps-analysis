package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzj;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzr.class */
public final class zzr extends zzb implements zzq {
    public zzr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.zzq
    /* renamed from: a */
    public final boolean mo17157a(zzj zzjVar, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m10522W();
        zzd.m10515a(W, zzjVar);
        zzd.m10517a(W, iObjectWrapper);
        Parcel a = m10521a(5, W);
        boolean a2 = zzd.m10518a(a);
        a.recycle();
        return a2;
    }
}
