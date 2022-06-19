package com.google.android.gms.internal.mlkit_translate;

import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzff.class */
public final class zzff extends zzea<URI> {
    private static URI zzb(zzfy zzfyVar) throws IOException {
        if (zzfyVar.zzg() == zzga.NULL) {
            zzfyVar.zzk();
            return null;
        }
        try {
            String zzi = zzfyVar.zzi();
            if (!AnalyticsConstants.NULL.equals(zzi)) {
                return new URI(zzi);
            }
            return null;
        } catch (URISyntaxException e) {
            throw new zzdv(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ URI zza(zzfy zzfyVar) throws IOException {
        return zzb(zzfyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ void zza(zzgd zzgdVar, URI uri) throws IOException {
        URI uri2 = uri;
        zzgdVar.zzb(uri2 == null ? null : uri2.toASCIIString());
    }
}
