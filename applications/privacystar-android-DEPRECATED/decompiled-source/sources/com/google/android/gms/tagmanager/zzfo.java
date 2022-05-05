package com.google.android.gms.tagmanager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfo.class */
public final class zzfo implements zzcc {
    private final /* synthetic */ zzfn zzbfz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfo(zzfn zzfnVar) {
        this.zzbfz = zzfnVar;
    }

    @Override // com.google.android.gms.tagmanager.zzcc
    public final void zzq(boolean z) {
        boolean z2;
        zzfn zzfnVar = this.zzbfz;
        z2 = this.zzbfz.connected;
        zzfnVar.zza(z, z2);
    }
}
