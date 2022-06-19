package com.google.android.gms.internal.common;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/common/zzt.class */
public final class zzt extends zzw {
    public final /* synthetic */ zzu zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzt(zzu zzuVar, zzx zzxVar, CharSequence charSequence) {
        super(zzxVar, charSequence);
        this.zza = zzuVar;
    }

    @Override // com.google.android.gms.internal.common.zzw
    public final int zzc(int i) {
        return i + 1;
    }

    @Override // com.google.android.gms.internal.common.zzw
    public final int zzd(int i) {
        int i2;
        zzo zzoVar = this.zza.zza;
        CharSequence charSequence = ((zzw) this).zzb;
        int length = charSequence.length();
        zzs.zzb(i, length, "index");
        while (true) {
            if (i >= length) {
                i2 = -1;
                break;
            }
            i2 = i;
            if (zzoVar.zza(charSequence.charAt(i))) {
                break;
            }
            i++;
        }
        return i2;
    }
}
