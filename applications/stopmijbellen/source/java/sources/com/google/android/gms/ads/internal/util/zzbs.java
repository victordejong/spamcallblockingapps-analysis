package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.internal.ads.zzaga;
import com.google.android.gms.internal.ads.zzago;
import com.google.android.gms.internal.ads.zzagv;
import com.google.android.gms.internal.ads.zzahz;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzciy;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjr;
import com.google.android.gms.internal.ads.zzfxa;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbs.class */
public final class zzbs {
    private static zzagv zzb;
    private static final Object zzc = new Object();
    @Deprecated
    public static final zzbn<Void> zza = new zzbk();

    public zzbs(Context context) {
        zzagv zzagvVar;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (zzc) {
            if (zzb == null) {
                zzblj.zzc(context);
                if (!ClientLibraryUtils.isPackageSide()) {
                    if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcX)).booleanValue()) {
                        zzagvVar = zzbb.zzb(context);
                        zzb = zzagvVar;
                    }
                }
                zzagvVar = zzahz.zza(context, null);
                zzb = zzagvVar;
            }
        }
    }

    public final zzfxa<zzago> zza(String str) {
        zzcjr zzcjrVar = new zzcjr();
        zzb.zza(new zzbr(str, null, zzcjrVar));
        return zzcjrVar;
    }

    public final zzfxa<String> zzb(int i, String str, Map<String, String> map, byte[] bArr) {
        zzbp zzbpVar = new zzbp(null);
        zzbl zzblVar = new zzbl(this, str, zzbpVar);
        zzciy zzciyVar = new zzciy(null);
        zzbm zzbmVar = new zzbm(this, i, str, zzbpVar, zzblVar, bArr, map, zzciyVar);
        if (zzciy.zzl()) {
            try {
                zzciyVar.zzd(str, "GET", zzbmVar.zzl(), zzbmVar.zzx());
            } catch (zzaga e) {
                zzciz.zzj(e.getMessage());
            }
        }
        zzb.zza(zzbmVar);
        return zzbpVar;
    }
}
