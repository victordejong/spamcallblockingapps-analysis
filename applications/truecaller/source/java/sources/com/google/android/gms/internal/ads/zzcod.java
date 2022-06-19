package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcod.class */
public interface zzcod extends IInterface {
    void zzb(Bundle bundle) throws RemoteException;

    Bundle zzc(Bundle bundle) throws RemoteException;

    void zzd(String str, String str2, Bundle bundle) throws RemoteException;

    void zze(String str, String str2, IObjectWrapper iObjectWrapper) throws RemoteException;

    Map zzf(String str, String str2, boolean z) throws RemoteException;

    int zzg(String str) throws RemoteException;

    void zzh(Bundle bundle) throws RemoteException;

    void zzi(String str, String str2, Bundle bundle) throws RemoteException;

    List zzj(String str, String str2) throws RemoteException;

    String zzk() throws RemoteException;

    String zzl() throws RemoteException;

    long zzm() throws RemoteException;

    void zzn(String str) throws RemoteException;

    void zzo(String str) throws RemoteException;

    void zzp(Bundle bundle) throws RemoteException;

    void zzq(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException;

    String zzr() throws RemoteException;

    String zzs() throws RemoteException;

    String zzt() throws RemoteException;
}
