package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.C12433dz;
import com.google.android.gms.internal.ads.C12910sn;
import com.google.android.gms.internal.ads.C12935tl;
import com.google.android.gms.internal.ads.C13081yu;
import com.google.android.gms.internal.ads.C13103zp;
import com.google.android.gms.internal.ads.abi;
import com.google.android.gms.internal.ads.akm;
import com.google.android.gms.internal.ads.dbt;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.emg;
import com.google.android.gms.internal.ads.zzl;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzay.class */
public final class zzay {
    private static C12433dz zzeie;
    private static final Object zzeif = new Object();
    @Deprecated
    private static final zzbc<Void> zzeig = new zzax();

    public zzay(Context context) {
        zzbm(context.getApplicationContext() != null ? context.getApplicationContext() : context);
    }

    private static C12433dz zzbm(Context context) {
        C12433dz c12433dz;
        C12433dz c12433dz2;
        synchronized (zzeif) {
            if (zzeie == null) {
                C12187aq.m18474a(context);
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42789ct)).booleanValue()) {
                    c12433dz2 = zzan.zzbl(context);
                } else {
                    c12433dz2 = new C12433dz(new C12935tl(new akm(context.getApplicationContext())), new C12910sn(new abi()));
                    c12433dz2.m15438a();
                }
                zzeie = c12433dz2;
            }
            c12433dz = zzeie;
        }
        return c12433dz;
    }

    public static dbt<emg> zzeq(String str) {
        C13103zp c13103zp = new C13103zp();
        zzeie.m15437a(new zzbe(str, c13103zp));
        return c13103zp;
    }

    public final dbt<String> zza(int i, String str, Map<String, String> map, byte[] bArr) {
        zzbb zzbbVar = new zzbb(null);
        zzba zzbaVar = new zzba(this, str, zzbbVar);
        C13081yu c13081yu = new C13081yu(null);
        zzaz zzazVar = new zzaz(this, i, str, zzbbVar, zzbaVar, bArr, map, c13081yu);
        if (C13081yu.m13908c()) {
            try {
                c13081yu.m13919a(str, "GET", zzazVar.getHeaders(), zzazVar.zzg());
            } catch (zzl e) {
                zzd.zzez(e.getMessage());
            }
        }
        zzeie.m15437a(zzazVar);
        return zzbbVar;
    }

    public final dbt<String> zzb(String str, Map<String, String> map) {
        return zza(0, str, map, null);
    }
}
