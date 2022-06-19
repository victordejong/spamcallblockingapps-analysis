package com.google.android.gms.internal.play_billing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzs.class */
public final class zzs extends zzo {
    private final zzu zza;

    public zzs(zzu zzuVar, int i) {
        super(zzuVar.size(), i);
        this.zza = zzuVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzo
    public final Object zza(int i) {
        return this.zza.get(i);
    }
}
