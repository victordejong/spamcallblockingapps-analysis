package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzje.class */
public final class zzje implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ boolean f9571f = true;

    /* renamed from: g */
    private final /* synthetic */ boolean f9572g;

    /* renamed from: h */
    private final /* synthetic */ zzw f9573h;

    /* renamed from: i */
    private final /* synthetic */ zzn f9574i;

    /* renamed from: j */
    private final /* synthetic */ zzw f9575j;

    /* renamed from: k */
    private final /* synthetic */ zzio f9576k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzje(zzio zzioVar, boolean z, boolean z2, zzw zzwVar, zzn zznVar, zzw zzwVar2) {
        this.f9576k = zzioVar;
        this.f9572g = z2;
        this.f9573h = zzwVar;
        this.f9574i = zznVar;
        this.f9575j = zzwVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        zzejVar = this.f9576k.f9521d;
        if (zzejVar == null) {
            this.f9576k.mo11081c().m11560D().m11540a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.f9571f) {
            this.f9576k.m11199K(zzejVar, this.f9572g ? null : this.f9573h, this.f9574i);
        } else {
            try {
                if (TextUtils.isEmpty(this.f9575j.f9776f)) {
                    zzejVar.mo11328i(this.f9573h, this.f9574i);
                } else {
                    zzejVar.mo11326m0(this.f9573h);
                }
            } catch (RemoteException e) {
                this.f9576k.mo11081c().m11560D().m11539b("Failed to send conditional user property to the service", e);
            }
        }
        this.f9576k.m11179e0();
    }
}
