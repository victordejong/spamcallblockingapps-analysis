package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblp.class */
public final class zzblp {
    public static final void zza(zzblo zzbloVar, zzblm zzblmVar) {
        if (zzblmVar.zza() != null) {
            if (TextUtils.isEmpty(zzblmVar.zzb())) {
                throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
            }
            zzbloVar.zzd(zzblmVar.zza(), zzblmVar.zzb(), zzblmVar.zzc(), zzblmVar.zzd());
            return;
        }
        throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
    }
}
