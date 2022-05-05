package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzam.class */
public final class zzam implements Runnable {
    private final /* synthetic */ int zzvr;
    private final /* synthetic */ zzal zzvs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzam(zzal zzalVar, int i) {
        this.zzvs = zzalVar;
        this.zzvr = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbi zzbiVar;
        zzbiVar = this.zzvs.zzvq;
        zzbiVar.zzg(this.zzvr * 1000);
    }
}
