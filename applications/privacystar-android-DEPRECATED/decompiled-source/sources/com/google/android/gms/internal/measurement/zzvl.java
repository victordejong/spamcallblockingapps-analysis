package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzvl.class */
final class zzvl implements zzws {
    private static final zzvl zzbyl = new zzvl();

    private zzvl() {
    }

    public static zzvl zzwb() {
        return zzbyl;
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final boolean zze(Class<?> cls) {
        return zzvm.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.zzws
    public final zzwr zzf(Class<?> cls) {
        if (!zzvm.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (zzwr) zzvm.zzg(cls.asSubclass(zzvm.class)).zza(zzvm.zze.zzbyv, (Object) null, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
