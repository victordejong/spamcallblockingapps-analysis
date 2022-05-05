package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzw;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziq.class */
public final class zziq implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ String f9528f;

    /* renamed from: g */
    private final /* synthetic */ String f9529g;

    /* renamed from: h */
    private final /* synthetic */ boolean f9530h;

    /* renamed from: i */
    private final /* synthetic */ zzn f9531i;

    /* renamed from: j */
    private final /* synthetic */ zzw f9532j;

    /* renamed from: k */
    private final /* synthetic */ zzio f9533k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zziq(zzio zzioVar, String str, String str2, boolean z, zzn zznVar, zzw zzwVar) {
        this.f9533k = zzioVar;
        this.f9528f = str;
        this.f9529g = str2;
        this.f9530h = z;
        this.f9531i = zznVar;
        this.f9532j = zzwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzej zzejVar;
        Bundle bundle = new Bundle();
        try {
            zzejVar = this.f9533k.f9521d;
            if (zzejVar == null) {
                this.f9533k.mo11081c().m11560D().m11538c("Failed to get user properties; not connected to service", this.f9528f, this.f9529g);
                return;
            }
            bundle = zzkw.m10999C(zzejVar.mo11332c0(this.f9528f, this.f9529g, this.f9530h, this.f9531i));
            this.f9533k.m11179e0();
        } catch (RemoteException e) {
            this.f9533k.mo11081c().m11560D().m11538c("Failed to get user properties; remote exception", this.f9528f, e);
        } finally {
            this.f9533k.m11313j().m10977O(this.f9532j, bundle);
        }
    }
}
