package com.google.android.gms.internal.ads;

import java.io.File;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalk.class */
public final class zzalk implements zzfoc {
    public final /* synthetic */ zzfmc zza;

    public zzalk(zzalm zzalmVar, zzfmc zzfmcVar) {
        this.zza = zzfmcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfoc
    public final boolean zza(File file) {
        try {
            return this.zza.zza(file);
        } catch (GeneralSecurityException e) {
            return false;
        }
    }
}
