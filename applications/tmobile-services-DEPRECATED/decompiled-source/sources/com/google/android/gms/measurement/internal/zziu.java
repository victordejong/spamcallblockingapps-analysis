package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzmj;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziu.class */
public final class zziu implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AtomicReference f9543f;

    /* renamed from: g */
    private final /* synthetic */ zzn f9544g;

    /* renamed from: h */
    private final /* synthetic */ zzio f9545h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zziu(zzio zzioVar, AtomicReference atomicReference, zzn zznVar) {
        this.f9545h = zzioVar;
        this.f9543f = atomicReference;
        this.f9544g = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        synchronized (this.f9543f) {
            try {
            } catch (RemoteException e) {
                this.f9545h.mo11081c().m11560D().m11539b("Failed to get app instance id", e);
                this.f9543f.notify();
            }
            if (!zzmj.m11898a() || !this.f9545h.m11311l().m10880r(zzat.f8902H0) || this.f9545h.m11312k().m11453J().m11721q()) {
                zzejVar = this.f9545h.f9521d;
                if (zzejVar == null) {
                    this.f9545h.mo11081c().m11560D().m11540a("Failed to get app instance id");
                    this.f9543f.notify();
                    return;
                }
                this.f9543f.set(zzejVar.mo11343I(this.f9544g));
                String str = (String) this.f9543f.get();
                if (str != null) {
                    this.f9545h.m11600o().m11277T(str);
                    this.f9545h.m11312k().f9193l.m11427b(str);
                }
                this.f9545h.m11179e0();
                this.f9543f.notify();
                return;
            }
            this.f9545h.mo11081c().m11555I().m11540a("Analytics storage consent denied; will not get app instance id");
            this.f9545h.m11600o().m11277T(null);
            this.f9545h.m11312k().f9193l.m11427b(null);
            this.f9543f.set(null);
            this.f9543f.notify();
        }
    }
}
