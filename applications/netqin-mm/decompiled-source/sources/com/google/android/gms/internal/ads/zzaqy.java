package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqy.class */
public interface zzaqy extends IInterface {
    /* renamed from: G */
    void mo16407G(IObjectWrapper iObjectWrapper) throws RemoteException;

    /* renamed from: N1 */
    void mo16406N1() throws RemoteException;

    /* renamed from: W1 */
    boolean mo16405W1() throws RemoteException;

    /* renamed from: a */
    void mo16404a(int i, int i2, Intent intent) throws RemoteException;

    /* renamed from: l0 */
    void mo16403l0() throws RemoteException;

    void onBackPressed() throws RemoteException;

    void onCreate(Bundle bundle) throws RemoteException;

    void onDestroy() throws RemoteException;

    void onPause() throws RemoteException;

    void onResume() throws RemoteException;

    void onSaveInstanceState(Bundle bundle) throws RemoteException;

    void onStart() throws RemoteException;

    /* renamed from: w0 */
    void mo16402w0() throws RemoteException;
}
