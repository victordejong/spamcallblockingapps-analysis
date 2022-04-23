package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.abi;
import com.google.android.gms.internal.ads.akm;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.dbt;
import com.google.android.gms.internal.ads.dz;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.emg;
import com.google.android.gms.internal.ads.sn;
import com.google.android.gms.internal.ads.tl;
import com.google.android.gms.internal.ads.yu;
import com.google.android.gms.internal.ads.zp;
import com.google.android.gms.internal.ads.zzl;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzay.class */
public final class zzay {
    private static dz zzeie;
    private static final Object zzeif = new Object();
    @Deprecated
    private static final zzbc<Void> zzeig = new zzax();

    public zzay(Context context) {
        zzbm(context.getApplicationContext() != null ? context.getApplicationContext() : context);
    }

    private static dz zzbm(Context context) {
        dz dzVar;
        dz dzVar2;
        synchronized (zzeif) {
            if (zzeie == null) {
                aq.a(context);
                if (((Boolean) ekb.e().a(aq.ct)).booleanValue()) {
                    dzVar2 = zzan.zzbl(context);
                } else {
                    dzVar2 = new dz(new tl(new akm(context.getApplicationContext())), new sn(new abi()));
                    dzVar2.a();
                }
                zzeie = dzVar2;
            }
            dzVar = zzeie;
        }
        return dzVar;
    }

    public static dbt<emg> zzeq(String str) {
        zp zpVar = new zp();
        zzeie.a(new zzbe(str, zpVar));
        return zpVar;
    }

    public final dbt<String> zza(int i, String str, Map<String, String> map, byte[] bArr) {
        zzbb zzbbVar = new zzbb(null);
        zzba zzbaVar = new zzba(this, str, zzbbVar);
        yu yuVar = new yu(null);
        zzaz zzazVar = new zzaz(this, i, str, zzbbVar, zzbaVar, bArr, map, yuVar);
        if (yu.c()) {
            try {
                yuVar.a(str, "GET", zzazVar.getHeaders(), zzazVar.zzg());
            } catch (zzl e) {
                zzd.zzez(e.getMessage());
            }
        }
        zzeie.a(zzazVar);
        return zzbbVar;
    }

    public final dbt<String> zzb(String str, Map<String, String> map) {
        return zza(0, str, map, null);
    }
}
