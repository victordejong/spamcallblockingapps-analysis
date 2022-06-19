package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhr.class */
public final class zzhr {
    public final Uri zzb;
    public final String zza = null;
    public final String zzc = "";
    public final String zzd = "";
    public final boolean zze = false;
    public final boolean zzf = false;
    public final boolean zzg = false;
    public final boolean zzh = false;
    @Nullable
    public final zzhy<Context, Boolean> zzi = null;

    public zzhr(Uri uri) {
        this.zzb = uri;
    }

    public final zzht<Long> zza(String str, long j) {
        return new zzhn(this, str, Long.valueOf(j), true);
    }

    public final zzht<Boolean> zzb(String str, boolean z) {
        return new zzho(this, str, Boolean.valueOf(z), true);
    }

    public final zzht<Double> zzc(String str, double d) {
        return new zzhp(this, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
    }

    public final zzht<String> zzd(String str, String str2) {
        return new zzhq(this, str, str2, true);
    }
}
