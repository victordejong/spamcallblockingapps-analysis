package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzanj.class */
public interface zzanj extends IInterface {
    void destroy() throws RemoteException;

    Bundle getInterstitialAdapterInfo() throws RemoteException;

    zzzc getVideoController() throws RemoteException;

    boolean isInitialized() throws RemoteException;

    void pause() throws RemoteException;

    void resume() throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void showInterstitial() throws RemoteException;

    void showVideo() throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzajj zzajjVar, List<zzajr> list) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzavf zzavfVar, List<String> list) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzavf zzavfVar, String str2) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, String str2, zzank zzankVar) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, String str2, zzank zzankVar, zzaeh zzaehVar, List<String> list) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, zzvl zzvlVar, String str, String str2, zzank zzankVar) throws RemoteException;

    void zza(zzvl zzvlVar, String str) throws RemoteException;

    void zza(zzvl zzvlVar, String str, String str2) throws RemoteException;

    void zzb(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException;

    void zzc(IObjectWrapper iObjectWrapper, zzvl zzvlVar, String str, zzank zzankVar) throws RemoteException;

    void zzs(IObjectWrapper iObjectWrapper) throws RemoteException;

    void zzt(IObjectWrapper iObjectWrapper) throws RemoteException;

    IObjectWrapper zzuu() throws RemoteException;

    zzanr zzuv() throws RemoteException;

    zzans zzuw() throws RemoteException;

    Bundle zzux() throws RemoteException;

    Bundle zzuy() throws RemoteException;

    boolean zzuz() throws RemoteException;

    zzafn zzva() throws RemoteException;

    zzanx zzvb() throws RemoteException;

    zzapy zzvc() throws RemoteException;

    zzapy zzvd() throws RemoteException;
}
