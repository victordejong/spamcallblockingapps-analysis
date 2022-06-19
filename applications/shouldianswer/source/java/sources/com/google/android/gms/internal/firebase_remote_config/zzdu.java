package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzdu.class */
final class zzdu extends zzdx {
    private final /* synthetic */ zzdv zzhj;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdu(zzdv zzdvVar, zzds zzdsVar, CharSequence charSequence) {
        super(zzdsVar, charSequence);
        this.zzhj = zzdvVar;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzdx
    final int zzk(int i) {
        return this.zzhj.zzhk.zza(this.zzhl, i);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzdx
    final int zzl(int i) {
        return i + 1;
    }
}
