package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjh.class */
public final class zzjh implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AtomicReference f9588f;

    /* renamed from: g */
    private final /* synthetic */ String f9589g;

    /* renamed from: h */
    private final /* synthetic */ String f9590h;

    /* renamed from: i */
    private final /* synthetic */ String f9591i;

    /* renamed from: j */
    private final /* synthetic */ zzn f9592j;

    /* renamed from: k */
    private final /* synthetic */ zzio f9593k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjh(zzio zzioVar, AtomicReference atomicReference, String str, String str2, String str3, zzn zznVar) {
        this.f9593k = zzioVar;
        this.f9588f = atomicReference;
        this.f9589g = str;
        this.f9590h = str2;
        this.f9591i = str3;
        this.f9592j = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        synchronized (this.f9588f) {
            try {
                zzejVar = this.f9593k.f9521d;
            } catch (RemoteException e) {
                this.f9593k.mo11081c().m11560D().m11537d("(legacy) Failed to get conditional properties; remote exception", zzer.m11546v(this.f9589g), this.f9590h, e);
                this.f9588f.set(Collections.emptyList());
                this.f9588f.notify();
            }
            if (zzejVar == null) {
                this.f9593k.mo11081c().m11560D().m11537d("(legacy) Failed to get conditional properties; not connected to service", zzer.m11546v(this.f9589g), this.f9590h, this.f9591i);
                this.f9588f.set(Collections.emptyList());
                this.f9588f.notify();
                return;
            }
            if (TextUtils.isEmpty(this.f9589g)) {
                this.f9588f.set(zzejVar.mo11335V(this.f9590h, this.f9591i, this.f9592j));
            } else {
                this.f9588f.set(zzejVar.mo11336U(this.f9589g, this.f9590h, this.f9591i));
            }
            this.f9593k.m11179e0();
            this.f9588f.notify();
        }
    }
}
