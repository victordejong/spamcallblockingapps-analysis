package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.internal.wearable.a;
import com.google.android.gms.internal.wearable.c;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bn.class */
public final class bn extends a implements bm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.wearable.internal.IWearableService");
    }

    @Override // com.google.android.gms.wearable.internal.bm
    public final void a(bh bhVar, bf bfVar, String str) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, bhVar);
        c.a(a2, bfVar);
        a2.writeString(str);
        a(34, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bm
    public final void a(bh bhVar, zzd zzdVar) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, bhVar);
        c.a(a2, zzdVar);
        a(16, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bm
    public final void a(bh bhVar, zzfw zzfwVar) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, bhVar);
        c.a(a2, zzfwVar);
        a(17, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bm
    public final void a(bh bhVar, String str) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, bhVar);
        a2.writeString(str);
        a(32, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bm
    public final void a(bh bhVar, String str, int i) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, bhVar);
        a2.writeString(str);
        a2.writeInt(i);
        a(42, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bm
    public final void a(bh bhVar, String str, ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, bhVar);
        a2.writeString(str);
        c.a(a2, parcelFileDescriptor);
        a(38, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bm
    public final void a(bh bhVar, String str, ParcelFileDescriptor parcelFileDescriptor, long j, long j2) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, bhVar);
        a2.writeString(str);
        c.a(a2, parcelFileDescriptor);
        a2.writeLong(j);
        a2.writeLong(j2);
        a(39, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bm
    public final void a(bh bhVar, String str, String str2, byte[] bArr) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, bhVar);
        a2.writeString(str);
        a2.writeString(str2);
        a2.writeByteArray(bArr);
        a(12, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bm
    public final void b(bh bhVar, bf bfVar, String str) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, bhVar);
        c.a(a2, bfVar);
        a2.writeString(str);
        a(35, a2);
    }

    @Override // com.google.android.gms.wearable.internal.bm
    public final void b(bh bhVar, String str, int i) throws RemoteException {
        Parcel a2 = a();
        c.a(a2, bhVar);
        a2.writeString(str);
        a2.writeInt(i);
        a(33, a2);
    }
}
