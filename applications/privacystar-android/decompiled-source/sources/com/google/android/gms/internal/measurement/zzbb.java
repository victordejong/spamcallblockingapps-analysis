package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbb.class */
public final class zzbb extends zzbz {
    private final /* synthetic */ zzba zzxa;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbb(zzba zzbaVar, zzaw zzawVar) {
        super(zzawVar);
        this.zzxa = zzbaVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzbz
    public final void run() {
        this.zzxa.zzcz();
    }
}
