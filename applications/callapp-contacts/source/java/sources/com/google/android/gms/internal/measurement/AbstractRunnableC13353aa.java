package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.measurement.aa */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/aa.class */
public abstract class AbstractRunnableC13353aa implements Runnable {

    /* renamed from: h */
    final long f50574h;

    /* renamed from: i */
    final long f50575i;

    /* renamed from: j */
    final boolean f50576j;

    /* renamed from: k */
    final /* synthetic */ C13363ak f50577k;

    public AbstractRunnableC13353aa(C13363ak c13363ak, boolean z) {
        this.f50577k = c13363ak;
        this.f50574h = c13363ak.f50597a.mo19039a();
        this.f50575i = c13363ak.f50597a.mo19038b();
        this.f50576j = z;
    }

    /* renamed from: a */
    abstract void mo12290a() throws RemoteException;

    /* renamed from: b */
    protected void mo12291b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        z = this.f50577k.f50604i;
        if (z) {
            mo12291b();
            return;
        }
        try {
            mo12290a();
        } catch (Exception e) {
            this.f50577k.m13305a(e, false, this.f50576j);
            mo12291b();
        }
    }
}
