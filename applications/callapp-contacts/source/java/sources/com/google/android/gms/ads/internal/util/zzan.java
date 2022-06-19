package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.AbstractC12832pq;
import com.google.android.gms.internal.ads.AbstractC13087z;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.C12433dz;
import com.google.android.gms.internal.ads.C12633ih;
import com.google.android.gms.internal.ads.C12910sn;
import com.google.android.gms.internal.ads.C12935tl;
import com.google.android.gms.internal.ads.C13077yq;
import com.google.android.gms.internal.ads.abi;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.emg;
import com.google.android.gms.internal.ads.zzap;
import java.io.File;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzan.class */
public final class zzan extends C12910sn {
    private final Context context;

    private zzan(Context context, AbstractC12832pq abstractC12832pq) {
        super(abstractC12832pq);
        this.context = context;
    }

    public static C12433dz zzbl(Context context) {
        C12433dz c12433dz = new C12433dz(new C12935tl(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzan(context, new abi()));
        c12433dz.m15438a();
        return c12433dz;
    }

    @Override // com.google.android.gms.internal.ads.C12910sn, com.google.android.gms.internal.ads.ehl
    public final emg zza(AbstractC13087z<?> abstractC13087z) throws zzap {
        if (abstractC13087z.zzh() && abstractC13087z.getMethod() == 0) {
            if (Pattern.matches((String) ekb.m14831e().m18571a(C12187aq.f42790cu), abstractC13087z.getUrl())) {
                ekb.m14835a();
                if (C13077yq.m13931c(this.context, 13400000)) {
                    emg zza = new C12633ih(this.context).zza(abstractC13087z);
                    if (zza != null) {
                        String valueOf = String.valueOf(abstractC13087z.getUrl());
                        zzd.zzed(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        return zza;
                    }
                    String valueOf2 = String.valueOf(abstractC13087z.getUrl());
                    zzd.zzed(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.zza(abstractC13087z);
    }
}
