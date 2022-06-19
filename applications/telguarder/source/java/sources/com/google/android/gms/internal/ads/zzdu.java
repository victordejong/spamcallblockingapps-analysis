package com.google.android.gms.internal.ads;

import java.io.File;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdu.class */
public final class zzdu implements zzduy {
    private final /* synthetic */ zzdsx zzwa;

    public zzdu(zzds zzdsVar, zzdsx zzdsxVar) {
        this.zzwa = zzdsxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzduy
    public final boolean zzb(File file) {
        try {
            return this.zzwa.zzb(file);
        } catch (GeneralSecurityException e) {
            return false;
        }
    }
}
