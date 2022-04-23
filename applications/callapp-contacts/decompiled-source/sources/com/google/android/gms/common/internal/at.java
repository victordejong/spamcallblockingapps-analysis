package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.zzn;
import com.google.android.gms.common.zzq;
import com.google.android.gms.common.zzs;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.c.a;
import com.google.android.gms.internal.c.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/at.class */
public final class at extends a implements av {
    /* JADX INFO: Access modifiers changed from: package-private */
    public at(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.av
    public final zzq a(zzn zznVar) throws RemoteException {
        Parcel c2 = c();
        c.a(c2, zznVar);
        Parcel a2 = a(6, c2);
        zzq zzqVar = (zzq) c.a(a2, zzq.CREATOR);
        a2.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.av
    public final boolean a() throws RemoteException {
        Parcel a2 = a(7, c());
        boolean a3 = c.a(a2);
        a2.recycle();
        return a3;
    }

    @Override // com.google.android.gms.common.internal.av
    public final boolean a(zzs zzsVar, b bVar) throws RemoteException {
        Parcel c2 = c();
        c.a(c2, zzsVar);
        c.a(c2, bVar);
        Parcel a2 = a(5, c2);
        boolean a3 = c.a(a2);
        a2.recycle();
        return a3;
    }
}
