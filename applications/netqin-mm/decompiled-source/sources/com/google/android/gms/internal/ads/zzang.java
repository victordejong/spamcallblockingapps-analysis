package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzang.class */
public interface zzang extends IInterface {
    /* renamed from: C0 */
    zzafa mo16560C0() throws RemoteException;

    /* renamed from: F1 */
    IObjectWrapper mo16559F1() throws RemoteException;

    /* renamed from: K */
    void mo16558K(IObjectWrapper iObjectWrapper) throws RemoteException;

    /* renamed from: R0 */
    boolean mo16557R0() throws RemoteException;

    /* renamed from: V */
    zzapv mo16556V() throws RemoteException;

    /* renamed from: a */
    void mo16555a(IObjectWrapper iObjectWrapper, zzais zzaisVar, List<zzaja> list) throws RemoteException;

    /* renamed from: a */
    void mo16554a(IObjectWrapper iObjectWrapper, zzaur zzaurVar, List<String> list) throws RemoteException;

    /* renamed from: a */
    void mo16553a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException;

    /* renamed from: a */
    void mo16552a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzaur zzaurVar, String str2) throws RemoteException;

    /* renamed from: a */
    void mo16551a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, String str2, zzanh zzanhVar) throws RemoteException;

    /* renamed from: a */
    void mo16550a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, String str2, zzanh zzanhVar, zzadu zzaduVar, List<String> list) throws RemoteException;

    /* renamed from: a */
    void mo16549a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException;

    /* renamed from: a */
    void mo16548a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, zzvg zzvgVar, String str, String str2, zzanh zzanhVar) throws RemoteException;

    /* renamed from: a */
    void mo16547a(zzvg zzvgVar, String str) throws RemoteException;

    /* renamed from: a */
    void mo16546a(zzvg zzvgVar, String str, String str2) throws RemoteException;

    /* renamed from: a */
    void mo16545a(boolean z) throws RemoteException;

    /* renamed from: b */
    void mo16544b(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException;

    /* renamed from: c */
    void mo16543c(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException;

    /* renamed from: c2 */
    zzanu mo16541c2() throws RemoteException;

    /* renamed from: d0 */
    zzapv mo16540d0() throws RemoteException;

    void destroy() throws RemoteException;

    Bundle getInterstitialAdapterInfo() throws RemoteException;

    zzyo getVideoController() throws RemoteException;

    /* renamed from: h1 */
    Bundle mo16539h1() throws RemoteException;

    /* renamed from: i1 */
    zzanp mo16538i1() throws RemoteException;

    boolean isInitialized() throws RemoteException;

    void pause() throws RemoteException;

    /* renamed from: q1 */
    zzano mo16537q1() throws RemoteException;

    void resume() throws RemoteException;

    void showInterstitial() throws RemoteException;

    void showVideo() throws RemoteException;

    /* renamed from: x */
    void mo16536x(IObjectWrapper iObjectWrapper) throws RemoteException;

    Bundle zztv() throws RemoteException;
}
