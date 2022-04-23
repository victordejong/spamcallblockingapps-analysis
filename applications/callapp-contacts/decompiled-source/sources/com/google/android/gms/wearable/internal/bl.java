package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.wearable.a;
import com.google.android.gms.internal.wearable.c;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bl.class */
public final class bl extends a implements bj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public bl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.wearable.internal.IWearableListener");
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(DataHolder dataHolder) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, dataHolder);
        b(1, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzah zzahVar) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, zzahVar);
        b(8, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzaw zzawVar) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, zzawVar);
        b(7, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzfe zzfeVar) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, zzfeVar);
        b(2, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzfo zzfoVar) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, zzfoVar);
        b(3, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzi zziVar) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, zziVar);
        b(9, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(zzl zzlVar) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, zzlVar);
        b(6, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void a(List<zzfo> list) throws RemoteException {
        Parcel a2 = a();
        a2.writeTypedList(list);
        b(5, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bj
    public final void b(zzfo zzfoVar) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, zzfoVar);
        b(4, a2);
    }
}
