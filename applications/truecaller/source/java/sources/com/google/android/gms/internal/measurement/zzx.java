package com.google.android.gms.internal.measurement;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzx.class */
public final class zzx extends zzai {
    public zzx(zzy zzyVar, String str) {
        super("getVersion");
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzap zza(zzg zzgVar, List list) {
        return new zzah(Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE));
    }
}
