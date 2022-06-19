package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxn.class */
public final class zzxn extends zzgkl implements Closeable {
    private static final zzgks zza = zzgks.zzb(zzxn.class);

    public zzxn(zzgkm zzgkmVar, zzxm zzxmVar) throws IOException {
        zze(zzgkmVar, zzgkmVar.zzb(), zzxmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgkl, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzgkl
    public final String toString() {
        String obj = this.zzd.toString();
        return C22128a.m8610j(new StringBuilder(String.valueOf(obj).length() + 7), "model(", obj, ")");
    }
}
