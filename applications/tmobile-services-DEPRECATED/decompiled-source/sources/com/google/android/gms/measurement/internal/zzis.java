package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzis.class */
public final class zzis implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AtomicReference f9535f;

    /* renamed from: g */
    private final /* synthetic */ zzn f9536g;

    /* renamed from: h */
    private final /* synthetic */ boolean f9537h;

    /* renamed from: i */
    private final /* synthetic */ zzio f9538i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzis(zzio zzioVar, AtomicReference atomicReference, zzn zznVar, boolean z) {
        this.f9538i = zzioVar;
        this.f9535f = atomicReference;
        this.f9536g = zznVar;
        this.f9537h = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        synchronized (this.f9535f) {
            try {
                zzejVar = this.f9538i.f9521d;
            } catch (RemoteException e) {
                this.f9538i.mo11081c().m11560D().m11539b("Failed to get all user properties; remote exception", e);
                this.f9535f.notify();
            }
            if (zzejVar == null) {
                this.f9538i.mo11081c().m11560D().m11540a("Failed to get all user properties; not connected to service");
                this.f9535f.notify();
                return;
            }
            this.f9535f.set(zzejVar.mo11331d0(this.f9536g, this.f9537h));
            this.f9538i.m11179e0();
            this.f9535f.notify();
        }
    }
}
