package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcef.class */
public final class zzcef extends zzyr {

    /* renamed from: a */
    public final Object f25842a = new Object();

    /* renamed from: b */
    public zzyo f25843b;

    /* renamed from: c */
    public final zzanu f25844c;

    public zzcef(zzyo zzyoVar, zzanu zzanuVar) {
        this.f25843b = zzyoVar;
        this.f25844c = zzanuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: F0 */
    public final boolean mo11112F0() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: M1 */
    public final boolean mo11111M1() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: P */
    public final int mo11110P() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: S */
    public final void mo11109S() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: X */
    public final float mo11108X() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: Y0 */
    public final zzyt mo11107Y0() throws RemoteException {
        synchronized (this.f25842a) {
            if (this.f25843b == null) {
                return null;
            }
            return this.f25843b.mo11107Y0();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: a */
    public final void mo11106a(zzyt zzytVar) throws RemoteException {
        synchronized (this.f25842a) {
            if (this.f25843b != null) {
                this.f25843b.mo11106a(zzytVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final float getDuration() throws RemoteException {
        zzanu zzanuVar = this.f25844c;
        if (zzanuVar != null) {
            return zzanuVar.getVideoDuration();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: h */
    public final void mo11105h(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: i0 */
    public final float mo11104i0() throws RemoteException {
        zzanu zzanuVar = this.f25844c;
        if (zzanuVar != null) {
            return zzanuVar.mo16513N0();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final void stop() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    /* renamed from: x0 */
    public final boolean mo11103x0() throws RemoteException {
        throw new RemoteException();
    }
}
