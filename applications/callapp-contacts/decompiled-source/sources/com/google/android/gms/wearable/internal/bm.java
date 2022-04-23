package com.google.android.gms.wearable.internal;

import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bm.class */
public interface bm extends IInterface {
    void a(bh bhVar, bf bfVar, String str) throws RemoteException;

    void a(bh bhVar, zzd zzdVar) throws RemoteException;

    void a(bh bhVar, zzfw zzfwVar) throws RemoteException;

    void a(bh bhVar, String str) throws RemoteException;

    void a(bh bhVar, String str, int i) throws RemoteException;

    void a(bh bhVar, String str, ParcelFileDescriptor parcelFileDescriptor) throws RemoteException;

    void a(bh bhVar, String str, ParcelFileDescriptor parcelFileDescriptor, long j, long j2) throws RemoteException;

    void a(bh bhVar, String str, String str2, byte[] bArr) throws RemoteException;

    void b(bh bhVar, bf bfVar, String str) throws RemoteException;

    void b(bh bhVar, String str, int i) throws RemoteException;
}
