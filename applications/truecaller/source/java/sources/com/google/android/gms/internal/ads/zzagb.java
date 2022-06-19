package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagb.class */
public final class zzagb {
    private String zza;
    private Uri zzb;
    private final zzage zzc = new zzage(null);
    private final List zzd = Collections.emptyList();
    private final List zze = Collections.emptyList();

    public final zzagb zza(String str) {
        this.zza = str;
        return this;
    }

    public final zzagb zzb(Uri uri) {
        this.zzb = uri;
        return this;
    }

    public final zzagk zzc() {
        Uri uri = this.zzb;
        zzagj zzagjVar = uri != null ? new zzagj(uri, null, null, null, this.zzd, null, this.zze, null, null) : null;
        String str = this.zza;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return new zzagk(str2, new zzagd(0L, Long.MIN_VALUE, false, false, false, null), zzagjVar, new zzagh(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, -3.4028235E38f, -3.4028235E38f), zzago.zza, null);
    }
}
