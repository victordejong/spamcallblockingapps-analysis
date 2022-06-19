package com.google.android.gms.internal.ads;

import java.io.File;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaaj.class */
public final class zzaaj implements zzfkd {
    public final /* synthetic */ zzfie zza;

    public zzaaj(zzaal zzaalVar, zzfie zzfieVar) {
        this.zza = zzfieVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfkd
    public final boolean zza(File file) {
        try {
            return this.zza.zza(file);
        } catch (GeneralSecurityException e) {
            return false;
        }
    }
}
