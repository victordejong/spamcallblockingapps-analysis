package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaq.class */
public final class zzaq implements Runnable {
    private final /* synthetic */ zzal zzvs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaq(zzal zzalVar) {
        this.zzvs = zzalVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbi zzbiVar;
        zzbiVar = this.zzvs.zzvq;
        zzbiVar.zzbr();
    }
}
