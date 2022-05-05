package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzck;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzcj.class */
final class zzcj implements zzdq {
    private static final zzcj zzhl = new zzcj();

    private zzcj() {
    }

    public static zzcj zzau() {
        return zzhl;
    }

    @Override // com.google.android.gms.internal.icing.zzdq
    public final boolean zza(Class<?> cls) {
        return zzck.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.icing.zzdq
    public final zzdp zzb(Class<?> cls) {
        if (!zzck.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (zzdp) zzck.zzc(cls.asSubclass(zzck.class)).zza(zzck.zzd.zzhv, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
