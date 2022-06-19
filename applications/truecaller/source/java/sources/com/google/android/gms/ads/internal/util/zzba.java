package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzbrk;
import com.google.android.gms.internal.ads.zzcgm;
import com.google.android.gms.internal.ads.zzvy;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzwf;
import com.google.android.gms.internal.ads.zzwl;
import com.google.android.gms.internal.ads.zzwq;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzwy;
import com.google.android.gms.internal.ads.zzxd;
import java.io.File;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzba.class */
public final class zzba extends zzwr {
    private final Context zzc;

    private zzba(Context context, zzwq zzwqVar) {
        super(zzwqVar);
        this.zzc = context;
    }

    public static zzwf zzb(Context context) {
        zzwf zzwfVar = new zzwf(new zzwy(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzba(context, new zzxd(null, null)), 4);
        zzwfVar.zza();
        return zzwfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwr, com.google.android.gms.internal.ads.zzvv
    public final zzvy zza(zzwc<?> zzwcVar) throws zzwl {
        if (zzwcVar.zzb() == 0) {
            if (Pattern.matches((String) zzbet.zzc().zzc(zzbjl.zzcR), zzwcVar.zzi())) {
                zzber.zza();
                if (zzcgm.zzn(this.zzc, 13400000)) {
                    zzvy zza = new zzbrk(this.zzc).zza(zzwcVar);
                    if (zza != null) {
                        String valueOf = String.valueOf(zzwcVar.zzi());
                        zze.zza(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        return zza;
                    }
                    String valueOf2 = String.valueOf(zzwcVar.zzi());
                    zze.zza(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.zza(zzwcVar);
    }
}
