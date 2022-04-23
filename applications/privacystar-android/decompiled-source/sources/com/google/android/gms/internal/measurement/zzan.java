package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzan.class */
final class zzan implements Runnable {
    private final /* synthetic */ zzal zzvs;
    private final /* synthetic */ boolean zzvt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzan(zzal zzalVar, boolean z) {
        this.zzvs = zzalVar;
        this.zzvt = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbi zzbiVar;
        zzbiVar = this.zzvs.zzvq;
        zzbiVar.zzdm();
    }
}
