package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabu.class */
public final class zzabu {
    public static void zza(zzabs zzabsVar, zzabt zzabtVar) {
        if (zzabtVar.getContext() != null) {
            if (TextUtils.isEmpty(zzabtVar.zzlw())) {
                throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
            }
            zzabsVar.zza(zzabtVar.getContext(), zzabtVar.zzlw(), zzabtVar.zzsj(), zzabtVar.zzsk());
            return;
        }
        throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
    }
}
