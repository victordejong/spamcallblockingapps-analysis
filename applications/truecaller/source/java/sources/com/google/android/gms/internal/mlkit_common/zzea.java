package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.internal.mlkit_common.zzav;
import e.m.h.a.d.k;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzea.class */
public final class zzea {
    public static zzav.zzal.zzb zza(k kVar) {
        int i = zzec.zza[kVar.ordinal()];
        return i != 1 ? i != 2 ? zzav.zzal.zzb.TYPE_UNKNOWN : zzav.zzal.zzb.AUTOML_IMAGE_LABELING : zzav.zzal.zzb.BASE_TRANSLATE;
    }
}
