package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzca.class */
public final class zzca {
    /* JADX WARN: Finally extract failed */
    public static long zzb(zzcm zzcmVar) {
        zzbp zzbpVar = new zzbp();
        try {
            zzcmVar.writeTo(zzbpVar);
            zzbpVar.close();
            return zzbpVar.zzel;
        } catch (Throwable th) {
            zzbpVar.close();
            throw th;
        }
    }
}
