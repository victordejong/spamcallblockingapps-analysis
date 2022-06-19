package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzago;
import com.google.android.gms.internal.ads.zzags;
import com.google.android.gms.internal.ads.zzagv;
import com.google.android.gms.internal.ads.zzahb;
import com.google.android.gms.internal.ads.zzahg;
import com.google.android.gms.internal.ads.zzahh;
import com.google.android.gms.internal.ads.zzaho;
import com.google.android.gms.internal.ads.zzaht;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzbtm;
import com.google.android.gms.internal.ads.zzcis;
import java.io.File;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbb.class */
public final class zzbb extends zzahh {
    private final Context zzc;

    private zzbb(Context context, zzahg zzahgVar) {
        super(zzahgVar);
        this.zzc = context;
    }

    public static zzagv zzb(Context context) {
        zzagv zzagvVar = new zzagv(new zzaho(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzbb(context, new zzaht(null, null)), 4);
        zzagvVar.zzd();
        return zzagvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahh, com.google.android.gms.internal.ads.zzagl
    public final zzago zza(zzags<?> zzagsVar) throws zzahb {
        if (zzagsVar.zza() == 0) {
            if (Pattern.matches((String) zzbgq.zzc().zzb(zzblj.zzcY), zzagsVar.zzk())) {
                zzbgo.zzb();
                if (zzcis.zzn(this.zzc, 13400000)) {
                    zzago zza = new zzbtm(this.zzc).zza(zzagsVar);
                    if (zza != null) {
                        String valueOf = String.valueOf(zzagsVar.zzk());
                        zze.zza(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        return zza;
                    }
                    String valueOf2 = String.valueOf(zzagsVar.zzk());
                    zze.zza(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.zza(zzagsVar);
    }
}
