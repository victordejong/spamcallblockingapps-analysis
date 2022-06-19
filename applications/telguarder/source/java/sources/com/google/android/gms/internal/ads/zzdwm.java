package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwm.class */
final class zzdwm extends zzdwo {
    private final /* synthetic */ zzdwn zzhwc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdwm(zzdwn zzdwnVar, zzdwk zzdwkVar, CharSequence charSequence) {
        super(zzdwkVar, charSequence);
        this.zzhwc = zzdwnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    final int zzen(int i) {
        return this.zzhwc.zzhwd.zza(this.zzhwe, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    final int zzeo(int i) {
        return i + 1;
    }
}
