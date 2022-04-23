package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzw;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzja.class */
public final class zzja implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzar f9562f;

    /* renamed from: g */
    private final /* synthetic */ String f9563g;

    /* renamed from: h */
    private final /* synthetic */ zzw f9564h;

    /* renamed from: i */
    private final /* synthetic */ zzio f9565i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzja(zzio zzioVar, zzar zzarVar, String str, zzw zzwVar) {
        this.f9565i = zzioVar;
        this.f9562f = zzarVar;
        this.f9563g = str;
        this.f9564h = zzwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        byte[] bArr = null;
        bArr = null;
        try {
            zzejVar = this.f9565i.f9521d;
            if (zzejVar == null) {
                this.f9565i.mo11081c().m11560D().m11540a("Discarding data. Failed to send event to service to bundle");
                this.f9565i.m11313j().m10973S(this.f9564h, null);
                return;
            }
            bArr = zzejVar.mo11324s0(this.f9562f, this.f9563g);
            this.f9565i.m11179e0();
        } catch (RemoteException e) {
            this.f9565i.mo11081c().m11560D().m11539b("Failed to send event to the service to bundle", e);
        } finally {
            this.f9565i.m11313j().m10973S(this.f9564h, bArr);
        }
    }
}
