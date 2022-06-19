package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqk.class */
final class zzfqk extends zzfqn {
    public final /* synthetic */ zzfql zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfqk(zzfql zzfqlVar, zzfqp zzfqpVar, CharSequence charSequence) {
        super(zzfqpVar, charSequence);
        this.zza = zzfqlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfqn
    public final int zzc(int i) {
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzfqn
    public final int zzd(int i) {
        int i2 = i + 4000;
        if (i2 < ((zzfqn) this).zzb.length()) {
            return i2;
        }
        return -1;
    }
}
