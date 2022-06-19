package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxl.class */
public interface zzxl extends IInterface {
    void destroy() throws RemoteException;

    Bundle getAdMetadata() throws RemoteException;

    String getAdUnitId() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    zzzc getVideoController() throws RemoteException;

    boolean isLoading() throws RemoteException;

    boolean isReady() throws RemoteException;

    void pause() throws RemoteException;

    void resume() throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void setManualImpressionsEnabled(boolean z) throws RemoteException;

    void setUserId(String str) throws RemoteException;

    void showInterstitial() throws RemoteException;

    void stopLoading() throws RemoteException;

    void zza(zzaau zzaauVar) throws RemoteException;

    void zza(zzacl zzaclVar) throws RemoteException;

    void zza(zzary zzaryVar) throws RemoteException;

    void zza(zzase zzaseVar, String str) throws RemoteException;

    void zza(zzauu zzauuVar) throws RemoteException;

    void zza(zzsp zzspVar) throws RemoteException;

    void zza(zzvl zzvlVar, zzxc zzxcVar) throws RemoteException;

    void zza(zzvs zzvsVar) throws RemoteException;

    void zza(zzvx zzvxVar) throws RemoteException;

    void zza(zzww zzwwVar) throws RemoteException;

    void zza(zzwx zzwxVar) throws RemoteException;

    void zza(zzxs zzxsVar) throws RemoteException;

    void zza(zzxt zzxtVar) throws RemoteException;

    void zza(zzxz zzxzVar) throws RemoteException;

    void zza(zzyb zzybVar) throws RemoteException;

    void zza(zzyw zzywVar) throws RemoteException;

    void zza(zzzi zzziVar) throws RemoteException;

    boolean zza(zzvl zzvlVar) throws RemoteException;

    void zzbl(String str) throws RemoteException;

    void zze(IObjectWrapper iObjectWrapper) throws RemoteException;

    IObjectWrapper zzke() throws RemoteException;

    void zzkf() throws RemoteException;

    zzvs zzkg() throws RemoteException;

    String zzkh() throws RemoteException;

    zzyx zzki() throws RemoteException;

    zzxt zzkj() throws RemoteException;

    zzwx zzkk() throws RemoteException;
}
