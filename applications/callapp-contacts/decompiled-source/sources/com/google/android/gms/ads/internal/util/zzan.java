package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.abi;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.dz;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.emg;
import com.google.android.gms.internal.ads.ih;
import com.google.android.gms.internal.ads.pq;
import com.google.android.gms.internal.ads.sn;
import com.google.android.gms.internal.ads.tl;
import com.google.android.gms.internal.ads.yq;
import com.google.android.gms.internal.ads.z;
import com.google.android.gms.internal.ads.zzap;
import java.io.File;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzan.class */
public final class zzan extends sn {
    private final Context context;

    private zzan(Context context, pq pqVar) {
        super(pqVar);
        this.context = context;
    }

    public static dz zzbl(Context context) {
        dz dzVar = new dz(new tl(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzan(context, new abi()));
        dzVar.a();
        return dzVar;
    }

    @Override // com.google.android.gms.internal.ads.sn, com.google.android.gms.internal.ads.ehl
    public final emg zza(z<?> zVar) throws zzap {
        if (zVar.zzh() && zVar.getMethod() == 0) {
            if (Pattern.matches((String) ekb.e().a(aq.cu), zVar.getUrl())) {
                ekb.a();
                if (yq.c(this.context, 13400000)) {
                    emg zza = new ih(this.context).zza(zVar);
                    if (zza != null) {
                        String valueOf = String.valueOf(zVar.getUrl());
                        zzd.zzed(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        return zza;
                    }
                    String valueOf2 = String.valueOf(zVar.getUrl());
                    zzd.zzed(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.zza(zVar);
    }
}
