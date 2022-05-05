package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjj.class */
public final class zzjj implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AtomicReference f9597f;

    /* renamed from: g */
    private final /* synthetic */ String f9598g;

    /* renamed from: h */
    private final /* synthetic */ String f9599h;

    /* renamed from: i */
    private final /* synthetic */ String f9600i;

    /* renamed from: j */
    private final /* synthetic */ boolean f9601j;

    /* renamed from: k */
    private final /* synthetic */ zzn f9602k;

    /* renamed from: l */
    private final /* synthetic */ zzio f9603l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjj(zzio zzioVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z, zzn zznVar) {
        this.f9603l = zzioVar;
        this.f9597f = atomicReference;
        this.f9598g = str;
        this.f9599h = str2;
        this.f9600i = str3;
        this.f9601j = z;
        this.f9602k = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        synchronized (this.f9597f) {
            try {
                zzejVar = this.f9603l.f9521d;
            } catch (RemoteException e) {
                this.f9603l.mo11081c().m11560D().m11537d("(legacy) Failed to get user properties; remote exception", zzer.m11546v(this.f9598g), this.f9599h, e);
                this.f9597f.set(Collections.emptyList());
                this.f9597f.notify();
            }
            if (zzejVar == null) {
                this.f9603l.mo11081c().m11560D().m11537d("(legacy) Failed to get user properties; not connected to service", zzer.m11546v(this.f9598g), this.f9599h, this.f9600i);
                this.f9597f.set(Collections.emptyList());
                this.f9597f.notify();
                return;
            }
            if (TextUtils.isEmpty(this.f9598g)) {
                this.f9597f.set(zzejVar.mo11332c0(this.f9599h, this.f9600i, this.f9601j, this.f9602k));
            } else {
                this.f9597f.set(zzejVar.mo11345C(this.f9598g, this.f9599h, this.f9600i, this.f9601j));
            }
            this.f9603l.m11179e0();
            this.f9597f.notify();
        }
    }
}
