package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekw.class */
public interface ekw extends IInterface {
    void destroy() throws RemoteException;

    Bundle getAdMetadata() throws RemoteException;

    String getAdUnitId() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    emk getVideoController() throws RemoteException;

    boolean isLoading() throws RemoteException;

    boolean isReady() throws RemoteException;

    void pause() throws RemoteException;

    void resume() throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void setManualImpressionsEnabled(boolean z) throws RemoteException;

    void setUserId(String str) throws RemoteException;

    void showInterstitial() throws RemoteException;

    void stopLoading() throws RemoteException;

    void zza(AbstractC12246bn abstractC12246bn) throws RemoteException;

    void zza(egc egcVar) throws RemoteException;

    void zza(ekc ekcVar) throws RemoteException;

    void zza(eki ekiVar) throws RemoteException;

    void zza(ekz ekzVar) throws RemoteException;

    void zza(ele eleVar) throws RemoteException;

    void zza(elk elkVar) throws RemoteException;

    void zza(elm elmVar) throws RemoteException;

    void zza(emd emdVar) throws RemoteException;

    void zza(AbstractC12878ri abstractC12878ri) throws RemoteException;

    void zza(AbstractC12883rn abstractC12883rn, String str) throws RemoteException;

    void zza(AbstractC12949tz abstractC12949tz) throws RemoteException;

    void zza(zzaaz zzaazVar) throws RemoteException;

    void zza(zzvq zzvqVar, ekj ekjVar) throws RemoteException;

    void zza(zzvt zzvtVar) throws RemoteException;

    void zza(zzwc zzwcVar) throws RemoteException;

    void zza(zzzj zzzjVar) throws RemoteException;

    boolean zza(zzvq zzvqVar) throws RemoteException;

    void zzbl(String str) throws RemoteException;

    void zze(AbstractC12126b abstractC12126b) throws RemoteException;

    AbstractC12126b zzki() throws RemoteException;

    void zzkj() throws RemoteException;

    zzvt zzkk() throws RemoteException;

    String zzkl() throws RemoteException;

    emj zzkm() throws RemoteException;

    ele zzkn() throws RemoteException;

    eki zzko() throws RemoteException;
}
