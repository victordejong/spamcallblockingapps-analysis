package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbl.class */
public final class zzbl implements Runnable {
    private final /* synthetic */ zzbi zzxv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbl(zzbi zzbiVar) {
        this.zzxv = zzbiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzxv.zzdg();
    }
}
