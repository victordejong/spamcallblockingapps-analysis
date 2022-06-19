package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzggz.class */
public final class zzggz implements zzghg {
    private final zzghg[] zza;

    public zzggz(zzghg... zzghgVarArr) {
        this.zza = zzghgVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzghg
    public final boolean zzb(Class<?> cls) {
        zzghg[] zzghgVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzghgVarArr[i].zzb(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzghg
    public final zzghf zzc(Class<?> cls) {
        zzghg[] zzghgVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzghg zzghgVar = zzghgVarArr[i];
            if (zzghgVar.zzb(cls)) {
                return zzghgVar.zzc(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}
