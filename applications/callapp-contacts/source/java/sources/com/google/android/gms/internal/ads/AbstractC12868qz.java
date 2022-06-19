package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.qz */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qz.class */
public interface AbstractC12868qz extends IInterface {
    void onActivityResult(int i, int i2, Intent intent) throws RemoteException;

    void onBackPressed() throws RemoteException;

    void onCreate(Bundle bundle) throws RemoteException;

    void onDestroy() throws RemoteException;

    void onPause() throws RemoteException;

    void onRestart() throws RemoteException;

    void onResume() throws RemoteException;

    void onSaveInstanceState(Bundle bundle) throws RemoteException;

    void onStart() throws RemoteException;

    void onStop() throws RemoteException;

    void onUserLeaveHint() throws RemoteException;

    void zzae(AbstractC12126b abstractC12126b) throws RemoteException;

    void zzdq() throws RemoteException;

    boolean zzwh() throws RemoteException;
}
