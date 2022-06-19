package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzaf;
import com.google.android.gms.internal.ads.zzajb;
import com.google.android.gms.internal.ads.zzap;
import com.google.android.gms.internal.ads.zzar;
import com.google.android.gms.internal.ads.zzau;
import com.google.android.gms.internal.ads.zzav;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzbd;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzz;
import java.io.File;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzan.class */
public final class zzan extends zzau {
    private final Context context;

    private zzan(Context context, zzar zzarVar) {
        super(zzarVar);
        this.context = context;
    }

    public static zzaf zzbi(Context context) {
        zzaf zzafVar = new zzaf(new zzav(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzan(context, new zzbd()));
        zzafVar.start();
        return zzafVar;
    }

    @Override // com.google.android.gms.internal.ads.zzau, com.google.android.gms.internal.ads.zzu
    public final zzz zza(zzab<?> zzabVar) throws zzap {
        if (zzabVar.zzh() && zzabVar.getMethod() == 0) {
            if (Pattern.matches((String) zzwr.zzqr().zzd(zzabp.zzcun), zzabVar.getUrl())) {
                zzwr.zzqn();
                if (zzaza.zzf(this.context, 13400000)) {
                    zzz zza = new zzajb(this.context).zza(zzabVar);
                    if (zza != null) {
                        String valueOf = String.valueOf(zzabVar.getUrl());
                        zzd.zzeb(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        return zza;
                    }
                    String valueOf2 = String.valueOf(zzabVar.getUrl());
                    zzd.zzeb(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.zza(zzabVar);
    }
}
