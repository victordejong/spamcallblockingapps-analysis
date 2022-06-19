package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagr.class */
public interface zzagr extends IInterface {
    void cancelUnconfirmedClick() throws RemoteException;

    void destroy() throws RemoteException;

    String getAdvertiser() throws RemoteException;

    String getBody() throws RemoteException;

    String getCallToAction() throws RemoteException;

    Bundle getExtras() throws RemoteException;

    String getHeadline() throws RemoteException;

    List getImages() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    List getMuteThisAdReasons() throws RemoteException;

    String getPrice() throws RemoteException;

    double getStarRating() throws RemoteException;

    String getStore() throws RemoteException;

    zzzc getVideoController() throws RemoteException;

    boolean isCustomClickGestureEnabled() throws RemoteException;

    boolean isCustomMuteThisAdEnabled() throws RemoteException;

    void performClick(Bundle bundle) throws RemoteException;

    void recordCustomClickGesture() throws RemoteException;

    boolean recordImpression(Bundle bundle) throws RemoteException;

    void reportTouchEvent(Bundle bundle) throws RemoteException;

    void zza(zzagm zzagmVar) throws RemoteException;

    void zza(zzyj zzyjVar) throws RemoteException;

    void zza(zzyn zzynVar) throws RemoteException;

    void zza(zzyw zzywVar) throws RemoteException;

    zzyx zzki() throws RemoteException;

    IObjectWrapper zztm() throws RemoteException;

    zzaer zztn() throws RemoteException;

    zzaej zzto() throws RemoteException;

    IObjectWrapper zztp() throws RemoteException;

    void zztx() throws RemoteException;

    zzaem zzty() throws RemoteException;
}
