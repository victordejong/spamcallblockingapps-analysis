package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfqi.class */
final class zzfqi extends zzfqn {
    public final /* synthetic */ zzfqj zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfqi(zzfqj zzfqjVar, zzfqp zzfqpVar, CharSequence charSequence) {
        super(zzfqpVar, charSequence);
        this.zza = zzfqjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfqn
    public final int zzc(int i) {
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfqn
    public final int zzd(int i) {
        int i2;
        zzfps zzfpsVar = this.zza.zza;
        CharSequence charSequence = ((zzfqn) this).zzb;
        int length = charSequence.length();
        zzfqg.zzb(i, length, "index");
        while (true) {
            if (i >= length) {
                i2 = -1;
                break;
            }
            i2 = i;
            if (zzfpsVar.zza(charSequence.charAt(i))) {
                break;
            }
            i++;
        }
        return i2;
    }
}
