package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjf.class */
public final class zzjf implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ boolean f9577f;

    /* renamed from: g */
    private final /* synthetic */ boolean f9578g;

    /* renamed from: h */
    private final /* synthetic */ zzar f9579h;

    /* renamed from: i */
    private final /* synthetic */ zzn f9580i;

    /* renamed from: j */
    private final /* synthetic */ String f9581j;

    /* renamed from: k */
    private final /* synthetic */ zzio f9582k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjf(zzio zzioVar, boolean z, boolean z2, zzar zzarVar, zzn zznVar, String str) {
        this.f9582k = zzioVar;
        this.f9577f = z;
        this.f9578g = z2;
        this.f9579h = zzarVar;
        this.f9580i = zznVar;
        this.f9581j = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        zzejVar = this.f9582k.f9521d;
        if (zzejVar == null) {
            this.f9582k.mo11081c().m11560D().m11540a("Discarding data. Failed to send event to service");
            return;
        }
        if (this.f9577f) {
            this.f9582k.m11199K(zzejVar, this.f9578g ? null : this.f9579h, this.f9580i);
        } else {
            try {
                if (TextUtils.isEmpty(this.f9581j)) {
                    zzejVar.mo11323t0(this.f9579h, this.f9580i);
                } else {
                    zzejVar.mo11342K0(this.f9579h, this.f9581j, this.f9582k.mo11081c().m11551M());
                }
            } catch (RemoteException e) {
                this.f9582k.mo11081c().m11560D().m11539b("Failed to send event to the service", e);
            }
        }
        this.f9582k.m11179e0();
    }
}
