package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzar.class */
public final class zzar implements Runnable {
    private final /* synthetic */ zzal zzvs;
    private final /* synthetic */ zzcd zzvx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzar(zzal zzalVar, zzcd zzcdVar) {
        this.zzvs = zzalVar;
        this.zzvx = zzcdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbi zzbiVar;
        zzbiVar = this.zzvs.zzvq;
        zzbiVar.zzb(this.zzvx);
    }
}
